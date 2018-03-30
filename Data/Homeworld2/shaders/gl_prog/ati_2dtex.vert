#version 330

layout (location = 0) in vec4 inPos;
layout (location = 4) in vec4 inCol0;
layout (location = 6) in vec2 inUV0;

uniform mat4 inMatP;

uniform vec4 inOfs;
uniform vec4 inWindow;
uniform vec4 inMult;

smooth out vec4 outCol0;
smooth out vec2 outUV0;

void main()
{
	vec4 tryV = inMatP*vec4(inPos.x, inPos.y, inPos.z, 1.0f);
	tryV.x += (inOfs.x*2.0*inWindow.z)*tryV.w;
	tryV.y += (inOfs.y*2.0*inWindow.w)*tryV.w;
	gl_Position = tryV;
	outCol0 = inCol0*inMult;
	outUV0 = inUV0;
}
