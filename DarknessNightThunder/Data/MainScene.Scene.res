<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2" />
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="3761029062">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="664753936">
        <_items dataType="Array" type="Duality.Component[]" id="83719996">
          <item dataType="Struct" type="Duality.Components.Transform" id="1826376698">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3761029062</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3337573">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">3761029062</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="293189449">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="79299470">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2606380240">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath dataType="String">Data\System\WorldTarget.RenderTarget.res</contentPath>
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1919160942">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath dataType="String">Data\System\LightTarget.RenderTarget.res</contentPath>
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1815898796">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="Color" value="1" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath dataType="String">Data\System\LightTarget.RenderTarget.res</contentPath>
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group1" value="2" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1193870354">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="Depth" value="2" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath dataType="String">Data\System\LightTarget.RenderTarget.res</contentPath>
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group1, AllFlags" value="2147483650" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="693336712">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input dataType="Struct" type="Duality.Drawing.BatchInfo" id="3819281492">
                    <dirtyFlag dataType="Enum" type="Duality.Drawing.BatchInfo+DirtyFlag" name="None" value="0" />
                    <hashCode dataType="Int">848659869</hashCode>
                    <mainColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                      <A dataType="Byte">255</A>
                      <B dataType="Byte">255</B>
                      <G dataType="Byte">255</G>
                      <R dataType="Byte">255</R>
                    </mainColor>
                    <technique dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.DrawTechnique]]">
                      <contentPath dataType="String">Data\System\MergeToScreen.DrawTechnique.res</contentPath>
                    </technique>
                    <textures dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.String],[Duality.ContentRef`1[[Duality.Resources.Texture]]]]" id="193244388" surrogate="true">
                      <header />
                      <body>
                        <mainTex dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Texture]]">
                          <contentPath dataType="String">Data\System\WorldTargetTex.Texture.res</contentPath>
                        </mainTex>
                        <lightTex dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Texture]]">
                          <contentPath dataType="String">Data\System\LightTargetTex.Texture.res</contentPath>
                        </lightTex>
                      </body>
                    </textures>
                    <uniforms dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.String],[System.Single[]]]" id="1738272278" surrogate="true">
                      <header />
                      <body />
                    </uniforms>
                  </input>
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="None" value="0" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2118163302">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0, AllFlags" value="2147483649" />
                </item>
              </_items>
              <_size dataType="Int">6</_size>
              <_version dataType="Int">3</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="119543137">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3761029062</gameobj>
          </item>
          <item dataType="Struct" type="DarknessNightThunder.CameraController" id="2755406508">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3761029062</gameobj>
            <smoothness dataType="Float">1</smoothness>
            <targetObj dataType="Struct" type="Duality.GameObject" id="1593919710">
              <active dataType="Bool">true</active>
              <children />
              <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="73804478">
                <_items dataType="Array" type="Duality.Component[]" id="2951355408" length="8">
                  <item dataType="Struct" type="Duality.Components.Transform" id="3954234642">
                    <active dataType="Bool">true</active>
                    <angle dataType="Float">0</angle>
                    <angleAbs dataType="Float">0</angleAbs>
                    <angleVel dataType="Float">0</angleVel>
                    <angleVelAbs dataType="Float">0</angleVelAbs>
                    <deriveAngle dataType="Bool">true</deriveAngle>
                    <gameobj dataType="ObjectRef">1593919710</gameobj>
                    <ignoreParent dataType="Bool">false</ignoreParent>
                    <parentTransform />
                    <pos dataType="Struct" type="Duality.Vector3" />
                    <posAbs dataType="Struct" type="Duality.Vector3" />
                    <scale dataType="Float">1</scale>
                    <scaleAbs dataType="Float">1</scaleAbs>
                    <vel dataType="Struct" type="Duality.Vector3" />
                    <velAbs dataType="Struct" type="Duality.Vector3" />
                  </item>
                  <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="781946443">
                    <active dataType="Bool">true</active>
                    <animDuration dataType="Float">5</animDuration>
                    <animFirstFrame dataType="Int">0</animFirstFrame>
                    <animFrameCount dataType="Int">3</animFrameCount>
                    <animLoopMode dataType="Enum" type="DarknessNightThunder.ActorRenderer+LoopMode" name="PingPong" value="2" />
                    <animPaused dataType="Bool">false</animPaused>
                    <animTime dataType="Float">0</animTime>
                    <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                      <A dataType="Byte">255</A>
                      <B dataType="Byte">255</B>
                      <G dataType="Byte">255</G>
                      <R dataType="Byte">255</R>
                    </colorTint>
                    <customFrameSequence />
                    <customMat />
                    <depthScale dataType="Float">0.01</depthScale>
                    <gameobj dataType="ObjectRef">1593919710</gameobj>
                    <height dataType="Float">0</height>
                    <isVertical dataType="Bool">true</isVertical>
                    <offset dataType="Float">-0.08</offset>
                    <rect dataType="Struct" type="Duality.Rect">
                      <H dataType="Float">52</H>
                      <W dataType="Float">38</W>
                      <X dataType="Float">-16</X>
                      <Y dataType="Float">-44</Y>
                    </rect>
                    <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                      <contentPath dataType="String">Data\Sprites\Mage.Material.res</contentPath>
                    </sharedMat>
                    <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                  </item>
                  <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="361728938">
                    <active dataType="Bool">true</active>
                    <angularDamp dataType="Float">0.3</angularDamp>
                    <angularVel dataType="Float">0</angularVel>
                    <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
                    <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat2" value="2" />
                    <colFilter />
                    <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
                    <continous dataType="Bool">false</continous>
                    <explicitInertia dataType="Float">0</explicitInertia>
                    <explicitMass dataType="Float">80</explicitMass>
                    <fixedAngle dataType="Bool">true</fixedAngle>
                    <gameobj dataType="ObjectRef">1593919710</gameobj>
                    <ignoreGravity dataType="Bool">false</ignoreGravity>
                    <joints />
                    <linearDamp dataType="Float">0.3</linearDamp>
                    <linearVel dataType="Struct" type="Duality.Vector2" />
                    <revolutions dataType="Float">0</revolutions>
                    <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1434092930">
                      <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3544114320" length="4">
                        <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1957705020">
                          <density dataType="Float">1</density>
                          <friction dataType="Float">0.3</friction>
                          <parent dataType="ObjectRef">361728938</parent>
                          <position dataType="Struct" type="Duality.Vector2">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">-7</Y>
                          </position>
                          <radius dataType="Float">15</radius>
                          <restitution dataType="Float">0.3</restitution>
                          <sensor dataType="Bool">false</sensor>
                        </item>
                      </_items>
                      <_size dataType="Int">1</_size>
                      <_version dataType="Int">1</_version>
                    </shapes>
                  </item>
                  <item dataType="Struct" type="DarknessNightThunder.CharacterController" id="495449418">
                    <acceleration dataType="Float">0.15</acceleration>
                    <active dataType="Bool">true</active>
                    <gameobj dataType="ObjectRef">1593919710</gameobj>
                    <moveSenseRadius dataType="Float">96</moveSenseRadius>
                    <speed dataType="Float">3.5</speed>
                    <targetLookDir dataType="Float">0</targetLookDir>
                    <targetMovement dataType="Struct" type="Duality.Vector2" />
                  </item>
                  <item dataType="Struct" type="DarknessNightThunder.CharacterAnimator" id="1165678391">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="ObjectRef">1593919710</gameobj>
                    <spriteSheetBaseDuration dataType="Float">0.5</spriteSheetBaseDuration>
                    <spriteSheetIndex dataType="Int">0</spriteSheetIndex>
                    <spriteSheetOffset dataType="Int">3</spriteSheetOffset>
                  </item>
                  <item dataType="Struct" type="DarknessNightThunder.Character" id="1231907018">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="ObjectRef">1593919710</gameobj>
                    <health dataType="Float">100</health>
                    <mana dataType="Float">100</mana>
                    <painSound dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Sound]]">
                      <contentPath dataType="String">Data\Sounds\MaleScreamPain.Sound.res</contentPath>
                    </painSound>
                  </item>
                </_items>
                <_size dataType="Int">6</_size>
                <_version dataType="Int">12</_version>
              </compList>
              <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="474501130" surrogate="true">
                <header />
                <body>
                  <keys dataType="Array" type="System.Object[]" id="1115225500">
                    <item dataType="Type" id="2720087492" value="Duality.Components.Transform" />
                    <item dataType="Type" id="478251414" value="DarknessNightThunder.ActorRenderer" />
                    <item dataType="Type" id="474680448" value="Duality.Components.Physics.RigidBody" />
                    <item dataType="Type" id="213411874" value="DarknessNightThunder.CharacterController" />
                    <item dataType="Type" id="1506910684" value="DarknessNightThunder.CharacterAnimator" />
                    <item dataType="Type" id="570063102" value="DarknessNightThunder.Character" />
                  </keys>
                  <values dataType="Array" type="System.Object[]" id="843257878">
                    <item dataType="ObjectRef">3954234642</item>
                    <item dataType="ObjectRef">781946443</item>
                    <item dataType="ObjectRef">361728938</item>
                    <item dataType="ObjectRef">495449418</item>
                    <item dataType="ObjectRef">1165678391</item>
                    <item dataType="ObjectRef">1231907018</item>
                  </values>
                </body>
              </compMap>
              <compTransform dataType="ObjectRef">3954234642</compTransform>
              <identifier dataType="Struct" type="System.Guid" surrogate="true">
                <header>
                  <data dataType="Array" type="System.Byte[]" id="1144613896">6QaaXpvsP06njO2/8LNlCA==</data>
                </header>
                <body />
              </identifier>
              <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
              <name dataType="String">MainChar</name>
              <parent />
              <prefabLink />
            </targetObj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1778928878" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1373440354">
            <item dataType="ObjectRef">2720087492</item>
            <item dataType="Type" id="1128403856" value="Duality.Components.Camera" />
            <item dataType="Type" id="3457661678" value="Duality.Components.SoundListener" />
            <item dataType="Type" id="3352197740" value="DarknessNightThunder.CameraController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="105870730">
            <item dataType="ObjectRef">1826376698</item>
            <item dataType="ObjectRef">3337573</item>
            <item dataType="ObjectRef">119543137</item>
            <item dataType="ObjectRef">2755406508</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1826376698</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1324124818">G/E04Bh2zE6yFHaIss4iEQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="10461599">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="1388021341">
        <_items dataType="Array" type="Duality.GameObject[]" id="2170589030">
          <item dataType="Struct" type="Duality.GameObject" id="2961408854">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="965536794">
              <_items dataType="Array" type="Duality.Component[]" id="282188160" length="4">
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="668293575">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2961408854</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="2703622211" custom="true">
                    <body>
                      <version dataType="Int">2</version>
                      <data dataType="Array" type="System.Byte[]" id="455732262">H4sIAAAAAAAEAJ2YS09UQRCF5+5EXfjc+CBXhkFEjbrThYluiGBieGii/FOjMQOKIom6wOiChQuMs5DHX1DqLPicQ3UaK+Hkpqer63R1VVc1bafTaf/+LXf2ZSVwEHiq2cfTgS5nYvxs4LnAfowvJ6iVv9s60nqZYKbl1mnF15F0sZcL8X0x8FI1/x8J/3qtseZw69kKXMeFeySTPrTKnjmqViYfi7hu82nX0ZnUYI0WPdlDPIwXsRc4qOa/Frh+RP41WlkkXCnimPGXLZ7RW1iZDJw6In/XemdW1sFkHP6/VkStOYr5Xa0QqNPpF7k5E9915u3bzbAtepK3Sr20gTydtYSPmMtvd8CkW611txm2Rf4U7UV31LHAEeyO+aKz5umIT9+YrID5vcDpwLZa60EzbGvUfO55wfo1XnFG4uN5IR+K+cPAJ4GT1VqZtyV9498tcu4lv4oP8+Km5ncOmN/vDCO1JqBLLfc2Y178mdc+xzkzljizDbwReD1QEdsUscV8xflV4zOW+FP8Pa8lGedMmBeMWOc8gm/XuhXont8N3DP+3K9nruR4jJwIPFl9a+2C52wzvIvG+NSsI9wM7AdmHSC7Du/6zmMXfr5usYzcBVfbCFyKkZ343sJM5X65Miq7veu7bJxldyNhSOvbxV38Bu5C16Vbzb98j3XMonPbxEzfYxZdvi/JGOpIDf+sgy1zZp7uVcx3LUayR5pyv9yTeE/eqeDwf5i9DtyT9Ce75UyLldGZ++mXo93nu91ljGfvAo2raqiCZNVcfWDPmGR5KilnNJF2GQP+LmA3q3HWDmW0qj+rufqoKTDMfMs8pWTzd2DXY8DfBStg2DMrbaBORJ1AuWt135L/G2B5Pu2SfzlmVHnZJ2Q9gFdziXJBNwYjZzXwVeD7wA/4laewZ3Y9hj2e2Wm41PTMZc+vgjn5D6DLLKauYkmxoYiasPEsHrL+x4W3kNdH8n+d8M/23gYqbvXe4avH45m9pf/n7VHgDHBWaN5j3+L+5yk4f69Kilu9d/jq8XhWP8mY4fdc4DxwAXazzuRT4GfDL4Hynt9FXqNZi3lGM80Bsp/sAcv8ydxfNF/j+1vgtI0MwDCraF7vxH8uvp8FPg7M+knJ88DFwKeBS4dP/Ed+Bv4K1OlzRKefdaHlmuj8KR5F8q1OYcFmlt81NRFChtv43gJSxH8xcD6JeX8tOn9J9q7hCl55GdWeQW8MXV40B/gHqolkAggYAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Tilesets\MagicTown.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Components.Transform" id="1026756490">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2961408854</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1659517006">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">2961408854</gameobj>
                  <offset dataType="Float">0</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4050640186" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="552656736">
                  <item dataType="Type" id="3198937308" value="Duality.Plugins.Tilemaps.Tilemap" />
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="Type" id="27113750" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="2310733966">
                  <item dataType="ObjectRef">668293575</item>
                  <item dataType="ObjectRef">1026756490</item>
                  <item dataType="ObjectRef">1659517006</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1026756490</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="588166524">KMXuZW3ZOEaxigxAvZjLRg==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">BaseLayer</name>
            <parent dataType="ObjectRef">10461599</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="3085774208">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="153351068">
              <_items dataType="Array" type="Duality.Component[]" id="2220440004" length="4">
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="792658929">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3085774208</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="3306088781" custom="true">
                    <body>
                      <version dataType="Int">2</version>
                      <data dataType="Array" type="System.Byte[]" id="1707160614">H4sIAAAAAAAEANWYyU5UURCGG1RIVOioDFFReADCSlyw0MSJpa/QCxcuXagkTiQKEpxwiCbqAsUIGMEhOCfqK1yWvoGPofy1+ZM/dVKn+zaBTvpLpW7VOXXPqTrDHahUKgP//2cqa7/VTc7vJM+S/COznW/r4tWafLoQ6Mt79/TINOKVOyabi8+JGyGeCLeT/IpomvPgBfBiZsuzmfaNcFjk4ZY1XoF8FbxGNmPg22Sb6QrKZbovjxPgJHiT3mIcXAEHW6KtzZP8OjOSFZJH0GMX5J2gV9e9sBwFr9Nb8EwdCsT/DCxIU5A+khucIcfQYx/k48neh/C0Ct6C5nagR+Ucxcycq6u1eEUfRuTt4ENoHpGevbpIfiptFqJhfZH01ajqo83FEfCoxN9H8kvxPQGeFJ4iG6ujF+F4uIJsbbRVJb0vGzvRV5uTe5yx3aTX/CnIxupIs53ZA/aKnlcVL+Z2cBvYRhrP3qI6kLRZJZvugOVBsN956u04vDp1gJ3hqFR/P9M+kj/G+I5TJbkW9rLMnM6M07ilLq8Iz2baP2haJBHqTncuaV9z9JHx1FO69u5V+vrPjnenUOobvcuMakfYMj07ZfFLqa1FdpByqbvGErhMmnmxKYtcC+/DXmnLT+DnBqL6KZrfAa+v4fY9S52LZtd4fb1wnHpPHHO8vPNbWcy915wG9Z5oZyE+J18CL5OvruHpU+4vMJJFudR74pTY2P3rRgO9/Alb7gE1o7zT6R3wLngPnAFHafy9+1czTib7Hb3uO1tBy5PHkJ+AQ5LhfP8yTSv5al+L4JvMyGsljUCEXtX/BT+AH8k+fTcxeueN9Cx7K09VxpZH26v6HvpqER8Nm830eWMXuFv0GoPpOYs6SLYbfbrqNQMj1F3PaKvWXnAfyF8M/gGsx1SBCBgAAA==</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Tilesets\MagicTown.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Components.Transform" id="1151121844">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3085774208</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1783882360">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">3085774208</gameobj>
                  <offset dataType="Float">-0.01</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2608161814" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3739445558">
                  <item dataType="ObjectRef">3198937308</item>
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">27113750</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2000748186">
                  <item dataType="ObjectRef">792658929</item>
                  <item dataType="ObjectRef">1151121844</item>
                  <item dataType="ObjectRef">1783882360</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1151121844</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="624963030">OGFE/6l2ukykXD788OcpAg==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">UpperLayer</name>
            <parent dataType="ObjectRef">10461599</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1404051932">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3492662136">
              <_items dataType="Array" type="Duality.Component[]" id="2212659052" length="4">
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3405903949">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1404051932</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="2980221569" custom="true">
                    <body>
                      <version dataType="Int">2</version>
                      <data dataType="Array" type="System.Byte[]" id="3362391342">H4sIAAAAAAAEAO2YMU7DQBBFd4H0gCgCosgBQpdUkUiBqOmgQIKGQ0AHJ6HkCiincG5CApbAYAnyB4kRo11mie1M4Uh52qxG9pv1rO1JzznX+/peucVn2rJlS/AJnIFzNjM34KbhK/gGFmyGxs9gbsCTuAVugzuM3i+45unHz/gdE6UBc+IuuAfuM2YgrfYLmLP5bKXOI/93jGOr/QGWZvyP4PaoiFxH5AbYUWTdPOu+q2wmzqeyqNm/Cx4Ldis6vtyhdWSRBchjhv+qT7lDzxktVLim/kO29nMp1P42s4gbWvbv+99WmiwsmBMHav9VZUFP2Ek0RlaItXVepv5lpAVnzfpLXoM3BpxT/SnyFrwz4Mw5xi6WPaPlmuGkdx7ZM1pw05Deeahb4T1jtWe5X/oI9LQ6EG4dVj/19QIPifHyXXQQXVX+D0Mz1/3CQDcX7x36jRjmCpMQZe/wffVBfsV5PZxhfFJRdmXUJES+X1K7+0tEnlbkPwuYHILjwFn4fgk9O5rhJyM1CkIIGAAA</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Tilesets\MagicTown.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Components.Transform" id="3764366864">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">1404051932</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="102160084">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">1404051932</gameobj>
                  <offset dataType="Float">-0.02</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="40942558" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="756083130">
                  <item dataType="ObjectRef">3198937308</item>
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">27113750</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="876787130">
                  <item dataType="ObjectRef">3405903949</item>
                  <item dataType="ObjectRef">3764366864</item>
                  <item dataType="ObjectRef">102160084</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3764366864</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2147107258">/2KPfz/Jj0O7HOXC4QkFrA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">TopLayer</name>
            <parent dataType="ObjectRef">10461599</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="4245684009">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2998368937">
              <_items dataType="Array" type="Duality.Component[]" id="1147761678" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2311031645">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">4245684009</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3013493237">
                  <active dataType="Bool">true</active>
                  <angularDamp dataType="Float">0.3</angularDamp>
                  <angularVel dataType="Float">0</angularVel>
                  <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
                  <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
                  <colFilter />
                  <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
                  <continous dataType="Bool">false</continous>
                  <explicitInertia dataType="Float">0</explicitInertia>
                  <explicitMass dataType="Float">0</explicitMass>
                  <fixedAngle dataType="Bool">false</fixedAngle>
                  <gameobj dataType="ObjectRef">4245684009</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3389116725">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3351026678" length="64" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">7652</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="2359977928">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4245684009</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="4060396308">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">668293575</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">792658929</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">3405903949</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="177181120" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="663916579">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="Type" id="540468326" value="Duality.Plugins.Tilemaps.TilemapCollider" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1706298488">
                  <item dataType="ObjectRef">2311031645</item>
                  <item dataType="ObjectRef">3013493237</item>
                  <item dataType="ObjectRef">2359977928</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2311031645</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3897183881">VLecLJN/pUiYA65m6S9w2A==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">WorldGeometry</name>
            <parent dataType="ObjectRef">10461599</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">6</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2081326968">
        <_items dataType="Array" type="Duality.Component[]" id="1387570487" length="0" />
        <_size dataType="Int">0</_size>
        <_version dataType="Int">0</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="410896887" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="232855956" length="0" />
          <values dataType="Array" type="System.Object[]" id="1978646582" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1700514864">HunZh0b630iicX0zyp3aXg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Map</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">1593919710</item>
    <item dataType="Struct" type="Duality.GameObject" id="3851204924">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="367255378">
        <_items dataType="Array" type="Duality.Component[]" id="2959980880" length="4">
          <item dataType="Struct" type="DarknessNightThunder.Player" id="2098455836">
            <active dataType="Bool">true</active>
            <character dataType="ObjectRef">495449418</character>
            <gameobj dataType="ObjectRef">3851204924</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1943215818" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4114983048">
            <item dataType="Type" id="1898588012" value="DarknessNightThunder.Player" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="527819742">
            <item dataType="ObjectRef">2098455836</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4191128180">IffF10lNek6ct3+h8WBmZw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Player</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="775455179">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4190313145">
        <_items dataType="Array" type="Duality.Component[]" id="4084153038" length="4">
          <item dataType="Struct" type="DarknessNightThunder.LightingController" id="1983233360">
            <active dataType="Bool">true</active>
            <ambientLight dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">218</G>
              <R dataType="Byte">164</R>
            </ambientLight>
            <ambientLightIntensity dataType="Float">0</ambientLightIntensity>
            <gameobj dataType="ObjectRef">775455179</gameobj>
            <lightTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
              <contentPath dataType="String">Data\System\LightTarget.RenderTarget.res</contentPath>
            </lightTarget>
            <worldTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
              <contentPath dataType="String">Data\System\WorldTarget.RenderTarget.res</contentPath>
            </worldTarget>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1824800512" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1353749779">
            <item dataType="Type" id="4072390374" value="DarknessNightThunder.LightingController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3476209912">
            <item dataType="ObjectRef">1983233360</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="270568441">Mc/D0vujfk6u6F/8xKwihA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">LightingController</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="688381827">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="603377457">
        <_items dataType="Array" type="Duality.Component[]" id="2914553902" length="4">
          <item dataType="Struct" type="DarknessNightThunder.HudRenderer" id="3384257274">
            <active dataType="Bool">true</active>
            <cursorLight dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Sprites\CursorLight.Material.res</contentPath>
            </cursorLight>
            <cursorLightSize dataType="Float">200</cursorLightSize>
            <gameobj dataType="ObjectRef">688381827</gameobj>
            <player dataType="ObjectRef">2098455836</player>
            <playerLight dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Sprites\PlayerLight.Material.res</contentPath>
            </playerLight>
            <playerLightSize dataType="Float">200</playerLightSize>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2426990176" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3788047131">
            <item dataType="Type" id="3001286806" value="DarknessNightThunder.HudRenderer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1311203176">
            <item dataType="ObjectRef">3384257274</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="159647697">jJpDqERFWEWuusSwlHPfVw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">HudRenderer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="518667949">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="878982047">
        <_items dataType="Array" type="Duality.Component[]" id="1284954478" length="4">
          <item dataType="Struct" type="DarknessNightThunder.SpellScriptEditor" id="1532648008">
            <active dataType="Bool">false</active>
            <gameobj dataType="ObjectRef">518667949</gameobj>
            <glyphIcons dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Sprites\SpellGlyphs.Material.res</contentPath>
            </glyphIcons>
            <script dataType="Struct" type="DarknessNightThunder.SpellScript" id="1027262484">
              <glyphGrid dataType="Struct" type="Duality.Grid`1[[DarknessNightThunder.SpellGlyph]]" id="3899170404">
                <height dataType="Int">10</height>
                <sequence dataType="Struct" type="Duality.RawList`1[[DarknessNightThunder.SpellGlyph]]" id="3223586244">
                  <count dataType="Int">200</count>
                  <data dataType="Array" type="DarknessNightThunder.SpellGlyph[]" id="1853911364" length="200" />
                </sequence>
                <width dataType="Int">20</width>
              </glyphGrid>
            </script>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2980425760" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1088501269">
            <item dataType="Type" id="2000730742" value="DarknessNightThunder.SpellScriptEditor" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1947947208">
            <item dataType="ObjectRef">1532648008</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2163143455">YXyI1WLMQEK3SwcQtGARjA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SpellScriptEditor</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1159919267">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2654768273">
        <_items dataType="Array" type="Duality.GameObject[]" id="3543309806">
          <item dataType="Struct" type="Duality.GameObject" id="1560934140">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3646363816">
              <_items dataType="Array" type="Duality.Component[]" id="1344762540">
                <item dataType="Struct" type="Duality.Components.Transform" id="3921249072">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1560934140</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="748960873">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1560934140</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="328743368">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1560934140</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="2927732814">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1560934140</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2022929310" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="4000944490">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="Type" id="2695178784" value="DarknessNightThunder.SpellInteractor" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1762290906">
                  <item dataType="ObjectRef">3921249072</item>
                  <item dataType="ObjectRef">748960873</item>
                  <item dataType="ObjectRef">328743368</item>
                  <item dataType="ObjectRef">2927732814</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3921249072</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="4271190218">Z7pTsFqpB0yrAEQFOSUUnA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="996695700">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="460021832">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="3336465516" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1072092584">
                      <_items dataType="Array" type="System.Int32[]" id="4022814380"></_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="MemberInfo" id="3464894366" value="P:Duality.Components.Transform:RelativePos" />
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">109.853012</X>
                      <Y dataType="Float">9.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">53</_version>
              </changes>
              <obj dataType="ObjectRef">1560934140</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2253583861">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4089803189">
              <_items dataType="Array" type="Duality.Component[]" id="1470239478">
                <item dataType="Struct" type="Duality.Components.Transform" id="318931497">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2253583861</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="1441610594">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2253583861</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1021393089">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2253583861</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="3620382535">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2253583861</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2678701896" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="435698591">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2711900192">
                  <item dataType="ObjectRef">318931497</item>
                  <item dataType="ObjectRef">1441610594</item>
                  <item dataType="ObjectRef">1021393089</item>
                  <item dataType="ObjectRef">3620382535</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">318931497</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1677727501">art4OioZP069P6WZZUIboA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="4005378303">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="1892515140">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="427119172" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="4047459400">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">94.85402</X>
                      <Y dataType="Float">-9.681</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">327</_version>
              </changes>
              <obj dataType="ObjectRef">2253583861</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="147640500">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="572811936">
              <_items dataType="Array" type="Duality.Component[]" id="317844700">
                <item dataType="Struct" type="Duality.Components.Transform" id="2507955432">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">147640500</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="3630634529">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">147640500</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3210417024">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">147640500</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="1514439174">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">147640500</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2597303438" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="490767986">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2750959690">
                  <item dataType="ObjectRef">2507955432</item>
                  <item dataType="ObjectRef">3630634529</item>
                  <item dataType="ObjectRef">3210417024</item>
                  <item dataType="ObjectRef">1514439174</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2507955432</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3642448194">8p7/JjOrdk66NoWQyP8CMA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1719976636">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="861214840">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="3409778028" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="2176459176">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-112.145996</X>
                      <Y dataType="Float">-83.681</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">385</_version>
              </changes>
              <obj dataType="ObjectRef">147640500</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="386707945">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1270473881">
              <_items dataType="Array" type="Duality.Component[]" id="406321742">
                <item dataType="Struct" type="Duality.Components.Transform" id="2747022877">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">386707945</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="3869701974">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">386707945</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3449484469">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">386707945</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="1753506619">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">386707945</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="844245120" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="548149939">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="4136138424">
                  <item dataType="ObjectRef">2747022877</item>
                  <item dataType="ObjectRef">3869701974</item>
                  <item dataType="ObjectRef">3449484469</item>
                  <item dataType="ObjectRef">1753506619</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2747022877</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2484400857">VfQOsgJOFUWlzuu4DUSCqQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="3571768283">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="4126945364">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="2445624548" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1642014920">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-127.144989</X>
                      <Y dataType="Float">121.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">707</_version>
              </changes>
              <obj dataType="ObjectRef">386707945</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2073405900">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="436702424">
              <_items dataType="Array" type="Duality.Component[]" id="1616101292">
                <item dataType="Struct" type="Duality.Components.Transform" id="138753536">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2073405900</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="1261432633">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2073405900</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="841215128">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2073405900</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="3440204574">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2073405900</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4258648222" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="413416602">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="4053075770">
                  <item dataType="ObjectRef">138753536</item>
                  <item dataType="ObjectRef">1261432633</item>
                  <item dataType="ObjectRef">841215128</item>
                  <item dataType="ObjectRef">3440204574</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">138753536</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2463937562">3u/vGXoLXEasfGmpeEgHTg==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1557853316">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="541617512">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="716115500" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="2800260648">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-95.14398</X>
                      <Y dataType="Float">142.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">735</_version>
              </changes>
              <obj dataType="ObjectRef">2073405900</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1669225001">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2521329753">
              <_items dataType="Array" type="Duality.Component[]" id="3662301134">
                <item dataType="Struct" type="Duality.Components.Transform" id="4029539933">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1669225001</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="857251734">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1669225001</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="437034229">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1669225001</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="3036023675">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1669225001</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1244617728" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3738515571">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3289589688">
                  <item dataType="ObjectRef">4029539933</item>
                  <item dataType="ObjectRef">857251734</item>
                  <item dataType="ObjectRef">437034229</item>
                  <item dataType="ObjectRef">3036023675</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">4029539933</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1924696473">wh8HSHmo2UW1DYPmtp5mMg==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="3297825819">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="985931476">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="789319396" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1653862600">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">173.857025</X>
                      <Y dataType="Float">218.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">999</_version>
              </changes>
              <obj dataType="ObjectRef">1669225001</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1090967641">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="326524713">
              <_items dataType="Array" type="Duality.Component[]" id="4269637646">
                <item dataType="Struct" type="Duality.Components.Transform" id="3451282573">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1090967641</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="278994374">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1090967641</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4153744165">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1090967641</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="2457766315">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1090967641</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1563635136" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3331401379">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1429547384">
                  <item dataType="ObjectRef">3451282573</item>
                  <item dataType="ObjectRef">278994374</item>
                  <item dataType="ObjectRef">4153744165</item>
                  <item dataType="ObjectRef">2457766315</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3451282573</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3109409033">BZUHZgFTJ02D/nQbZSwyew==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="365092107">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="2894331060">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1137868196" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1425986504">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-348.141968</X>
                      <Y dataType="Float">269.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">1119</_version>
              </changes>
              <obj dataType="ObjectRef">1090967641</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2808597440">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3218020428">
              <_items dataType="Array" type="Duality.Component[]" id="3858010020">
                <item dataType="Struct" type="Duality.Components.Transform" id="873945076">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2808597440</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="1996624173">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2808597440</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1576406668">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2808597440</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="4175396114">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2808597440</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2861688310" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2849088966">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1041339066">
                  <item dataType="ObjectRef">873945076</item>
                  <item dataType="ObjectRef">1996624173</item>
                  <item dataType="ObjectRef">1576406668</item>
                  <item dataType="ObjectRef">4175396114</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">873945076</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3162410694">+YGBe+bgqEqJWDy1arXHkQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2200214360">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="352378232">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="3198226284" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="155108776">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-380.140961</X>
                      <Y dataType="Float">267.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">1177</_version>
              </changes>
              <obj dataType="ObjectRef">2808597440</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="3207624092">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="592423944">
              <_items dataType="Array" type="Duality.Component[]" id="210047340">
                <item dataType="Struct" type="Duality.Components.Transform" id="1272971728">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3207624092</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="2395650825">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3207624092</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1975433320">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3207624092</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="279455470">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3207624092</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3770241502" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3865142474">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3517204122">
                  <item dataType="ObjectRef">1272971728</item>
                  <item dataType="ObjectRef">2395650825</item>
                  <item dataType="ObjectRef">1975433320</item>
                  <item dataType="ObjectRef">279455470</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1272971728</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1993346090">/DOYSaiESEagQnLoEbWyKA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2674836468">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="3158399048">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1940663404" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="3786495400">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-204.139954</X>
                      <Y dataType="Float">-211.681</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">1467</_version>
              </changes>
              <obj dataType="ObjectRef">3207624092</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2578164443">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="978807419">
              <_items dataType="Array" type="Duality.Component[]" id="1644958038">
                <item dataType="Struct" type="Duality.Components.Transform" id="643512079">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2578164443</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="1766191176">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2578164443</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1345973671">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2578164443</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="3944963117">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2578164443</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4159322792" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="577934225">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1390601888">
                  <item dataType="ObjectRef">643512079</item>
                  <item dataType="ObjectRef">1766191176</item>
                  <item dataType="ObjectRef">1345973671</item>
                  <item dataType="ObjectRef">3944963117</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">643512079</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="384187907">qupKhuHmJEClrvlf4Xr1VQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1012314481">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="4224381796">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1862316996" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="898580808">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-419.138947</X>
                      <Y dataType="Float">-251.681</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">1581</_version>
              </changes>
              <obj dataType="ObjectRef">2578164443</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1326979362">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3943318182">
              <_items dataType="Array" type="Duality.Component[]" id="1577301504">
                <item dataType="Struct" type="Duality.Components.Transform" id="3687294294">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1326979362</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="515006095">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1326979362</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="94788590">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1326979362</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="2693778036">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1326979362</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3610009530" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2102353684">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="69091638">
                  <item dataType="ObjectRef">3687294294</item>
                  <item dataType="ObjectRef">515006095</item>
                  <item dataType="ObjectRef">94788590</item>
                  <item dataType="ObjectRef">2693778036</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3687294294</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="963746224">XFNdLkXTjEqhJLK0D2gz8g==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="264539302">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="3214861312">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="3314639004" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="285420744">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-388.137939</X>
                      <Y dataType="Float">-252.681</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">1627</_version>
              </changes>
              <obj dataType="ObjectRef">1326979362</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="725243509">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2220094005">
              <_items dataType="Array" type="Duality.Component[]" id="3909481974">
                <item dataType="Struct" type="Duality.Components.Transform" id="3085558441">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">725243509</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="4208237538">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">725243509</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3788020033">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">725243509</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="2092042183">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">725243509</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2086809160" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="257507359">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2931011616">
                  <item dataType="ObjectRef">3085558441</item>
                  <item dataType="ObjectRef">4208237538</item>
                  <item dataType="ObjectRef">3788020033</item>
                  <item dataType="ObjectRef">2092042183</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3085558441</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2888220301">3RyPRbX2lEqL+5iN74zZPA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2051892095">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="1827264068">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1002379844" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="842822728">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">410.863068</X>
                      <Y dataType="Float">-46.681</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">1917</_version>
              </changes>
              <obj dataType="ObjectRef">725243509</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="199628619">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1132418059">
              <_items dataType="Array" type="Duality.Component[]" id="1813604470">
                <item dataType="Struct" type="Duality.Components.Transform" id="2559943551">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">199628619</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="3682622648">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">199628619</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3262405143">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">199628619</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="1566427293">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">199628619</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1320352456" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1386937249">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3331239712">
                  <item dataType="ObjectRef">2559943551</item>
                  <item dataType="ObjectRef">3682622648</item>
                  <item dataType="ObjectRef">3262405143</item>
                  <item dataType="ObjectRef">1566427293</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2559943551</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="536852019">+1KPH2noxUW8+/wdWiyTdQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="616723393">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="1865726532">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="3810699844" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1741247560">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">12.8640614</X>
                      <Y dataType="Float">151.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">2537</_version>
              </changes>
              <obj dataType="ObjectRef">199628619</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1710329510">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2548427546">
              <_items dataType="Array" type="Duality.Component[]" id="1369124224">
                <item dataType="Struct" type="Duality.Components.Transform" id="4070644442">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1710329510</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="898356243">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1710329510</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="478138738">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1710329510</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="3077128184">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1710329510</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3702645050" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3757664864">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="812369550">
                  <item dataType="ObjectRef">4070644442</item>
                  <item dataType="ObjectRef">898356243</item>
                  <item dataType="ObjectRef">478138738</item>
                  <item dataType="ObjectRef">3077128184</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">4070644442</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1860540540">WsacSm3CKkihAO3UNG941g==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2306835866">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="2870454016">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="2061947548" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="2599007432">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-303.134918</X>
                      <Y dataType="Float">210.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">2937</_version>
              </changes>
              <obj dataType="ObjectRef">1710329510</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="303156985">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2302597257">
              <_items dataType="Array" type="Duality.Component[]" id="1403330446">
                <item dataType="Struct" type="Duality.Components.Transform" id="2663471917">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">303156985</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="3786151014">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">303156985</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3365933509">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">303156985</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="1669955659">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">303156985</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="643350336" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="31887683">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3647216824">
                  <item dataType="ObjectRef">2663471917</item>
                  <item dataType="ObjectRef">3786151014</item>
                  <item dataType="ObjectRef">3365933509</item>
                  <item dataType="ObjectRef">1669955659</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2663471917</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="597242217">qopN31yx+0SxPXyHVpp0qA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="3468218923">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="1595182260">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1257495972" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1324520392">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-50.1339264</X>
                      <Y dataType="Float">460.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">3071</_version>
              </changes>
              <obj dataType="ObjectRef">303156985</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="847663561">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1337679289">
              <_items dataType="Array" type="Duality.Component[]" id="4207358158">
                <item dataType="Struct" type="Duality.Components.Transform" id="3207978493">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">847663561</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.ActorRenderer" id="35690294">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">847663561</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3910440085">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">847663561</gameobj>
                </item>
                <item dataType="Struct" type="DarknessNightThunder.SpellInteractor" id="2214462235">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">847663561</gameobj>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="614607104" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="57002515">
                  <item dataType="ObjectRef">2720087492</item>
                  <item dataType="ObjectRef">478251414</item>
                  <item dataType="ObjectRef">474680448</item>
                  <item dataType="ObjectRef">2695178784</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="4054164728">
                  <item dataType="ObjectRef">3207978493</item>
                  <item dataType="ObjectRef">35690294</item>
                  <item dataType="ObjectRef">3910440085</item>
                  <item dataType="ObjectRef">2214462235</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3207978493</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2764306169">BBGVmhNirkCDl8oclnbsYw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Barrel</name>
            <parent dataType="ObjectRef">1159919267</parent>
            <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="760809531">
              <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="3440661780">
                <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="3840362596" length="4">
                  <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                    <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1577119432">
                      <_items dataType="ObjectRef">4022814380</_items>
                      <_size dataType="Int">0</_size>
                      <_version dataType="Int">1</_version>
                    </childIndex>
                    <componentType dataType="ObjectRef">2720087492</componentType>
                    <prop dataType="ObjectRef">3464894366</prop>
                    <val dataType="Struct" type="Duality.Vector3">
                      <X dataType="Float">-20.132925</X>
                      <Y dataType="Float">460.319</Y>
                      <Z dataType="Float">0</Z>
                    </val>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">3115</_version>
              </changes>
              <obj dataType="ObjectRef">847663561</obj>
              <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                <contentPath dataType="String">Data\Prefabs\Barrel.Prefab.res</contentPath>
              </prefab>
            </prefabLink>
          </item>
        </_items>
        <_size dataType="Int">16</_size>
        <_version dataType="Int">16</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3541809824">
        <_items dataType="Array" type="Duality.Component[]" id="2906277691" length="0" />
        <_size dataType="Int">0</_size>
        <_version dataType="Int">0</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4220756227" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1575183396" length="0" />
          <values dataType="Array" type="System.Object[]" id="1511368982" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1046300192">17dHamXRjEG8UP6LGVog+A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">InteractiveObjects</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">2961408854</item>
    <item dataType="ObjectRef">3085774208</item>
    <item dataType="ObjectRef">1404051932</item>
    <item dataType="ObjectRef">4245684009</item>
    <item dataType="ObjectRef">1560934140</item>
    <item dataType="ObjectRef">2253583861</item>
    <item dataType="ObjectRef">147640500</item>
    <item dataType="ObjectRef">386707945</item>
    <item dataType="ObjectRef">2073405900</item>
    <item dataType="ObjectRef">1669225001</item>
    <item dataType="ObjectRef">1090967641</item>
    <item dataType="ObjectRef">2808597440</item>
    <item dataType="ObjectRef">3207624092</item>
    <item dataType="ObjectRef">2578164443</item>
    <item dataType="ObjectRef">1326979362</item>
    <item dataType="ObjectRef">725243509</item>
    <item dataType="ObjectRef">199628619</item>
    <item dataType="ObjectRef">1710329510</item>
    <item dataType="ObjectRef">303156985</item>
    <item dataType="ObjectRef">847663561</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
