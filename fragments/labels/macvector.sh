macvector)
    name="MacVector"
    type="dmg"
    downloadURL="$(curl -s https://macvector.net/ | grep -Eo 'MacVector[0-9]+\.[0-9]+\.[0-9]+\([0-9]+\)\.dmg' | head -n 1 | sed 's|^|https://macvector.net/|')"
    appName="MacVector.app"
    expectedTeamID=""
    ;;
