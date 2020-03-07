:loop
call update.bat >> log.txt
python trimlog.py
timeout /t 300
goto :loop