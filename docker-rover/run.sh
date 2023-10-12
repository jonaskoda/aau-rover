container_name=""
container_autostart_name="rover_autostart"
image_name="rover-image"
mode="test"

# Parse command-line options
while getopts ":n:m:" opt; do
    case $opt in
        n)
            container_name="$OPTARG"
            ;;
        m)
            mode="$OPTARG"
            ;;
      \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done      

if [ -z "$container_name" ]; then
  echo "ERROR: Please specify the container_name using e.g. './run.sh -name CONTAINER_NAME'"
  container_name="rover-image-test"
  #exit 1
fi


if ! [[ "$mode" =~ ^(test|devel|autostart|stop_autostart)$ ]]; then
  echo "ERROR: Invalid mode specified. Please use 'test', 'devel', 'autostart', or 'stop_autostart'."
  exit 1
fi

case $mode in
  "test")
    options="--rm"
    ;;
  "devel")
    options=""
    ;;
  "autostart")
    container_name="${container_autostart_name}"
    start_command="autostart"
    options="--restart always"
    ;;
  "stop_autostart")
    docker container stop "${container_autostart_name}"
    exit
    ;;
  *)
    echo "Invalid mode. This should not happen as the mode has already been validated."
    exit 1
    ;;
esac


nvidia-docker run  --name "${container_name}" \
             -it \
            --privileged \
            --rm \
            -v /lib/modules/5.10.104-tegra:/lib/modules/5.10.104-tegra \
            --network=host \
             "${image_name}" \
             "${start_command}" 

#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

#            -v /usr/lib/aarch64-linux-gnu/tegra/libv4l2.so.0:/usr/lib/aarch64-linux-gnu/libv4l2.so \