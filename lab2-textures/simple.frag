#version 420

// required by GLSL spec Sect 4.5.3 (though nvidia does not, amd does)
precision highp float;

in vec2 texCoordOut;

// >>> @task 3.4
layout(binding = 0) uniform sampler2D colortexture;
layout(location = 0) out vec4 fragmentColor;

void main()
{
	// >>> @task 3.5
	fragmentColor = texture2D(colortexture, texCoordOut.xy);
}