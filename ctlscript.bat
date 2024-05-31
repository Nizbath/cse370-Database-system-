@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist F:\370\hypersonic\scripts\ctl.bat (start /MIN /B F:\370\server\hsql-sample-database\scripts\ctl.bat START)
if exist F:\370\ingres\scripts\ctl.bat (start /MIN /B F:\370\ingres\scripts\ctl.bat START)
if exist F:\370\mysql\scripts\ctl.bat (start /MIN /B F:\370\mysql\scripts\ctl.bat START)
if exist F:\370\postgresql\scripts\ctl.bat (start /MIN /B F:\370\postgresql\scripts\ctl.bat START)
if exist F:\370\apache\scripts\ctl.bat (start /MIN /B F:\370\apache\scripts\ctl.bat START)
if exist F:\370\openoffice\scripts\ctl.bat (start /MIN /B F:\370\openoffice\scripts\ctl.bat START)
if exist F:\370\apache-tomcat\scripts\ctl.bat (start /MIN /B F:\370\apache-tomcat\scripts\ctl.bat START)
if exist F:\370\resin\scripts\ctl.bat (start /MIN /B F:\370\resin\scripts\ctl.bat START)
if exist F:\370\jetty\scripts\ctl.bat (start /MIN /B F:\370\jetty\scripts\ctl.bat START)
if exist F:\370\subversion\scripts\ctl.bat (start /MIN /B F:\370\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist F:\370\lucene\scripts\ctl.bat (start /MIN /B F:\370\lucene\scripts\ctl.bat START)
if exist F:\370\third_application\scripts\ctl.bat (start /MIN /B F:\370\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist F:\370\third_application\scripts\ctl.bat (start /MIN /B F:\370\third_application\scripts\ctl.bat STOP)
if exist F:\370\lucene\scripts\ctl.bat (start /MIN /B F:\370\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist F:\370\subversion\scripts\ctl.bat (start /MIN /B F:\370\subversion\scripts\ctl.bat STOP)
if exist F:\370\jetty\scripts\ctl.bat (start /MIN /B F:\370\jetty\scripts\ctl.bat STOP)
if exist F:\370\hypersonic\scripts\ctl.bat (start /MIN /B F:\370\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist F:\370\resin\scripts\ctl.bat (start /MIN /B F:\370\resin\scripts\ctl.bat STOP)
if exist F:\370\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT F:\370\apache-tomcat\scripts\ctl.bat STOP)
if exist F:\370\openoffice\scripts\ctl.bat (start /MIN /B F:\370\openoffice\scripts\ctl.bat STOP)
if exist F:\370\apache\scripts\ctl.bat (start /MIN /B F:\370\apache\scripts\ctl.bat STOP)
if exist F:\370\ingres\scripts\ctl.bat (start /MIN /B F:\370\ingres\scripts\ctl.bat STOP)
if exist F:\370\mysql\scripts\ctl.bat (start /MIN /B F:\370\mysql\scripts\ctl.bat STOP)
if exist F:\370\postgresql\scripts\ctl.bat (start /MIN /B F:\370\postgresql\scripts\ctl.bat STOP)

:end

