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

- **CONTAINER_NAME**: Specify the desired name for your container.
- **MODE**: Select the mode of operation for your container. Available options include:
  - **test**: Initiates a temporary container which is removed upon termination, executed with the `--rm` flag.
  - **devel**: Designates the container for development activities.
  - **autostart**: Configures the container to automatically start during the system boot, employing the `--restart always` tag.
  - **autostart_stop**: Disables the auto-start functionality of the container.

## Simulation 

Coming soon ..