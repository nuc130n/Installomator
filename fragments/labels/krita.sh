krita)
    # credit: Cedric GAIN (@nuc130n)
    name="krita"
    type="dmg"
    # Detect latest version from KDE stable directory listing
    appNewVersion=$(curl -fs "https://download.kde.org/stable/krita/" | grep -Eo '>[0-9]+\.[0-9]+\.[0-9]+/' | tr -d '>/ ' | sort -V | tail -1)
    # Build URL to the signed DMG
    downloadURL="https://download.kde.org/stable/krita/${appNewVersion}/krita-${appNewVersion}_signed.dmg"
    expectedTeamID="5433B4KXM8"
    ;;
