#!/bin/sh
echo "Grant privileges to paths"
chown -R mattermost:mattermost /mattermost /mattermost/config /config.json.save /mattermost/data /mattermost/logs /mattermost/plugins /mattermost/client/plugins

echo "Run main script (start app)"
exec su - mattermost /mm-entrypoint.sh "$@"
