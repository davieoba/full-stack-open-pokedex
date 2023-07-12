#!/bin/bash

echo "Hello from shell script"

npm install curl

# make GET request to '/health' endpoint
# response=$(curl -s http://localhost:5000/health)

# if["$response" == "ok"];then
#   echo "Health check passed: $response"
#   exit 0
# else
#   echo "Health check failed: $response"
#   exit 1 # exit status 1 means that the script "fails"

#!/bin/bash

response=$(curl -s -o /dev/null -w "%{http_code}" https://your-render-service-url/health)
if [ "$response" -ne 200 ]; then
  curl -X POST \
    -H "Authorization: Bearer $RENDER_TOKEN" \
    -H "Content-Type: application/json" \
    -d '{
      "branch": "main",
      "commit": "'"$GITHUB_SHA"'",
      "overrides": {
        "env": {
          "ROLLBACK": "true"
        }
      }
    }' \
    https://api.render.com/v1/services/<your-render-service-id>/deploys
fi
