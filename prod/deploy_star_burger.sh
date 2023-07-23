# #!/bin/bash
cd ..
set -Eeuo pipefail
git pull
docker compose up -d
curl \
-H "X-Rollbar-Access-Token: $ROLLBAR_SERVER_TOKEN" \
-H "Content-Type: application/json" \
-X POST 'https://api.rollbar.com/api/1/deploy' \
-d '{"environment": "home_pk", "revision": "'"$REVISION"'", "rollbar_name": "Star-burger", "local_username": "'"$COMMIT_AUTHOR"'", "comment": "'"$COMMIT_COMMENT"'", "status": "succeeded"}'
echo "Deploy completed successfully!"
