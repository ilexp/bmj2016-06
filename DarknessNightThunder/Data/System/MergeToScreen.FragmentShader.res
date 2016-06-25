<root dataType="Struct" type="Duality.Resources.FragmentShader" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId dataType="String">BasicShaderAssetImporter</importerId>
    <sourceFileHint dataType="Array" type="System.String[]" id="1100841590">
      <item dataType="String">{Name}.frag</item>
    </sourceFileHint>
  </assetInfo>
  <source dataType="String">uniform sampler2D mainTex;
uniform sampler2D lightTex;
vec3 ambientColor;

void main()
{
	vec3 worldColor = texture2D(mainTex, gl_TexCoord[0].st).rgb;
	vec3 lightColor = texture2D(lightTex, gl_TexCoord[0].st).rgb;
	vec3 finalColor = worldColor * (lightColor + ambientColor);
	
	/* Kind-of-Tonemapping: Fade to white when going beyond visible hi-color. */
	float val = max(0.0, max(max(finalColor.r * 1.125, finalColor.g), finalColor.b * 1.35) - 1.0);
	finalColor.rgb = mix(finalColor.rgb, vec3(1.0, 1.0, 1.0), val / (1.0 + val));
	
	gl_FragColor = gl_Color * vec4(finalColor, 1.0);
}</source>
</root>
<!-- XmlFormatterBase Document Separator -->
