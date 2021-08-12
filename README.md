# vsc-server-example

creating a local dev env with visual studio code server using docker compose 


### motivation ###
You might have various solutions to build up a local dev environment, but there are a few challenges:

* developers use different operating systems
* developers use different IDEs

That's fine as long as everybody takes care about the differnces.

* you might need different runtimes (for example JDK) for different projects
* you might need different configurations (for example Maven) for different projects
* you might need different command line tools (for example kubectl) for different projects
* you might need different IDE plugins for different projects

Using only one host system might be challenging and could create failures.


### approach ###
* Visual Studio Code Server could create a container suitable for your environment and will enable you to develop within your browser
* docker-compose (or something else) could be used to orchestrate you local env (for example database containers and other services)

As there are many solutions to bring up a bulk of containers, I do not want to limit the usage. 
Because of this I prefer this approach compared to Visual Studio Code remote development.
In addition you will get your own "development container" and you can customize it as you need and you can use your preferred IDE plugins.


### known problems ###
* Not all plugins get activated directly after installation, you might need to restart the container to get it working...
* MD review frame might take some time to load


### usage ###
1. execute ./startup.sh to start all containers
4. Browser: http://localhost:8080 to open die IDE
3. execute ./buildAndStart.sh using the integrated terminal
4. Browser: http://localhost:50000/hello