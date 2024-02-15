#!/bin/bash
set -e

source /opt/gow/bash-lib/utils.sh

# reset bluetooth adapter by restarting it
gow_log "Resetting the bluetooth adapter"
hciconfig hci0 down
hciconfig hci0 up

gow_log "Starting Bluetooth daemon"
exec bluetoothd
