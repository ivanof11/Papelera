#!/bin/bash

variable=$(tail -1 $1)
variable2=$(tail -1 $2)

if [ $1 = "-r" ]
then 	if [ -f $2 ]
	then mv $2 $variable2
	else echo El fichero no existe
	fi
fi
if [ $2 = "-r" ]
then if [ -f $1 ]
	then mv $1 $variable
	else echo El fichero no exite
	fi
fi
if [ $2 = "" ]
then if [ -f $1 ]
	echo `pwd` >> $1
	mv $1 Papelera
	echo has movido el archivo a la papelera
	else echo el fichero no existe
	fi
fi

