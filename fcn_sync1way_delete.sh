#!/bin/bash

# sudo bash fcn_sync1way_delete.sh "/path/to/source" "/path/to/destination"

sudo apt install -y rsync

DIR1=${1%/}/
DIR2=${2%/}/

sudo mkdir -p "${DIR1}"
sudo mkdir -p "${DIR2}"

sudo chmod -R 777 "${DIR1}"
sudo chmod -R 777 "${DIR2}"

sudo rsync \
--partial \
--append-verify \
--relative \
--progress \
--archive \
--delete-after \
"${DIR1}./" \
"${DIR2}"
