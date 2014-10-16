#! /usr/bin/env bash
installFile(){
	# installFile $1-> $2
    PWD=`pwd`
	echo installFile $PWD/$1 $2
	rm -rf $2
	ln -s $PWD/$1 $2
}

installFile2Dir(){
    PWD=`pwd`
    name=`basename $1`
    file=$2/$name
    installFile $PWD/$1 $file
}
