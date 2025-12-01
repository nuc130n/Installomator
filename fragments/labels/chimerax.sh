chimerax)
    name="ChimeraX"
    type="dmg"
    appNewVersion="1.10.1"
    fileParam="${appNewVersion}/mac_universal/ChimeraX-${appNewVersion}.dmg"
    downloadURL="https://www.cgl.ucsf.edu/chimerax/cgi-bin/secure/chimerax-get.py"
    curlOptions=( --data "file=${fileParam}" --data "choice=Accept" )
    appName="ChimeraX-${appNewVersion}.app"
    expectedTeamID="LWV8X224YF"
    blockingProcess=( "ChimeraX" )
    ;;
