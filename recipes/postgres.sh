#!/usr/bin/env bash

if [[ -f /etc/apt/sources.list.d/postgres.list ]]; then
  echo "PPA already added. Skipping ..."
else
  echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/postgres.list
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
  sudo apt-get update -y
  sudo apt-get install postgresql-9.6 -y
fi

