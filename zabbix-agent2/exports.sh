# Zabbix server (TrueNAS) IP or DNS
export ZBX_SERVER_HOST="192.168.100.34"

# Optional: log verbosity (0..5)
export ZBX_DEBUGLEVEL="3"

# Detect the docker group GID so agent can read /var/run/docker.sock
export DOCKER_GID="$(getent group docker | awk -F: '{print $3}')"

# Use Umbrel device hostname as the agent's hostname by default
export ZBX_HOSTNAME="${DEVICE_HOSTNAME}-umbrel"
