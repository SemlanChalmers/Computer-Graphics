#version 420

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 color;
layout(location = 2) in vec2 texCoordIn;

uniform mat4 projectionMatrix;
uniform vec3 cameraPosition;

// >>> @task 3.2
out vec2 texCoordOut;
void main()
{
	vec4 pos = vec4(position.xyz - cameraPosition.xyz, 1);
	gl_Position = projectionMatrix * pos;

	// >>> @task 3.3
	texCoordOut = texCoordIn;
}