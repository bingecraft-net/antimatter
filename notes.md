# notes

I want to run antimatter Monifactory server in the cloud.

Login to VPS terminal:

```zsh
 ssh ubuntu@51.81.201.208
```

## v1 to v2

Goals:

1. Connect via ip results in generic error
1. Connect via host antimatter-v2 results in successful connection
1. Restore from antimatter-v1 backup
1. Connection quality is improved for other regions

## declarative build and deploy

Goals:

1. When change pushed to git then the change is built and deployed to target server
1. Minimize downtime
1. Backup before applying each change
1. New changes use latest backup
