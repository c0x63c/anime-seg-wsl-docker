### Prerequisites

* Windows 11(64GB)
* NVidia video card (RTX3060 12GB)
* WSL2 (32GB and operation confirmed on Ubuntu 20.04)

*Not confirmed in other configurations than those listed above.

### Installing

* Build Docker with the following command
```
docker compose build
```

## Usage

* Attach Docker
```
docker exec -it anime-seg01 /bin/bash
```

* Execution anime-segmentation
```
docker compose up
docker exec anime-seg01 python3 inference.py --net isnet_is --ckpt ./anime-seg/isnetis.ckpt --data /data/input/{input_dir} --out /data/output/ --img-size 1024 --only-matted
```

## Version

* 2023/04/09

## Acknowledgments

* [anime-segmentation](https://github.com/SkyTNT/anime-segmentation) 
* [nVidia 525 + Cuda 11.8 + Python 3.10 + pyTorch GPU Docker image](https://dev.to/ordigital/nvidia-525-cuda-118-python-310-pytorch-gpu-docker-image-1l4a)

