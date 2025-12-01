chimerax)
    name="ChimeraX"
    type="dmg"
    downloadPage="https://www.cgl.ucsf.edu/chimerax/download.html"
    appNewVersion=$(curl -sL "$downloadPage" | grep -oE "ChimeraX-[0-9]+\.[0-9]+(\.[0-9]+)?\.dmg" | sed -E 's/ChimeraX-([0-9]+\.[0-9]+(\.[0-9]+)?)\.dmg/\1/' | sort -V | tail -1)
    fileParam="${appNewVersion}/mac_universal/ChimeraX-${appNewVersion}.dmg"
    downloadURL="https://www.cgl.ucsf.edu/chimerax/cgi-bin/secure/chimerax-get.py?file=${fileParam}"
    curlOptions=( --data "accept=Accept" )
    appName="ChimeraX-${appNewVersion}.app"
    expectedTeamID="LWV8X224YF"
    blockingProcesses=( ChimeraX )
    ;;
