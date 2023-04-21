goto start

--------------------------------------
Multifunctional calculator for different mathematical operations
with simple numbers.
--------------------------------------

:start

chcp 65001
@echo off
:menu
cls
echo Choose action:
echo 1. Sum
echo 2. Substraction
echo 3. Multiplication
echo 4. Division
echo 5. Division with remainder
echo 6. Exponentiation
echo 7. Percentage
echo 8. Final enter into console

set /p action=Choose action:

if %action%==1 goto add
if %action%==2 goto sub
if %action%==3 goto mul
if %action%==4 goto div
if %action%==5 goto remainder
if %action%==6 goto exp
if %action%==7 goto perc
if %action%==8 goto end

rem sum of two numbers
:add
set /p number1=Enter first number:
set /p number2=Enter second number:
set /a result=%number1%+%number2%
echo Re: %result%
pause
goto menu

rem substraction of two numbers
:sub
set /p number1=Enter first number:
set /p number2=Enter second number:
set /a result=%number1%-%number2%
echo Result: %result%
pause
goto menu

rem multipplication of two numbers
:mul
set /p number1=Enter first number:
set /p number2=Enter second number:
set /a result=%number1%*%number2%
echo Result: %result%
pause
goto menu

rem division of two numbers
:div
set /p number1=Enter first number:
set /p number2=Enter second number:
set /a result=%number1%/%number2%
echo Result: %result%
pause
goto menu

rem division with remainder
:remainder
set /p number1=Enter first number:
set /p number2=Enter second number:
set /a result=%number1%%%%number2%
echo Result: %result%
pause
goto menu

rem exponentiation
:exp
set /p number1=Enter first number:
set /p number2=Enter exponentiation:
set /a initial_number=%number1%
set /a counter=1

:loop
if %counter%==%number2% goto end
set /a initial_number=%initial_number%*%number1%
set /a counter+=1
goto loop

:end

echo Result: %initial_number%
pause
goto menu

rem percentage
:perc
set /p number1=Enter initial number:
set /p number2=Enter the number from which interest will be calculated:
set /a result=%number1%*100/%number2%
echo Result: %result%
pause
goto menu

rem final enter into console
:end
echo Operation completed.
pause
