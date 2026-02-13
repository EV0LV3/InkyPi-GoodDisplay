#!/bin/bash
FILE="install/install.sh"

# Original URLs
OLD_DRIVER='https://raw.githubusercontent.com/waveshareteam/e-Paper/master/RaspberryPi_JetsonNano/python/lib/waveshare_epd/$WS_TYPE.py'
OLD_CONFIG='https://raw.githubusercontent.com/waveshareteam/e-Paper/refs/heads/master/RaspberryPi_JetsonNano/python/lib/waveshare_epd/epdconfig.py'

# New URLs
NEW_DRIVER='https://raw.githubusercontent.com/EV0LV3/InkyPi-GoodDisplay/refs/heads/main/RaspberryPi_JetsonNano/python/lib/waveshare_epd/$WS_TYPE.py'
NEW_CONFIG='https://raw.githubusercontent.com/EV0LV3/InkyPi-GoodDisplay/refs/heads/main/RaspberryPi_JetsonNano/python/lib/waveshare_epd/epdconfig.py'

case "$1" in
  apply)
    echo "Applying new URLs..."
    sed -i "s|$OLD_DRIVER|$NEW_DRIVER|g" "$FILE"
    sed -i "s|$OLD_CONFIG|$NEW_CONFIG|g" "$FILE"
    echo "Done."
    ;;
    
  revert)
    echo "Reverting to original URLs..."
    sed -i "s|$NEW_DRIVER|$OLD_DRIVER|g" "$FILE"
    sed -i "s|$NEW_CONFIG|$OLD_CONFIG|g" "$FILE"
    echo "Done."
    ;;
    
  *)
    echo "Usage: $0 {apply|revert}"
    exit 1
    ;;
esac
