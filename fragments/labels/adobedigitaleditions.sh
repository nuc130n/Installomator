adobedigitaleditions)
    name="Adobe Digital Editions"
    type="pkgInDmg"
    downloadURL=$(curl -fs https://www.adobe.com/solutions/ebook/digital-editions/download.html | grep -o 'https://adedownload\.adobe\.com/pub/adobe/digitaleditions/[^"]*\.dmg' | head -n 1 | sed 's/#.*//')
    appNewVersion=$(curl -fs https://www.adobe.com/solutions/ebook/digital-editions/download.html | grep -o 'Adobe Digital Editions.*Installers' | awk -F' ' '{ print $4 }')
    expectedTeamID="JQ525L2MZD"
    ;;
