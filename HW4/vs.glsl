#version 400 core
#extension GL_ARB_explicit_uniform_location : enable

layout(location = 0) in vec4 offset;
layout(location = 1) in vec3 theta;

void main(void)
{
	     const vec4 vertices[] = vec4[](vec4( -0.25, 0.25, 0.5, 1.0),       //
		                               vec4 (-0.20, 0.25, 0.5, 1.0),     
		                              vec4(  -0.25,  -0.25, 0.5, 1.0),    

		                                 vec4( -0.20,  -0.25, 0.5, 1.0),    
		                                    vec4(-0.20, 0.25, 0.5, 1.0),     
		                                 vec4( -0.25,  -0.25, 0.5, 1.0),    

		                                 vec4( -0.10,  0.25, 0.5, 1.0),     
		                                 vec4( -0.25,  -0.10, 0.5, 1.0),     
		                                 vec4( -0.05,  0.25, 0.5, 1.0),    

		                                 vec4( -0.05,  0.25, 0.5, 1.0),     
		                                 vec4( -0.25,  -0.15, 0.5, 1.0),     
		                                 vec4( -0.25,  -0.10, 0.5, 1.0),     

		                                 vec4( -0.25,  0.05, 0.5, 1.0),     
		                                 vec4( -0.10,  -0.25, 0.5, 1.0),     
		                                 vec4( -0.05,  -0.25, 0.5, 1.0),     

		                                 vec4( -0.25,  0, 0.5, 1.0),         
		                                 vec4( -0.10,  -0.25, 0.5, 1.0),     
		                                 vec4( -0.25,  0.05, 0.5, 1.0),     
		//S
		                                 vec4( 0.30 , 0.25, 0.5, 1.0),      //s1
		                                 vec4( 0.45,  0.25, 0.5, 1.0),     
		                                 vec4( 0.45,  0.20, 0.5, 1.0),     

		                                 vec4( 0.30,  0.25, 0.5, 1.0),     
		                                 vec4( 0.30 , 0.20, 0.5, 1.0),      //s2
		                                 vec4( 0.45,  0.20, 0.5, 1.0),     

		                                 vec4( 0.45,  0.25, 0.5, 1.0),     
		                                 vec4( 0.45 , 0.20, 0.5, 1.0),      //s3
		                                 vec4( 0.50,  0.20, 0.5, 1.0),     

		                                 vec4( 0.27,  0.20, 0.5, 1.0),     
		                                 vec4( 0.30 , 0.25, 0.5, 1.0),      //s4
		                                 vec4( 0.30,  0.20, 0.5, 1.0),     

		                                 vec4( 0.27,  0.20, 0.5, 1.0),     
		                                 vec4( 0.30 , 0.20, 0.5, 1.0),      //s5
		                                 vec4( 0.27,  0.05, 0.5, 1.0),     

		                                 vec4( 0.27,  0.05, 0.5, 1.0),     
		                                 vec4( 0.30 , 0.05, 0.5, 1.0),      //s6
		                                 vec4( 0.30,  0.20, 0.5, 1.0),     

		                                 vec4( 0.27,  0.05, 0.5, 1.0),     
		                                 vec4( 0.30 , 0.05, 0.5, 1.0),      //s7
		                                 vec4( 0.30,  0, 0.5, 1.0),     

		                                 vec4( 0.30,  0.05, 0.5, 1.0),     
		                                 vec4( 0.30 , 0, 0.5, 1.0),      //s8
		                                 vec4( 0.45,  0, 0.5, 1.0),     

		                                 vec4( 0.30,  0.05, 0.5, 1.0),     
		                                 vec4( 0.45 , 0.05, 0.5, 1.0),      //s9
		                                 vec4( 0.45,  0, 0.5, 1.0),     

		                                 vec4( 0.45,  0.05, 0.5, 1.0),     
		                                 vec4( 0.45 , 0, 0.5, 1.0),      //s10
		                                 vec4( 0.48,  0, 0.5, 1.0),     

		                                 vec4( 0.45,  0, 0.5, 1.0),     
		                                 vec4( 0.48 , 0, 0.5, 1.0),      //s11
		                                 vec4( 0.48,  -0.10, 0.5, 1.0),     

		                                 vec4( 0.45,  -0.10, 0.5, 1.0),     
		                                 vec4( 0.45 , 0, 0.5, 1.0),      //s12
		                                 vec4( 0.48,  -0.10, 0.5, 1.0),     

		                                 vec4( 0.45,  -0.1, 0.5, 1.0),     
		                                 vec4( 0.45 , -0.15, 0.5, 1.0),      //s13
		                                 vec4( 0.48,  -0.10, 0.5, 1.0),     

		                                 vec4( 0.30,  -0.1, 0.5, 1.0),     
		                                 vec4( 0.45 , -0.1, 0.5, 1.0),      //s14
		                                 vec4( 0.45,  -0.15, 0.5, 1.0),    

		                                 vec4( 0.30,  -0.1, 0.5, 1.0),     
		                                 vec4( 0.30 , -0.15, 0.5, 1.0),      //s15
		                                 vec4( 0.45,  -0.15, 0.5, 1.0),     

		                                 vec4( 0.27,  -0.1, 0.5, 1.0),     
		                                 vec4( 0.30 , -0.1, 0.5, 1.0),      //s16
		                                 vec4( 0.30,  -0.15, 0.5, 1.0));     

	// calculate the sines and cosines of theta for each of
	// the three axes in one computation.

	vec3 angles = radians(theta); //convert into radians
	vec3 c = cos(angles); // calculate the cosine of the selected angle 
	vec3 s = sin(angles); // calculate teh sine of the selected angle 

	// this rotates the points by a certain angle 
	mat4 rz = mat4(c.z, -s.z, 0.0, 0.0,      // first column
		s.z, c.z, 0.0, 0.0,                 // second column
		0.0, 0.0, 1.0, 0.0,                 // third column 
		0.0, 0.0, 0.0, 1.0);                // fourth column

	float scale = 1; // could also do 0.5f 
	// this adjusts the size of the image ( could be 2 for example instead of 0.5)
	mat4 sc = mat4(scale, 0.0, 0.0, 0.0,    // first column
		0.0, scale, 0.0, 0.0,              // second column
		0.0, 0.0, scale, 0.0,              // third column 
		0.0, 0.0, 0.0, 1.0);              // fourth column
	// this shifts the whole object par rapport a the orignal one 
	mat4 t = mat4(1.0, 0.0, 0.0, offset[0],  // first column
		0.0, 1.0, 0.0, offset[1],           // second column
		0.0, 0.0, 1.0, offset[2],           // third column 
		0.0, 0.0, 0.0, 1.0);                // fourth column
	// this rotates teh object about the y axis 
	mat4 ry = mat4(c.y, 0.0, s.y, 0.0,  // first column
		0.0, 1.0, 0.0, 0.0,             // second column
		-s.y, 0.0, c.y, 0.0,           // third column 
		0.0, 0.0, 0.0, 1.0);          // fourth column





	gl_Position = vertices[gl_VertexID] * sc * ry * rz * t;
}