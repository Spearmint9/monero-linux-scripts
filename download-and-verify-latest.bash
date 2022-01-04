#!/bin/bash
pathTempDir="/tmp/monero/"
pathExtractTo="/home/usr/Monero/"
urlMoneroDownloads="https://downloads.getmonero.org/gui/linux64"


function echoOk () {
    echo -e "\e[1;32m$1\e[0m"
}
function echoErr () {
    echo -e "\e[1;31m$1\e[0m"
}


clear
rm -r $pathTempDir
mkdir -p $pathTempDir
mkdir -p $pathExtractTo

wget \
    --quiet \
    --content-disposition \
    --directory-prefix=$pathTempDir \
    --show-progress \
     $urlMoneroDownloads

fileName=$(ls $pathTempDir)
filePath=$pathTempDir$fileName
fileHash=$(shasum -a 256 $filePath | awk '{ print $1 }')
fileHash="$fileHash  $fileName"

hashes=$(wget --show-progress --quiet -O - https://www.getmonero.org/downloads/hashes.txt)

if [[ $hashes == *"$fileHash"* ]]; then
    echoOk "Hash found in hashes, extracting"
    tar -xf $filePath --directory $pathExtractTo --checkpoint=.100
    echoOk "Done"
else
    echoErr "Invalid hash, not found in hashes"
fi
