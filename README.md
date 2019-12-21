## Debug-Container Project
This project is inspired by Phil Huang's [debug-container](https://github.com/pichuang/debug-container) project. 
The only difference is this project is using Photon-OS as the base image and the resulting image is around 156MB. Engineer could easily bring this container to POC site for troubleshooting unknown problems in customer's air-gapped environment. Simply docker save/load this image. 

### Download
* Docker
`docker pull -it --rm --name debugger shawnho1976/library:debug-container /bin/bash`
* Kubernetes
`kubectl run -it --rm --name debugger --image shawnho1976/library:debug-container -- /bin/bash`
### Build the image yourself
```
git clone https://github.com/shawnho1018/debug-container.git
cd debug-container
docker build . -t [your-desired-image-tag]
```
### Installed Libraries
* Network-Related Commands
  * iproute
  * ping
  * netcat

* Generic-Commands
  * vim
  * git
  * wget
