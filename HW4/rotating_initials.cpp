#define WIN32
#include <sb7.h>
#include <shader.h>
#include <vmath.h>

class rotating_initials : public sb7::application
{
private:
	GLuint program;
	GLuint vao;

public:
	void startup()
	{
		GLuint shaders[2];

		shaders[0] = sb7::shader::load("vs.glsl", GL_VERTEX_SHADER);
		shaders[1] = sb7::shader::load("fs.glsl", GL_FRAGMENT_SHADER);

		program = sb7::program::link_from_shaders(shaders, 2, true);

		glCreateVertexArrays(1, &vao);
		glBindVertexArray(vao);

		GLuint buffer;
		glGenBuffers(1, &buffer);
		glBindBuffer(GL_ARRAY_BUFFER, buffer);
		glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * 4 * 12, NULL, GL_STATIC_DRAW);
	};

	void shutdown()
	{
		glDeleteVertexArrays(1, &vao);
		glDeleteProgram(program);
	}

	// Our rendering function
	void render(double currentTime)
	{
		const GLfloat color[] = { (float)0.0f , (float)0.0f ,  (float)0.0f , (float) 0.0f };

		glClearBufferfv(GL_COLOR, 0, color);
		glUseProgram(program);

		float r = 0.5;
		float theta = (float)currentTime * 2;

		GLfloat attrib[] = { (float)(r * cos(theta)), (float)(r * sin(theta)), (float) 0.0f, (float) 0.0f };

		glVertexAttrib4fv(0, attrib);

		theta = theta * -35;

		GLfloat attrib2[] = { (float)theta, (float)theta, (float)theta };


		// Ship Theta angles down to the shader program
		glVertexAttrib3fv(1, attrib2);

		glDrawArrays(GL_TRIANGLES, 0, 4 *21);
	}

};

DECLARE_MAIN(rotating_initials);