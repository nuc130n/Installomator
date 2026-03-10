python2)
    name="Python 2"
    type="pkg"
    appNewVersion="2.7.18"
    downloadURL="https://www.python.org/ftp/python/2.7.18/python-2.7.18-macosx10.9.pkg"
    packageID="org.python.Python.PythonFramework-2.7"
    expectedTeamID="BMM5U3QVKW"
    blockingProcesses=( "IDLE" "Python Launcher" )
    versionKey="CFBundleVersion"
    appCustomVersion() {
        if [ -d "/Library/Frameworks/Python.framework/Versions/2.7/Resources/Python.app/" ]; then
            /usr/bin/defaults read "/Library/Frameworks/Python.framework/Versions/2.7/Resources/Python.app/Contents/Info" CFBundleVersion
        fi
    }
    ;;
