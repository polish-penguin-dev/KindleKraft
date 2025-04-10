#!/bin/sh
#KindleKraft, Download kTerm - From XTMCSH

temp_dl="/tmp/kterm-kindle.zip"
extensions_fl="/mnt/us/extensions/"

kterm_url="$(curl -s https://api.github.com/repos/bfabiszewski/kterm/releases/latest \
  | grep browser_download_url \
  | grep kterm \
  | grep -v .zip.sig \
  | head -1 \
  | cut -d '"' -f 4)"

echo "Downloading kTerm From $kterm_url!"
if curl -L $kterm_url --output $temp_dl ; then
	#Success
	echo "Extracting To $extensions_fl..."
	unzip -q -o $temp_dl -d $extensions_fl
	rm $temp_dl
	echo "kTerm Installed Successfully!"
else
	#Fail
	echo "Failed To Download kTerm From $kterm_url! Manual Install?"
fi;
echo "Done!"


