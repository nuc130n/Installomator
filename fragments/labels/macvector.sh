macvector)
    name="MacVector"
    type="dmg"
    downloadURL=$(curl -fsL "https://macvector.org/support/downloads/installers-and-updaters/" | grep -oE 'https://[^"]*MacVector[^"]*\.dmg' | head -1)
    appCustomDirectory="MacVector"
    appNewName="MacVector"
    expectedTeamID="BK85R8X44N"
    ;;
