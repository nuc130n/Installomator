mzmine)
    # credit: Cedric GAIN (@nuc130n)
    name="MZmine"
    type="dmg"
    downloadURL="$(curl -sL https://github.com/mzmine/mzmine/releases/latest | grep -Eo 'https://github.com/mzmine/mzmine/releases/download/[^\"]*macOS_installer-[0-9.]*\.dmg' | head -n1)"
    appNewVersion="$(basename "$downloadURL" | sed -E 's/.*macOS_installer-([0-9.]+)\.dmg/\1/')"
    expectedTeamID="25Z887Z794"
    blockingProcesses=( mzmine )
    ;;
