flowjo)
    name="FlowJo"
    type="dmg"
    if [[ "$(uname -m)" == "arm64" ]]; then
      # Apple Silicon
      downloadURL="https://downloads.bdaccessportal.com/v11/mac/arm64/FlowJo-11.1.0-arm64.dmg"
    else
      # Intel
      downloadURL="https://downloads.bdaccessportal.com/v11/mac/x64/FlowJo-11.1.0-x64.dmg"
    fi
    appNewVersion="$(echo "${downloadURL}" | sed -E 's/.*FlowJo-([0-9]+(\.[0-9]+)*).*/\1/')"
    expectedTeamID="C79HU5AD9V"
    #appName="FlowJo\ 11"
    #appPath="/Volumes/FlowJo/FlowJo 11.app"
    ;;
