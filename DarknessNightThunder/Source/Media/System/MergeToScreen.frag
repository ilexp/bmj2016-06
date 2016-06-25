uniform sampler2D mainTex;
uniform sampler2D lightTex;
vec3 ambientColor;

void main()
{
	vec3 worldColor = texture2D(mainTex, gl_TexCoord[0].st).rgb;
	vec3 lightColor = texture2D(lightTex, gl_TexCoord[0].st).rgb;
	gl_FragColor = gl_Color * vec4(worldColor * (lightColor + ambientColor), 1.0);
}