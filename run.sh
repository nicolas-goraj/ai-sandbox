#!/bin/bash

podman run -it \
  --rm \
  --name ai-sandbox \
  --memory=8g \
  --cpus=4 \
  --pids-limit=200 \
  --cap-drop=ALL \
  --security-opt=no-new-privileges \
  --env-file .env \
  -v $(pwd)/workspace:/workspace:Z \
  localhost/ai-sandbox
