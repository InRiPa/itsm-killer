#!/bin/bash

set -e

is_valid_ip() {
  local ip="$1"
  # Check if IP address is valid IPv4
  if [[ "$ip" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    IFS='.' read -r i1 i2 i3 i4 <<<"$ip"
    # Check if each octet is between 0 and 255
    if ((i1 >= 0 && i1 <= 255)) && ((i2 >= 0 && i2 <= 255)) && ((i3 >= 0 && i3 <= 255)) && ((i4 >= 0 && i4 <= 255)); then
      return 0 # Valid IP
    fi
  fi
  return 1 # Invalid IP
}

if [ -z "$DPIP" ]; then
  exit 1 # variable is not set
fi

if ! is_valid_ip "$DPIP"; then
  exit 2 # not a valid ip address
fi
