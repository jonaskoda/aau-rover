





xhost +
docker run --name isaac-sim --entrypoint bash -it --gpus all -e "ACCEPT_EULA=Y" --rm --network=host \
 -v $HOME/.Xauthority:/root/.Xauthority \
 -e DISPLAY \
 -v ~/docker/isaac-sim/kit/cache/Kit:/isaac-sim/kit/cache/Kit:rw \
 -v ~/docker/isaac-sim/cache/ov:/root/.cache/ov:rw \
 -v ~/docker/isaac-sim/cache/pip:/root/.cache/pip:rw \
 -v ~/docker/isaac-sim/cache/glcache:/root/.cache/nvidia/GLCache:rw \
 -v ~/docker/isaac-sim/cache/computecache:/root/.nv/ComputeCache:rw \
 -v ~/docker/isaac-sim/logs:/root/.nvidia-omniverse/logs:rw \
 -v ~/docker/isaac-sim/data:/root/.local/share/ov/data:rw \
 -v ~/docker/isaac-sim/documents:/root/Documents:rw \
 isaac-sim


 