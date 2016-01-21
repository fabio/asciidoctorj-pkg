@echo off
rem asciidoctorj wrapper

SET CP="%~dp0"\..\lib\jruby-complete-9.0.4.0.jar
SET CP=%CP%;"%~dp0"\..\lib\asciidoctorj-1.5.4.jar
SET CP=%CP%;"%~dp0"\..\lib\asciidoctorj-pdf-1.5.0-alpha.11.jar
SET CP=%CP%;"%~dp0"\..\lib\jcommander-1.48.jar
SET CP=%CP%;"%~dp0"\..\lib\slf4j-api-1.7.13.jar
SET CP=%CP%;"%~dp0"\..\lib\slf4j-simple-1.7.13.jar

java -cp %CP% org.asciidoctor.cli.AsciidoctorInvoker %*
