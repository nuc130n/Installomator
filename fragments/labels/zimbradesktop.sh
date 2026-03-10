zimbradesktop)
    name="Zimbra Desktop"
    type="dmg"
    downloadURL=$(curl -fsL "https://www.zimbra.com/zimbra-desktop-download/" | grep -oE 'https://files\.zimbra\.com/downloads/[^"]+\.dmg' | head -1)
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*Desktop_([0-9.]+)_.*/\1/')
    expectedTeamID="ZT347VSDFT"
    ;;
