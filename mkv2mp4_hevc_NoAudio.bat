@ECHO OFF 
CD/D "%~dp0"

:loop
IF "%~1"=="" GOTO :STOP

ffmpeg_new -i "%~1" -vcodec copy -an "%~dpn1.mp4"
shift/1
goto :loop

:STOP
echo Done.
pause>nul