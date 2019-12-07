# docker-youtube-dlg
Runs the youtube-dlg application from https://github.com/MrS0m30n3/youtube-dl-gui inside of a docker application.

## Useage
First you need to build the docker image using the included docker file. This can be done using:
 
	`docker build -t docker-youtube-dlg .`

Then you can run the docker image using:

	`docker run --rm -p [hostport]:5800 -v [hostdirectory]:/youtube-dl-downloads docker-youtube-dlg`

Where:

| Variable	| Description	| Example Value |
|---------------|---------------|---------------|
|`hostport`| Port on the host machine where you want to access the dockerized application. You will then access the application using a web browser at the address: http://[hostip]:[hostport].| 5800 |
|`hostdirectory`| Directory on the host machine where you want the files downloaded using the youtube-dlg application to be stored. | /home/myuser/Downloads |

 
