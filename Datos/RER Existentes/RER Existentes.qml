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
      <category render="true" value="BIOMASA" symbol="0" label="Biomasa"/>
      <category render="true" value="EOLICA" symbol="1" label="Eolica"/>
      <category render="true" value="HIDROELECTRICA" symbol="2" label="Hidráulica"/>
      <category render="true" value="SOLAR FV" symbol="3" label="Solar fotovoltaica"/>
    </categories>
    <symbols>
      <symbol name="0" alpha="1" type="marker" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" class="RasterMarker" locked="0">
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0.692308" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAABIAAAAMCAYAAABvEu28AAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAhtJREFUKJGd0b9PE3EYx/H39+56P+hR2isikFZ+FJVgYkRCTKTExcnBwbjI4gajAwtGF3XzTyAxcTCO/iBOOijRqAlqgsSQQhQjEcTSo9IWuF57XwdAYspg/ExP8uR55XnyaACO4/S5rtvK/+U9sKQBuK47fOOOO4wEEOhGhJnXd0mfMsnLc/hVEEhAQREhAPyqT8QWjA41jAMj2i5bbypIsV1bpoJubrfClkIl2IM2iz9QVI06O0oQ7K31B7KtHUURWKbEMkBTBZYl8KVACSBAYfLhGIm2JL2DtxAyqIWcpac42TVWvk3T1NrJwPIX/PUNUmcOImNxhFHHwuILLl28wPPJl2yuvSPVM1gLFWJxqskUD2Yfc/7EEMstR8l8miDZlcY0dDQB9595dMeyzDdeo9/OUmeKWqgpcYh4vJHc6iqxAw7rpU1URScS1cnMfmD6zSP67RYya+1seXmOd7dT1vY5bTW7gF8uEqDy9fNHCvkipa0iE/duogQl0gNnCaRF+Pscaf0ndqSHipS1kLsyT245w8m+0xTcRaoVn6gdJhQy8Msw9fYVRzpT9N6+Tr7k0rxwGd/b52uGEYCo0nOsm5JXoJgv0HG4g2RbF1XPxytvMDczRaIpgprTMQxQ2QdaL3lIWcGuD1MJDHLFElHFRAoVNaQR0lTsSDMtiU70hl+ABOH/DTmOMz52ZfQJ/5Cru4VQ2Jldcl2X3335wlq0EtxIAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="13" k="size"/>
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
          <prop v="0.692308" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAABIAAAAMCAYAAABvEu28AAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAVdJREFUKJGd0j1IAmEcx/GvdtcL+kB30SshZ7U5pVEEQURTQ0ONDQ0FNdZQQUMUODQEBQ0NgnsENdnSUFNj1tBBQ8VFcNELmd0NmqFtoqJX9p+e5/n9+PA88EgAqqqGhBAd/GO8Xu+FruumBCCEmAPmyhXlzUsyq70VIdu2I8C8VHhoGEZR6fkLhg4T3BsG7jKIpmn5tVQmz0/aTnP7/sb2WZqlkTanqjPkU+sgl2P5KkmgpZ6xQGP1kJ3Kkkx909PUTDjgot/nqe5Gn6ks0fg7e3oSvCoAa3qOfd1kZbiFLiHR5JGQ3S5naOrggXgmh0+pZbdPZiBmcjLaysZNDePHJpOKTLC9nkG/qAxF4wli0/78fuf0CdwuHj8ynE90/v1ps0GlKNx6bQBPLUcvMjOOTAlU+C8A0ko3LB5wHZ5AW7j7HbIsKyKEiJWGInGHWA85ApZlmQA/UfpkU1Q8QfgAAAAASUVORK5CYII=" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="13" k="size"/>
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
      <symbol name="2" alpha="1" type="marker" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" class="RasterMarker" locked="0">
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0.583333" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAABAAAAAKCAYAAAC9vt6cAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAIZJREFUKJGljrENwyAUBQ/Jw1HEHWzAGHSs4g2SzhJiAQpGoKNiBJwmKSzbhCSv+dLXu9Ob+DPT696B25fsA5jfArZt67Zba0gpiTFSaz0s+BhjDOu6Hv5dgfce5xwhhMvOpaCUgtZ6N3dIsCwL1lpyzl3wVKCUIqU0DO8EQohh6Eww/0QDTynNKm8eg9zOAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="12" k="size"/>
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
      <symbol name="3" alpha="1" type="marker" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" class="RasterMarker" locked="0">
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0.692308" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAABIAAAAMCAYAAABvEu28AAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAYRJREFUKJGd0j9IQlEUx/Fv+nqWeSXtD88skGgJg4im1uamKAikVcU1ovbG/oxSjUWTU2RDUEQUDkESkUshGZjEI8R6b/FmfwZJLLOis9zDuYcP/C5XAXC73cNCiC7+UQ6H4yyVSuUUACFEEAhWL2jeRhaWurm8hmKuQPLU5DT5XAOZprkOhJTqYSaTqfTFx22e83P4tQFalS4s4XGaxChYXZUdn89X6T9BH5W4mqX3bQet6QkHCXiFl8IhiFTdiDXQ8XmI4ZY97DbJ/gkcJSBxrrKxIvE2+NEbpujUZkD1/gz1Oa3YrRKAvUOI7atMj0l2DiAcgE5LFkoPv0MXN0k8feU+q6vMByW6DrFdlXBAUnyV2JT236M5OyYplpaxKeBqBZezPE/flU+bmPjbG40MRIAI95lFogurlXk4IKEnDaV8TaxvISzNAGhtgxRy/dya/Qx6dPCs1UVqoOp/ARAJSKJbaabHJJvxoW+BT5BhGOtCiPjXy+iWCsBmXK0LGIaRA3gH5FJ5ZR+y5iwAAAAASUVORK5CYII=" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="13" k="size"/>
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
    <field name="EMPRESA">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NAME">
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
    <field name="FUENTE">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="POT_EFECTI">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ENERGIA_MW">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CANTIDAD">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="UNIDAD">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SERVICIO">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="OBJECTID"/>
    <alias index="1" name="" field="EMPRESA"/>
    <alias index="2" name="" field="NAME"/>
    <alias index="3" name="" field="DEPARTAMEN"/>
    <alias index="4" name="" field="PROVINCIA"/>
    <alias index="5" name="" field="DISTRITO"/>
    <alias index="6" name="" field="FUENTE"/>
    <alias index="7" name="" field="POT_EFECTI"/>
    <alias index="8" name="" field="ENERGIA_MW"/>
    <alias index="9" name="" field="CANTIDAD"/>
    <alias index="10" name="" field="UNIDAD"/>
    <alias index="11" name="" field="SERVICIO"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="OBJECTID" expression=""/>
    <default applyOnUpdate="0" field="EMPRESA" expression=""/>
    <default applyOnUpdate="0" field="NAME" expression=""/>
    <default applyOnUpdate="0" field="DEPARTAMEN" expression=""/>
    <default applyOnUpdate="0" field="PROVINCIA" expression=""/>
    <default applyOnUpdate="0" field="DISTRITO" expression=""/>
    <default applyOnUpdate="0" field="FUENTE" expression=""/>
    <default applyOnUpdate="0" field="POT_EFECTI" expression=""/>
    <default applyOnUpdate="0" field="ENERGIA_MW" expression=""/>
    <default applyOnUpdate="0" field="CANTIDAD" expression=""/>
    <default applyOnUpdate="0" field="UNIDAD" expression=""/>
    <default applyOnUpdate="0" field="SERVICIO" expression=""/>
  </defaults>
  <constraints>
    <constraint constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1" field="OBJECTID"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="EMPRESA"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="NAME"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="DEPARTAMEN"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="PROVINCIA"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="DISTRITO"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="FUENTE"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="POT_EFECTI"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="ENERGIA_MW"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="CANTIDAD"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="UNIDAD"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="SERVICIO"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="OBJECTID"/>
    <constraint exp="" desc="" field="EMPRESA"/>
    <constraint exp="" desc="" field="NAME"/>
    <constraint exp="" desc="" field="DEPARTAMEN"/>
    <constraint exp="" desc="" field="PROVINCIA"/>
    <constraint exp="" desc="" field="DISTRITO"/>
    <constraint exp="" desc="" field="FUENTE"/>
    <constraint exp="" desc="" field="POT_EFECTI"/>
    <constraint exp="" desc="" field="ENERGIA_MW"/>
    <constraint exp="" desc="" field="CANTIDAD"/>
    <constraint exp="" desc="" field="UNIDAD"/>
    <constraint exp="" desc="" field="SERVICIO"/>
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
