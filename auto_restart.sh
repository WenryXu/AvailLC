#!/bin/bash

cat > /etc/systemd/system/avail.service <<EOF
[Unit]
Description=Avail Light Node
Wants=network-online.target
After=network.target
[Service]
User=root
Restart=on-failure
RestartSec=5
ExecStart=/root/avail-light-linux-amd64 --network goldberg --identity /root/identity.toml
[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable avail.service
systemctl start avail.service
systemctl status avail.service
