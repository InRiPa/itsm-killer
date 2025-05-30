#!/bin/sh
set -eu

# is_valid_ip() {
#   ip=$1
#
#   # Quick sanity: must be four dot‑separated fields
#   case $ip in
#   *.*.*.*) ;;
#   *) return 1 ;;
#   esac
#
#   # Split on dots into positional parameters
#   #   e.g. "127.0.0.1" → 127 0 0 1
#   # `tr` is POSIX; `set --` reassigns $1…$4
#   set -- $(printf '%s\n' "$ip" | tr '.' ' ')
#
#   i1=$1
#   i2=$2
#   i3=$3
#   i4=$4
#
#   for octet in "$i1" "$i2" "$i3" "$i4"; do
#     # Must be all digits
#     case $octet in
#     '' | *[!0-9]*)
#       return 1
#       ;;
#     esac
#
#     # Numeric range check: 0 ≤ octet ≤ 255
#     # POSIX `test` supports -ge and -le
#     if [ "$octet" -lt 0 ] 2>/dev/null || [ "$octet" -gt 255 ] 2>/dev/null; then
#       return 1
#     fi
#   done
#
#   return 0
# }
#
# if [ -z "${DPIP+x}" ] || [ -z "$DPIP" ]; then
#   echo "DPIP must be set to an IPv4 address" >&2
#   exit 1
# fi

# if is_valid_ip "$DPIP"; then
#   exit 0
# else
#   exit 2
# fi
