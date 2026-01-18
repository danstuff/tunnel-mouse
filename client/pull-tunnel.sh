#!/bin/bash

export $(cat client.env | xargs)

sudo wg-quick down wg0
sudo rsync "$SERVER_IP::~/Docker/containers/wireguard/config/peer$PEER_ID/peer$PEER_ID.conf" "/etc/wireguard/wg0.conf"
sudo wg-quick up wg0
