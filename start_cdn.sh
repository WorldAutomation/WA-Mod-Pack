#!/bin/bash
# CDN Everything Needed to CDN WorldAutomation.Net :D
# Otherwise, just make the WA-Mod-Pack folder available, and provide that root as the CDN URL for distribution.
cd "$(dirname "$0")"
if ! screen -list | grep -q "cdn"; then
        screen -dmS cdn ./cdn.sh
fi
