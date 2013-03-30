#include <unistd.h>
#include <string.h>
int main(int argc, char *argv[])
{
	int i;
	argv[0] = "/usr/bin/mate-terminal";
	for (i = 1; i < argc; ++i) {
		if (strncmp(argv[i], "-e", 3) == 0) {
	 		argv[i] = "-x";
		}
	}
	execv(argv[0], argv);
	return 1; /* if exec returns, it's an error, baby */
}
