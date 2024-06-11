<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" minScale="100000000" simplifyAlgorithm="0" simplifyLocal="1" labelsEnabled="0" version="3.14.0-Pi" styleCategories="AllStyleCategories" readOnly="0" simplifyDrawingHints="1" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal enabled="0" startExpression="" endExpression="" fixedDuration="0" durationUnit="min" accumulate="0" startField="" mode="0" endField="" durationField="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" attr="FUENTE" forceraster="0" type="categorizedSymbol" enableorderby="0">
    <categories>
      <category render="true" value="HIDRÁULICO" symbol="0" label="Hidráulica"/>
      <category render="true" value="TÉRMICO" symbol="1" label="Térmica"/>
    </categories>
    <symbols>
      <symbol name="0" alpha="1" type="marker" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" class="RasterMarker" locked="0">
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0.6" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAA4AAAAICAYAAADJEc7MAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAHlJREFUGJWNz7sNwzAMRdErQBO8MmtogTQpvIizk+cIoFatCzcZwuVbQW7ygZEQ9i0JHJDMAJKK7QvnWoA1A9ger8MyHolWC8AE3PPJLbRa6L2TUgLgEL4B9N08hM/5hu0X+u0v/G6J28HorBBKmlotD+DzfJSk1TYb9FQwE5rgXCMAAAAASUVORK5CYII=" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="10" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="Point" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" alpha="1" type="marker" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" class="RasterMarker" locked="0">
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0.6" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAA4AAAAICAYAAADJEc7MAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAFRJREFUGJVjYYCANAYGBl8G4sBmBgaGWSxQjvH///99iNHFyMj4jIGBgYGFkEJcgHKNjIyM5Gm8uYI4DeoRaBpJBTCNZ9UjGLYQo4Gdnf35z58/GQCKng5whK//YgAAAABJRU5ErkJggg==" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="10" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="Point" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties/>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks type="StringList">
      <Option value="" type="QString"/>
    </activeChecks>
    <checkConfiguration/>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="OBJECTID">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NOMBRE">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DEPARTAMEN">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SEMESTRE">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PROVINCIA">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DISTRITO">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LOCALIDAD">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SISTEMA_EL">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PROPIETARI">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PROP_">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ADM">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="USUARIOS">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CONDICION">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ESTADO">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FUENTE">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="POT_INSTAL">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="HORAS_F">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LOCALIDADE">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="OBJECTID"/>
    <alias index="1" name="" field="NOMBRE"/>
    <alias index="2" name="" field="DEPARTAMEN"/>
    <alias index="3" name="" field="SEMESTRE"/>
    <alias index="4" name="" field="PROVINCIA"/>
    <alias index="5" name="" field="DISTRITO"/>
    <alias index="6" name="" field="LOCALIDAD"/>
    <alias index="7" name="" field="SISTEMA_EL"/>
    <alias index="8" name="" field="PROPIETARI"/>
    <alias index="9" name="" field="PROP_"/>
    <alias index="10" name="" field="ADM"/>
    <alias index="11" name="" field="USUARIOS"/>
    <alias index="12" name="" field="CONDICION"/>
    <alias index="13" name="" field="ESTADO"/>
    <alias index="14" name="" field="FUENTE"/>
    <alias index="15" name="" field="POT_INSTAL"/>
    <alias index="16" name="" field="HORAS_F"/>
    <alias index="17" name="" field="LOCALIDADE"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="OBJECTID" expression=""/>
    <default applyOnUpdate="0" field="NOMBRE" expression=""/>
    <default applyOnUpdate="0" field="DEPARTAMEN" expression=""/>
    <default applyOnUpdate="0" field="SEMESTRE" expression=""/>
    <default applyOnUpdate="0" field="PROVINCIA" expression=""/>
    <default applyOnUpdate="0" field="DISTRITO" expression=""/>
    <default applyOnUpdate="0" field="LOCALIDAD" expression=""/>
    <default applyOnUpdate="0" field="SISTEMA_EL" expression=""/>
    <default applyOnUpdate="0" field="PROPIETARI" expression=""/>
    <default applyOnUpdate="0" field="PROP_" expression=""/>
    <default applyOnUpdate="0" field="ADM" expression=""/>
    <default applyOnUpdate="0" field="USUARIOS" expression=""/>
    <default applyOnUpdate="0" field="CONDICION" expression=""/>
    <default applyOnUpdate="0" field="ESTADO" expression=""/>
    <default applyOnUpdate="0" field="FUENTE" expression=""/>
    <default applyOnUpdate="0" field="POT_INSTAL" expression=""/>
    <default applyOnUpdate="0" field="HORAS_F" expression=""/>
    <default applyOnUpdate="0" field="LOCALIDADE" expression=""/>
  </defaults>
  <constraints>
    <constraint constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1" field="OBJECTID"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="NOMBRE"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="DEPARTAMEN"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="SEMESTRE"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="PROVINCIA"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="DISTRITO"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="LOCALIDAD"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="SISTEMA_EL"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="PROPIETARI"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="PROP_"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="ADM"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="USUARIOS"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="CONDICION"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="ESTADO"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="FUENTE"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="POT_INSTAL"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="HORAS_F"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="LOCALIDADE"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="OBJECTID"/>
    <constraint exp="" desc="" field="NOMBRE"/>
    <constraint exp="" desc="" field="DEPARTAMEN"/>
    <constraint exp="" desc="" field="SEMESTRE"/>
    <constraint exp="" desc="" field="PROVINCIA"/>
    <constraint exp="" desc="" field="DISTRITO"/>
    <constraint exp="" desc="" field="LOCALIDAD"/>
    <constraint exp="" desc="" field="SISTEMA_EL"/>
    <constraint exp="" desc="" field="PROPIETARI"/>
    <constraint exp="" desc="" field="PROP_"/>
    <constraint exp="" desc="" field="ADM"/>
    <constraint exp="" desc="" field="USUARIOS"/>
    <constraint exp="" desc="" field="CONDICION"/>
    <constraint exp="" desc="" field="ESTADO"/>
    <constraint exp="" desc="" field="FUENTE"/>
    <constraint exp="" desc="" field="POT_INSTAL"/>
    <constraint exp="" desc="" field="HORAS_F"/>
    <constraint exp="" desc="" field="LOCALIDADE"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns/>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable/>
  <labelOnTop/>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression></previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
