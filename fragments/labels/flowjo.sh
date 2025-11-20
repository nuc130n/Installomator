flowjo)
    name="FlowJo"
    type="dmg"
    if [[ "$(uname -m)" == "arm64" ]]; then
      # Apple Silicon
      downloadURL="https://flowjo.com/flowjo/download/FlowJo-v11-macOS-AppleSilicon.dmg"
    else
      # Intel
      downloadURL="https://flowjo.com/flowjo/download/FlowJo-v11-macOS-Intel.dmg"
    fi
    appNewVersion=$(echo "${downloadURL}" | grep -o -E "v11[0-9\.]*" | sed 's/v//')
    expectedTeamID="C79HU5AD9V"
    ;;
