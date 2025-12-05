forklift)
    name="ForkLift"
    type="zip"
    downloadURL="https://download.binarynights.com/ForkLift/ForkLift.zip"
    appPathDetected="$(ls "$archivePath" | grep -i "forklift" | head -n 1)"
    appPathDetected="$archivePath/$appPathDetected"
    appNewVersion=$(defaults read "$appPathDetected/Contents/Info" CFBundleShortVersionString 2>/dev/null)
    if [[ -z "$appNewVersion" ]]; then
        appNewVersion=$(defaults read "$appPathDetected/Contents/Info" CFBundleVersion 2>/dev/null)
    fi
    expectedTeamID="J3CP9BBBN6"
    blockingProcesses=( "ForkLift" )
    ;;
