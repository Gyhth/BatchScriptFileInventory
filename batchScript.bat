@echo off
setlocal enableDelayedExpansion
set starting_directory=D:\Torrents\
set output_file=D:\Log.txt
set total_movies=0
set total_audio=0
cd %starting_directory%
echo ----------Movies---------->>%output_file%
	FOR /f "usebackq delims=?" %%G in (`dir /a-d /b /s *.mkv *.mp4 *.avi`) DO (
        	echo %%G>>%output_file%
		echo.
                set /a total_movies=!total_movies!+1
	)
echo Total Movies Files: !total_movies!>>%output_file%
cd %starting_directory%
echo. >> %output_file%
echo. >> %output_file%
echo ----------Audio---------->>%output_file%
	FOR /f "usebackq delims=?" %%G in (`dir /a-d /b /s *.mp3 *.oog *.wav`) DO (
        	echo %%G>>%output_file%
		echo.
		set /a total_audio=!total_audio!+1
)
echo Total Audio Files: !total_audio!>>%output_file%
echo.>>%output_file%
echo.>>%output_file%
echo ----------Summary---------->>%output_file%
echo Total Movies Files: !total_movies!>>%output_file%
echo Total Audio Files: !total_audio!>>%output_file%

pause