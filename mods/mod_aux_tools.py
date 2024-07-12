# -*- coding: utf-8 -*-
import os

from PyQt5.QtCore import QSettings, QPropertyAnimation, QRect
import zlib
from base64 import urlsafe_b64encode as b64e, urlsafe_b64decode as b64d

from qgis.core import QgsProject


class AuxTools:
    def __init__(self, iface=None, parent=None):
        self.iface = iface
        self.parent = parent
        self.menu_ = f'IV_{self.parent.objectName()}'
        self.settings = QSettings(self.menu_)
        self.list_anim = []
        self.dic_db = {}

    def save_geometry(self, wd_=None):
        self.settings.setValue(f"{self.menu_}/geom", wd_.saveGeometry())

    def get_geometry(self):
        return self.settings.value(f"{self.menu_}/geom")

    def get_(self, key_=''):
        print("get_", f"{self.menu_}/{key_}")
        lc_ = self.settings.value(f"{self.menu_}/{key_}")
        return lc_

    def save_(self, value_='', key_=''):
        print('save_', f"{self.menu_}/{key_}")
        self.settings.setValue(f"{self.menu_}/{key_}", value_)

    def get_current_az_fov(self):
        print("02-get_current_az")
        try:
            list_ = []
            list_.append(float(self.settings.value(f"{self.menu_}/azimuth")))
            list_.append(float(self.settings.value(f"{self.menu_}/fov")))
            if list_ and list_[0]:
                return list_
            return [1, 91]
        except:
            return [2, 92]

    def save_current_az_fov(self, vet_=[0, 90]):
        print('save_current_az')
        self.settings.setValue(f"{self.menu_}/azimuth", vet_[0])
        self.settings.setValue(f"{self.menu_}/fov", vet_[1])

    def do_anim(self, wd_):
        rec_ = wd_.geometry()
        x = rec_.x()
        y = rec_.y()
        w = rec_.width()
        h = rec_.height()
        anim = QPropertyAnimation(wd_, b"geometry")
        anim.setDuration(50)
        anim.setLoopCount(5)
        anim.setStartValue(QRect(x + 5, y + 1, w - 10, h - 2))
        anim.setEndValue(rec_)
        # self.anim.setKeyValueAt(0.1, wd_.text())
        anim.start()
        self.list_anim.append(anim)

    def get_schemas(self, db):
        if db.db_name not in self.dic_db:
            self.dic_db.update({db.db_name: {}})
            sql = "SELECT schema_name FROM information_schema.schemata ORDER BY schema_name"
            data = db.select_(sql)
            for item in data:
                self.dic_db[db.db_name].update({item[0]: {}})
        return list(self.dic_db[db.db_name])

    def get_tables(self, db, sch_=''):
        if not self.dic_db[db.db_name][sch_]:
            sql = f"""
            with 
                tabs as (
                    SELECT table_name  AS tab 
                    FROM information_schema.tables 
                    WHERE table_schema = '{sch_}'
                    UNION
                    SELECT matviewname AS tab
                    FROM pg_matviews
                    WHERE schemaname = '{sch_}')
                SELECT tab
                    FROM tabs
                    ORDER BY tab
                    """
            data = db.select_(sql)
            for item in data:
                try:
                    self.dic_db[db.db_name][sch_].update({item[0]: []})
                except:
                    pass
        return list(self.dic_db[db.db_name][sch_])

    def get_columns(self, db, sch_='', tab_=''):
        if not self.dic_db[db.db_name][sch_][tab_]:
            sql = f'select * from {sch_}."{tab_}" limit 0'
            db.select_(sql)
            list_ = []
            for desc_ in db.cur.description:
                list_.append(desc_[0])
            list_.sort()
            self.dic_db[db.db_name][sch_][tab_] = list_
        return self.dic_db[db.db_name][sch_][tab_]

    def get_w_size(self):
        print("02-getting_w_size")
        try:
            dw = int(self.settings.value(f"{self.menu_}/width"))
            dh = int(self.settings.value(f"{self.menu_}/height"))
            x0 = int(self.settings.value(f"{self.menu_}/x"))
            y0 = int(self.settings.value(f"{self.menu_}/y"))
            print("-->", x0, y0, dw, dh)
            if y0:
                return x0, y0, dw, dh
        except:
            pass
        dw = 372
        dh = 265
        x0 = 100
        y0 = 100
        self.settings.setValue(f"{self.menu_}/width", dw)
        self.settings.setValue(f"{self.menu_}/height", dh)
        self.settings.setValue(f"{self.menu_}/x", x0)
        self.settings.setValue(f"{self.menu_}/y", y0)
        return x0, y0, dw, dh

    def save_w_size(self, wd_=None):
        if wd_:
            print("save_w_size")
            x0 = wd_.pos().x()
            y0 = wd_.pos().y()
            dw = wd_.width()
            dh = wd_.height()
            self.settings.setValue(f"{self.menu_}/x", x0)
            self.settings.setValue(f"{self.menu_}/y", y0)
            self.settings.setValue(f"{self.menu_}/width", dw)
            self.settings.setValue(f"{self.menu_}/height", dh)
            print('save<--', x0, y0, dw, dh, f"{self.menu_}/x")

class Obs2(object):
    def __init__(self, str_=None, bin_=None):
        self.str_ = str_
        self.bin_ = bin_

    def str_encode(self, str_):
        e_str_ = str_.encode()
        o_str_ = self.obscure(e_str_)
        return o_str_

    def str_decode(self, bin_):
        if not bin_:
            # print("x")
            return ""
        u_bin_ = self.unobscure(bin_)
        d_bin_ = u_bin_.decode()
        # print("u_bin_",  u_bin_)
        return d_bin_

    def obscure(self, data: bytes) -> bytes:
        return b64e(zlib.compress(data, 9))

    def unobscure(self, obscured: bytes) -> bytes:
        return zlib.decompress(b64d(obscured))


