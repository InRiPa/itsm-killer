set -e

grep "$(cat /itsm/user.txt)" /tmp/appuser.txt
grep "$(cat /itsm/password.txt)" /tmp/apppass.txt
