#! /usr/bin/env bash
PREFIX=~
PWD=`pwd`

installFile(){
	# installFile $1-> $2
	echo installFile $1
	rm $2
	ln -s $1 $2
}

installFile $PWD/dircolors $PREFIX/.dircolors
installFile $PWD/ackrc $PREFIX/.ackrc
installFile $PWD/mostrc $PREFIX/.mostrc

echo "OK"
