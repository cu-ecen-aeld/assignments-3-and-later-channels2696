#include <stdio.h>
#include <syslog.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

	const char *file = argv[1];
	const char *text = argv[2];
	FILE *fd;

	if(argc < 2){
		syslog(LOG_ERR, "Insufficient parameters");

		return 1;
	}

	openlog(NULL, LOG_CONS, LOG_USER);

	fd = fopen(file,"w");

        syslog(LOG_DEBUG, "Writing %s to file %s\n", text, file);
	fprintf(fd, "%s\n", text);


	fclose(fd);

	return 0;
}
