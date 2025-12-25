# notes

> Am I thinking about this right? I have two apps. One Minecraft reverse proxy and one Minecraft server. I want to expose only the RP to public traffic. I'm gunna deploy each as a coolify app, and create a coolify destination to bridge them together and allow the RP to forward traffic to the game server.

From [Coolify docs for self-hosted install](https://coolify.io/docs/get-started/installation#self-hosted-installation):

> curl -fsSL https://cdn.coollabs.io/coolify/install.sh | sudo bash
