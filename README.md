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
2. ./run.sh --name=CONTAINER_NAME --mode=MODE
```
**Note:**
***CONTAINER_NAME*** is the desired name of the container
***MODE*** is the mode of the container these are the available commands
    * ***test:*** Temporary container, removed on stop, runs with the --rm tag.
    * ***devel*** - container where you can do development.
    * ***autostart*** - autostarts the container on boot, using --restart always tag.
    * ***autostart_stop*** - stop the autostarting of containers.
## Simulation 

Coming soon ..