# Podman Troubleshooting

## x509: certificate signed by unknown authority

The workaround is to update Podman's virtual machine. Open a terminal to the virtual machine
```
podman machine ssh
```
and edit /etc/containers/registries.conf by adding an entry for the concerned registry:
``
sudo vi /etc/containers/registries.conf
```
```
/etc/containers/registries.conf
[[registry]]
location = "location.of.docker.registry"
insecure = true
```
