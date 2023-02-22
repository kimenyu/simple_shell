#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <malloc.h>

int main(int argc, char** argv, char** env)
{
	char* line;
	size_t length = 64;
	char* prompt = "($) ";

	line = malloc(length);
	while (1)
	{
		write(1, prompt, strlen(prompt));
		getline(&line, &length, stdin);
	}
	free(line);
	return (0);
}
