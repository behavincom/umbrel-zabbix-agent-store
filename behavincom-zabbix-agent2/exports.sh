# === EDIT THESE IF NEEDED ===
# Your Zabbix server (TrueNAS) IP or DNS:
export ZBX_SERVER_HOST="192.168.100.34"
# Optional: if you prefer DNS, uncomment the next line and comment the one above
# export ZBX_SERVER_HOST="zabbix.goldengate.lan"

# >>> choose ONE that matches your Zabbix server <<<
export ZBX_IMAGE_TAG="alpine-7.0-latest"

# Agent hostname as it will appear in Zabbix (default: device-hostname + "-umbrel")
export ZBX_HOSTNAME="${DEVICE_HOSTNAME}-umbrel"

# Log verbosity (0..5). 3 is a good default.
export ZBX_DEBUGLEVEL="3"

# Detect the docker group's numeric GID so the container can access /var/run/docker.sock
# (Umbrel ships with Docker; this should return a number like 998/999/etc.)
export DOCKER_GID="$(getent group docker | awk -F: '{print $3}')"
