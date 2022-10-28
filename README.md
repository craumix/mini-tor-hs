# Mini Tor hidden service

[![Docker Pulls](https://img.shields.io/docker/pulls/craumix/mini-tor-hs)](https://hub.docker.com/r/craumix/mini-tor-hs)
[![Docker Version](https://img.shields.io/docker/v/craumix/mini-tor-hs)](https://hub.docker.com/r/craumix/mini-tor-hs)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/craumix/mini-tor-hs/latest)](https://hub.docker.com/r/craumix/mini-tor-hs)

A minimal Tor Hidden Service inside Docker powered by alpine.  

## Frequent Problems

### ./hidden_service too permissive

If you should receive this error:  
`Permissions on directory ./hidden_service are too permissive.`  
you will have to change the directories permissions where `/tor/hidden_service` is mounted to.  
  
For example if you have:  

```plain
volumes:  
  - /some/directory/hidden_service:/tor/hidden_service
```

You will have to run:  
`sudo chmod 700 /some/directory/hidden_service`
