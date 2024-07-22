<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis sync3DRendererTo2DRenderer="1" maxScale="0" minScale="100000000" version="3.34.6-Prizren" hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories">
  <renderer-3d layer="p_class_54ccd596_4dcf_446a_944d_e2d2a956c3a7" point-budget="33" type="pointcloud" max-screen-error="3" show-bounding-boxes="0">
    <symbol vertical-triangle-filter="0" rendering-parameter="Classification" type="classification" point-size="3" horizontal-filter-threshold="10" horizontal-triangle-filter="0" vertical-filter-threshold="10" render-as-triangles="0">
      <categories>
        <category label="Criado, Nunca Classificado" render="true" value="0" color="186,186,186,255"/>
        <category label="Não classificado" render="true" value="1" color="170,170,170,255"/>
        <category label="Terreno" render="true" value="2" color="170,85,0,255"/>
        <category label="Vegetação baixa" render="true" value="3" color="0,170,170,255"/>
        <category label="Vegetação média" render="true" value="4" color="85,255,85,255"/>
        <category label="Vegetação alta" render="true" value="5" color="0,170,0,255"/>
        <category label="Construção" render="true" value="6" color="255,85,85,255"/>
        <category label="Ponto Baixo (Ruído)" render="true" value="7" color="170,0,0,255"/>
        <category label="Reservado" render="true" value="8" color="85,85,85,255"/>
        <category label="Água" render="true" value="9" color="85,255,255,255"/>
        <category label="Trilho" render="true" value="10" color="170,0,170,255"/>
        <category label="Superfície de estrada" render="true" value="11" color="0,0,0,255"/>
        <category label="Wire - Guard (escudo)" render="true" value="13" color="255,255,85,255"/>
        <category label="Fio - Condutor (Fase)" render="true" value="14" color="255,255,85,255"/>
        <category label="Torre de Transmissão" render="true" value="15" color="255,85,255,255"/>
        <category label="Conector de Estrutura de Fio (isolante)" render="true" value="16" color="255,255,85,255"/>
        <category label="Deck da Ponte" render="true" value="17" color="85,85,255,255"/>
        <category label="Alto Ruído" render="true" value="18" color="100,100,100,255"/>
        <category label="19" render="true" value="19" color="225,89,137,255"/>
        <category label="20" render="true" value="20" color="190,207,80,255"/>
        <category label="21" render="true" value="21" color="152,125,183,255"/>
        <category label="22" render="true" value="22" color="231,113,72,255"/>
        <category label="23" render="true" value="23" color="183,72,75,255"/>
        <category label="24" render="true" value="24" color="255,158,23,255"/>
        <category label="25" render="true" value="25" color="232,113,141,255"/>
        <category label="26" render="true" value="26" color="141,90,153,255"/>
        <category label="27" render="true" value="27" color="243,166,178,255"/>
        <category label="28" render="true" value="28" color="114,155,111,255"/>
        <category label="29" render="true" value="29" color="213,180,60,255"/>
        <category label="30" render="true" value="30" color="164,113,88,255"/>
        <category label="31" render="true" value="31" color="133,182,111,255"/>
      </categories>
    </symbol>
  </renderer-3d>
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <elevation max_screen_error_unit="MM" respect_layer_colors="1" zscale="1" opacity_by_distance="0" point_size_unit="MM" zoffset="0" point_symbol="Square" max_screen_error="0.29999999999999999" point_size="0.59999999999999998" point_color="229,182,54,255">
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </data-defined-properties>
  </elevation>
  <renderer type="classified" pointSize="1" maximumScreenErrorUnit="MM" pointSizeUnit="MM" maximumScreenError="0.29999999999999999" pointSymbol="0" pointSizeMapUnitScale="3x:0,0,0,0,0,0" attribute="Classification" drawOrder2d="0">
    <categories>
      <category label="Criado, Nunca Classificado" render="true" value="0" color="186,186,186,255"/>
      <category label="Não classificado" render="true" value="1" color="170,170,170,255"/>
      <category label="Terreno" render="true" value="2" color="170,85,0,255"/>
      <category label="Vegetação baixa" render="true" value="3" color="0,170,170,255"/>
      <category label="Vegetação média" render="true" value="4" color="85,255,85,255"/>
      <category label="Vegetação alta" render="true" value="5" color="0,170,0,255"/>
      <category label="Construção" render="true" value="6" color="255,85,85,255"/>
      <category label="Ponto Baixo (Ruído)" render="true" value="7" color="170,0,0,255"/>
      <category label="Reservado" render="true" value="8" color="85,85,85,255"/>
      <category label="Água" render="true" value="9" color="85,255,255,255"/>
      <category label="Trilho" render="true" value="10" color="170,0,170,255"/>
      <category label="Superfície de estrada" render="true" value="11" color="0,0,0,255"/>
      <category label="Wire - Guard (escudo)" render="true" value="13" color="255,255,85,255"/>
      <category label="Fio - Condutor (Fase)" render="true" value="14" color="255,255,85,255"/>
      <category label="Torre de Transmissão" render="true" value="15" color="255,85,255,255"/>
      <category label="Conector de Estrutura de Fio (isolante)" render="true" value="16" color="255,255,85,255"/>
      <category label="Deck da Ponte" render="true" value="17" color="85,85,255,255"/>
      <category label="Alto Ruído" render="true" value="18" color="100,100,100,255"/>
      <category label="19" render="true" value="19" color="225,89,137,255"/>
      <category label="20" render="true" value="20" color="190,207,80,255"/>
      <category label="21" render="true" value="21" color="152,125,183,255"/>
      <category label="22" render="true" value="22" color="231,113,72,255"/>
      <category label="23" render="true" value="23" color="183,72,75,255"/>
      <category label="24" render="true" value="24" color="255,158,23,255"/>
      <category label="25" render="true" value="25" color="232,113,141,255"/>
      <category label="26" render="true" value="26" color="141,90,153,255"/>
      <category label="27" render="true" value="27" color="243,166,178,255"/>
      <category label="28" render="true" value="28" color="114,155,111,255"/>
      <category label="29" render="true" value="29" color="213,180,60,255"/>
      <category label="30" render="true" value="30" color="164,113,88,255"/>
      <category label="31" render="true" value="31" color="133,182,111,255"/>
    </categories>
  </renderer>
  <customproperties>
    <Option/>
  </customproperties>
  <blendMode>0</blendMode>
  <layerOpacity>1</layerOpacity>
</qgis>
