#!/bin/bash
if [ $# == "3" ];then
	DAT1=$1
	DAT2=$2
	PDFNAME=$3
	gnuplot -e 'set terminal pdf;dat1="'$DAT1'";t1="'${DAT1%%.*}'";dat2="'$DAT2'";t2="'${DAT2%%.*}'";set output "'$PDFNAME'"' plot2.pty
	echo "Created 2 plots and outputed them as a pdfs"
	exit
fi;
if [ $# == "5" ];then
	DAT1=$1
	DAT2=$2
	DAT3=$3
	DAT4=$4
	PDFNAME=$5
	gnuplot -e 'set terminal pdf;dat1="'$DAT1'";t1="'${DAT1%%.*}'";dat2="'$DAT2'";t2="'${DAT2%%.*}'";dat3="'$DAT3'";t3="'${DAT3%%.*}'";dat4="'$DAT4'";t4="'${DAT4%%.*}'";set output "'$PDFNAME'"' plot4.pty
	echo "Created 4 plots and outputed them as a pdfs"
	exit
fi;

echo "Wrong number of inputs... give 3 or 4! (2/4 datfiles and one pdf-name)"




