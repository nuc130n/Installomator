chimerax)
    name="ChimeraX"
    type="dmg"
    jsonURL="https://www.rbvi.ucsf.edu/chimerax/data/release-info/enabled.json"
    dmgCandidates=$(curl -sfL "$jsonURL" | grep -oE 'ChimeraX-[0-9]+\.[0-9]+(\.[0-9]+)?\.dmg' | sort -uV)
    latest=$(echo "$dmgCandidates" | sed -E 's/ChimeraX-([0-9]+\.[0-9]+(\.[0-9]+)?)\.dmg/\1/' | sort -V | tail -1)
    if [ -z "$latest" ]; then appNewVersion="1.10.1"; else appNewVersion="$latest"; fi
    dmgName="ChimeraX-${appNewVersion}.dmg"
    fileParam="${appNewVersion}/mac_universal/${dmgName}"
    downloadURL="https://www.cgl.ucsf.edu/chimerax/cgi-bin/secure/chimerax-get.py"
    curlOptions=( --location --data "file=${fileParam}" --data "choice=Accept" )
    appName="ChimeraX-${appNewVersion}.app"
    expectedTeamID="LWV8X224YF"
    blockingProcess=( "ChimeraX" )
    ;;
