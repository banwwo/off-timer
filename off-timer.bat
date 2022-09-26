@echo off

title off-timer script (this is a shit)

echo -- Tiempo en segundos recomendado --
echo.
echo 2 horas = 7200
echo 1 hora = 3600
echo 30 min = 1800
echo 15 min = 900
echo 10 min = 600
echo 5 min = 300
echo 2 min = 120
echo 1 min = 60
echo.
set /p time="Ingresa el tiempo que debe transcurrir para apagar la PC (escribir en segundos) -> "

@REM why batch doesn't works with "shutdown" command -.-
"c:\Windows\System32\shutdown.exe" -s -t %time%
goto finish

:finish
cls
echo [1] Para cancelar el apagado
echo [2] Para salir del script
echo.
set /p finishOption="Mhh, y ahora que? -> "

if "%finishOption%"=="1" (
    "c:\Windows\System32\shutdown.exe" -a
)
if "%finishOption%"=="2" (
    exit>nul
)