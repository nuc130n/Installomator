fiji)
    name="Fiji"
    type="zip"

    # Architecture-aware download URL and corresponding hash URL
    arch=$(uname -m)
    if [ "$arch" = "arm64" ]; then
        downloadURL="https://downloads.imagej.net/fiji/latest/fiji-latest-macos-arm64-jdk.zip"
        hashURL="https://downloads.imagej.net/fiji/latest/fiji-latest-macos-arm64-jdk.zip.sha256"
    else
        downloadURL="https://downloads.imagej.net/fiji/latest/fiji-latest-macos64-jdk.zip"
        hashURL="https://downloads.imagej.net/fiji/latest/fiji-latest-macos64-jdk.zip.sha256"
    fi

    # appName="Fiji.app"
    targetDir="/Applications"
    blockingProcesses=( "Fiji.app" )
    expectedTeamID="XY6F975TAG"

    # Use SHA256 hash from the published file as the appNewVersion
    echo "Fetching remote SHA256 hash from: $hashURL"
    appNewVersion=$(curl -fsSL "$hashURL" | awk '{print $1}')

    # Check if SHA256 hash is retrieved successfully
    if [[ -z "$appNewVersion" ]]; then
        echo "❌ Failed to fetch SHA256 hash from $hashURL"
        INSTALL="force"
    else
        echo "✅ SHA256 hash (used as version): $appNewVersion"
    fi

    # Get installed version from the previously stored hash
    versionKeyFile="/Library/Application Support/Installomator/Fiji-latest.hash"
    mkdir -p "$(dirname "$versionKeyFile")"
    if [[ -f "$versionKeyFile" ]]; then
        installedVersion=$(cat "$versionKeyFile")
        echo "🔎 Installed version hash: $installedVersion"
    else
        installedVersion=""
    fi

    # If hashes differ, or no previous install exists, proceed with installation
    if [[ "$appNewVersion" != "$installedVersion" ]]; then
        echo "⬆️ New version detected (or no previous version). Proceeding with install."
        INSTALL="force"
    else
        echo "✅ Fiji is up to date. No install needed."
        exit 0
    fi

    # After successful install, store the new SHA256 hash for future comparison
    postInstallAction+=(
        'echo "'"$appNewVersion"'" > "'"$versionKeyFile"'"'
    )

    ;;
