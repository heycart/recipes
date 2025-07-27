#!/usr/bin/env bash

echo "This script is deprecated and will be removed in the next major release. Please use vendor/bin/heycart-deployment-helper fastly:snippet:deploy directly."

sleep 5

php vendor/bin/heycart-deployment-helper fastly:snippet:deploy
