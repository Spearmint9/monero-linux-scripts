## download-and-verify-latest.bash

This script downloads and verifies the hash of the latest version, if successful, the download is then extracted at the specified destination. 

The following variables must be modified in order to suit your needs:

>pathTempDir="/tmp/monero/"

This is the temporary directory for the download.


>pathExtractTo="/home/usr/Monero/"

This is the directory where the extracted contents will go.


>urlMoneroDownloads="https://downloads.getmonero.org/gui/linux64"

This URL comes from the [Downloads section](https://www.getmonero.org/downloads/)
