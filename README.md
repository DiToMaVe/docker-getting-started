Launch a docker container with an interactive bash shell:
```
podman run --name miniconda_container --rm -it bash-image
/ #
``` 
We can verify that indeed the bash shell is used instead of sh:
```
/ # echo $0
/bin/bash
```
