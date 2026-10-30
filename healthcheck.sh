#!/bin/bash

set -euo pipefail



LIMIT=80



check_disk() {

  local used

  used=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

  if [ "$used" -ge "$LIMIT" ]; then

    echo "❌ DISK: ${used}% (όριο ${LIMIT}%)"

    return 1

  fi

  echo "✅ DISK: ${used}%"

}



check_disk
