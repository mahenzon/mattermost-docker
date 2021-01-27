#!/bin/sh
chown -R mattermost:mattermost /mattermost /mattermost/config /config.json.save /mattermost/data /mattermost/logs /mattermost/plugins /mattermost/client/plugins
exec sudo -u mattermost /mm-entrypoint.sh
