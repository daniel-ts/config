#!/bin/sh

msg() {
cat <<EOF
$(nmcli)
EOF
}

dunstify "$(msg)"
