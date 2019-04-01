#!/bin/bash

set -ex
set -o pipefail

go_to_build_dir() {
	if [ ! -z $SUBDIR ]; then
		cd $SUBDIR
	fi
}

check_if_setup_file_exists() {
	if [ ! -f setup.py ]; then
		echo "setup.py must exist in the directory that is being packaged and published."
		exit 1
	fi
}

check_if_meta_yaml_file_exists() {
    if [ ! -f meta.yaml ]; then
		echo "meta.yaml must exist in the directory that is being packaged and published."
		exit 1
	fi
}

upload_package(){
    conda config --set anaconda_upload yes
    anaconda login --username $ANACONDA_USERNAME --password $ANACONDA_PASSWORD
    conda build .
    anaconda logout
}

go_to_build_dir
check_if_setup_file_exists
check_if_meta_yaml_file_exists
upload_package
