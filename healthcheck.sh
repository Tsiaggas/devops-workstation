LIMIT=80

USED=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$USED" -ge "$LIMIT" ]; then
  echo "❌ DISK: ${USED}% (όριο ${LIMIT}%)"
  exit 1
else
  echo "✅ DISK: ${USED}%"
  exit 0
fi