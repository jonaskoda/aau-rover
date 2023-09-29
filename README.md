# AAU Space Robotics - System Setup Repository
This repository contains all the files and documentation related to running the system on the physical rover or in simulation.

## Physical Rover

### Building
1. Run the following code:

```bash
1. cd docker-rover
2. ./build.sh
```

### Running

1. Run the following code:

```bash
1. cd docker-rover
2. ./run.sh -name CONTAINER_NAME -mode MODE
```
NOTE: 
* *CONTAINER_NAME* is the desired name of the container
* *MODE* is the mode of the container these are the available commands
    * ***test:*** Allows you to test the container, runs with the --rm tag, so the container will be deleted when you exit.
    * ***devel*** - container where you can do development.
    * ***autostart*** - start the container with the --restart always tag, so it will start on boot.
    * ***autostart_stop*** - stop the autostarting of containers.
## Simulation 

Coming soon ..