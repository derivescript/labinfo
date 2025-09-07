#!/bin/sh

# Define the file name
output_file="qgis.sources"

# Use a here document to write multiple lines to the file
cat << EOF > "$output_file"
Types: deb deb-src
URIs: https://qgis.org/debian
Suites: stable
Architectures: amd64
Components: main
Signed-By: /etc/apt/keyrings/qgis-archive-keyring.gpg

EOF

#Check file exists

if [ -e $output_file ]
then
    echo "Moving file"
    echo "Done"
    echo "Doing apt update"
    #Do the update
	sudo apt update

	#Do the install
	sudo apt install qgis qgis-plugin-grass
else
    echo "nok"
fi
