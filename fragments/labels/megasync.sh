megasync)
    name="MEGASync"
    type="dmg"

    # Architecture-specific URLs
    if [[ "$(uname -m)" == "arm64" ]]; then
        downloadURL="https://mega.nz/MEGAsyncSetupArm64.dmg"
    else
        downloadURL="https://mega.nz/MEGAsyncSetup.dmg"
    fi

    # Stable filename regardless of vendor URL behavior
    archiveName="MEGAsyncSetup.dmg"

    # Extract version directly from the mounted app (Installomator copies this via `appPath`)
    appNewVersion=$(defaults read "$(appPath "/Volumes/Install MEGA/MEGASync.app")/Contents/Info" CFBundleShortVersionString 2>/dev/null)

    expectedTeamID="T9RH74Y7L9"
    blockingProcesses=( "MEGASync" )
    ;;
