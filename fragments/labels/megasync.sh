megasync)
    name="MEGASync"
    type="dmg"
    if [[ "$(uname -m)" == "arm64" ]]; then
        downloadURL="https://mega.nz/MEGAsyncSetupArm64.dmg"
    else
        downloadURL="https://mega.nz/MEGAsyncSetup.dmg"
    fi
    archiveName="MEGAsyncSetup.dmg"
    appNewVersion=$(defaults read "$mountedVolume/MEGASync.app/Contents/Info" CFBundleShortVersionString 2>/dev/null)
    expectedTeamID="T9RH74Y7L9"
    blockingProcesses=( "MEGASync" )
    ;;
