#!/bin/sh

function gw {
	x=`pwd`; 
	while [ "$x" != "/" ] ; 
	do 
		x=`dirname "$x"`; 
		if [ `find "$x" -maxdepth 1 -name gradlew` ]; 
		then 
			echo "Executing '$x/gradlew $@'"
			$x/gradlew $@
			
			break; 
		fi; 
	done
}

function lrless {
	catalinaOutPath=''
	
	if [ -d "bundles" ] 
	then
		catalinaOutPath=.
	else
		x=`pwd`; 
		while [ "$x" != "/" ] ; 
		do 
			x=`dirname "$x"`; 
			if [ `find "$x" -maxdepth 1 -name bundles` ]; 
			then 
				catalinaOutPath=$x
				break; 
			fi; 
		done
	fi
	if [ -z "$catalinaOutPath" ]
	then
		echo "\$catalinaOutPath is empty"
	else
		less $catalinaOutPath/bundles/tomcat-*/logs/catalina.out
	fi
}