#!/usr/bin/env bash

REPOS="
    builder-base
    android-kitkat-builder
    "

USERID=$(id -u $USER)
GROUPID=$(id -g $USER)
GROUPNAME=$(id -g -n $USER)

for repo in ${REPOS}; do
    cat > ${repo}/user_setup.sh <<EOF
#!/bin/sh

groupadd -g ${GROUPID} ${GROUPNAME}
useradd -m -G sudo -u ${USERID} -g ${GROUPID} ${USER}
echo '%sudo ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/sudo_nopasswd
chmod 0440 /etc/sudoers.d/sudo_nopasswd
EOF
    docker build -t ${repo} ${repo}
done
