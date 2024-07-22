<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" version="3.22.5-Białowieża" maxScale="0" styleCategories="AllStyleCategories" minScale="100000000">
  <renderer-3d type="pointcloud" point-budget="774855" layer="RJ287D32B__2421798e_badc_45c3_bf1e_d5fb0da9cdfd" show-bounding-boxes="0" max-screen-error="1">
    <symbol type="classification" point-size="2" rendering-parameter="Classification">
      <categories>
        <category color="170,170,170,255" render="true" value="1" label="Unclassified"/>
        <category color="170,85,0,255" render="true" value="2" label="Ground"/>
        <category color="0,170,170,255" render="true" value="3" label="Low Vegetation"/>
        <category color="85,255,85,255" render="true" value="4" label="Medium Vegetation"/>
        <category color="0,170,0,255" render="true" value="5" label="High Vegetation"/>
        <category color="255,85,85,255" render="true" value="6" label="Building"/>
        <category color="170,0,0,255" render="true" value="7" label="Low Point (Noise)"/>
        <category color="85,85,85,255" render="true" value="8" label="Reserved"/>
        <category color="85,255,255,255" render="true" value="9" label="Água"/>
        <category color="170,0,170,255" render="true" value="10" label="Rail"/>
        <category color="0,0,0,255" render="true" value="11" label="Road Surface"/>
        <category color="85,85,85,255" render="true" value="12" label="Reserved"/>
        <category color="255,255,85,255" render="true" value="13" label="Wire - Guard (Shield)"/>
        <category color="255,255,85,255" render="true" value="14" label="Wire - Conductor (Phase)"/>
        <category color="255,85,255,255" render="true" value="15" label="Transmission Tower"/>
        <category color="255,255,85,255" render="true" value="16" label="Wire-Structure Connector (Insulator)"/>
        <category color="85,85,255,255" render="true" value="17" label="Bridge Deck"/>
        <category color="100,100,100,255" render="true" value="18" label="High Noise"/>
      </categories>
    </symbol>
  </renderer-3d>
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <elevation zoffset="0" zscale="1"/>
  <renderer pointSymbol="0" min="0" type="ramp" maximumScreenErrorUnit="MM" attribute="Intensity" pointSize="1" max="1360" maximumScreenError="0.29999999999999999" pointSizeUnit="MM" pointSizeMapUnitScale="3x:0,0,0,0,0,0">
    <colorrampshader minimumValue="0" maximumValue="1360" labelPrecision="4" classificationMode="2" colorRampType="INTERPOLATED" clip="0">
      <colorramp type="gradient" name="[source]">
        <Option type="Map">
          <Option type="QString" name="color1" value="250,250,250,255"/>
          <Option type="QString" name="color2" value="5,5,5,255"/>
          <Option type="QString" name="discrete" value="0"/>
          <Option type="QString" name="rampType" value="gradient"/>
          <Option type="QString" name="stops" value="0.0735294;32,32,32,255"/>
        </Option>
        <prop k="color1" v="250,250,250,255"/>
        <prop k="color2" v="5,5,5,255"/>
        <prop k="discrete" v="0"/>
        <prop k="rampType" v="gradient"/>
        <prop k="stops" v="0.0735294;32,32,32,255"/>
      </colorramp>
      <item color="#fafafa" label="0.0000" value="0" alpha="255"/>
      <item color="#202020" label="100.0000" value="100" alpha="255"/>
      <item color="#050505" label="1360.0000" value="1360" alpha="255"/>
      <rampLegendSettings direction="0" useContinuousLegend="1" prefix="" minimumLabel="" suffix="" maximumLabel="" orientation="2">
        <numericFormat id="basic">
          <Option type="Map">
            <Option type="QChar" name="decimal_separator" value=""/>
            <Option type="int" name="decimals" value="6"/>
            <Option type="int" name="rounding_type" value="0"/>
            <Option type="bool" name="show_plus" value="false"/>
            <Option type="bool" name="show_thousand_separator" value="true"/>
            <Option type="bool" name="show_trailing_zeros" value="false"/>
            <Option type="QChar" name="thousand_separator" value=""/>
          </Option>
        </numericFormat>
      </rampLegendSettings>
    </colorrampshader>
  </renderer>
  <customproperties>
    <Option/>
  </customproperties>
  <blendMode>0</blendMode>
  <layerOpacity>1</layerOpacity>
</qgis>
