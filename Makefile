
#/////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////

# High level rules

all : 
	cd SAX; ${MAKE}
	cd Utils; ${MAKE}
	cd XML; ${MAKE}
	cd examples; ${MAKE}

# Cleaning up

clean :
	cd SAX; ${MAKE} clean
	cd Utils; ${MAKE} clean
	cd XML; ${MAKE} clean
	cd examples; ${MAKE} clean
	rm -f arabica.tar.gz
	rm -f arabica.zip

dist: tar zip


tar: clean
	cd ..; tar zcvf arabica/arabica.tar.gz --exclude CVS arabica

zip: clean
	cd ..;  zip -rv9 arabica/arabica.zip arabica -x arabica/arabica.tar.gz -x \*/CVS/\*


#/////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////

# End of File
