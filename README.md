## download-and-verify-latest

This script downloads and verifies the hash of the latest version, if successful, the download is then extracted at the specified destination. 

The following variables must be modified in order to suit your needs:

>pathTempDir="/tmp/monero/"

This is the temporary directory for the download.


>pathExtractTo="/home/usr/Monero/"

This is the directory where the extracted contents will go.


>urlMoneroDownloads="https://downloads.getmonero.org/gui/linux64"

This URL comes from the [Downloads section](https://www.getmonero.org/downloads/)


## run-node

This script requires the execution of the above script with the following parameters: 

>urlMoneroDownloads="https://downloads.getmonero.org/cli/linux64"

You can also modify the path variables to match your environment, mainly: 

>pathBase="/home/usr/Monero"

This variable should NOT end with forward slash [ / ]


## Donation

If you find this useful, consider donating

XMR: 893MZq68h5hjHDs6FKtE9EPQeLZSc2YMHYZz9NVeQ8yKG4RWQ3PtXd93ZScfUKw7mAGxnaErPbzhWQBfYEBfZqhnSBNCZUx  
