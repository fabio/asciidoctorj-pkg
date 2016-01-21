#!/bin/sh

#
# asciidoctorj wrapper
#

BASEDIR=$(dirname $0)
CP="$BASEDIR"/../lib/jruby-complete-9.0.4.0.jar
CP="$CP":"$BASEDIR"/../lib/asciidoctorj-1.5.4.jar
CP="$CP":"$BASEDIR"/../lib/asciidoctorj-pdf-1.5.0-alpha.11.jar
CP="$CP":"$BASEDIR"/../lib/jcommander-1.48.jar
CP="$CP":"$BASEDIR"/../lib/slf4j-api-1.7.13.jar
CP="$CP":"$BASEDIR"/../lib/slf4j-simple-1.7.13.jar

java -cp "$CP" org.asciidoctor.cli.AsciidoctorInvoker $*
