# -b -1 means the previous boot:
journalctl -b -1 |grep -Ei 'user manager|stop job|timed out|timeout'

# Show previous boot info for  user 1000 (m)
journalctl -b -1 -u user@1000.service

# info about current boot:
systemctl --user --failed
systemctl --user list-units --type=service
