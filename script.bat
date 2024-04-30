@echo off
cls
:menu
cls
color 09

date /t
echo.

echo Computador: %computername%        Usuario: %username%
echo.
echo Script desenvolvido por Joao Victor, Ricardo Assuncao e Vitor Souza
echo.
                   
echo            MENU TAREFAS
echo.
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Criar pasta                   *
echo * 3. Escanear Disco Local          *
echo * 4. Word                          *
echo * 5. Calculadora                   * 
echo * 6. Deletar pasta                 * 
echo * 7. Hackear a nasa                * 
echo * 8. Travar o CMD                  *
echo * 9. Sair                          *
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% LEQ 1 goto opcao6
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% GEQ 10 goto opcao10

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
set /p pasta= De um nome para a pasta: 
mkdir C:\Users\2830972323001\Desktop\%pasta%
echo ==================================
echo *         Pasta criada           *
echo ==================================
pause
goto menu

:opcao3
cls
echo ==================================
echo *     Escaneamento de disco       *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
Word.lnk
pause
goto menu

:opcao5
cls
calc.exe
pause
goto menu

:opcao6
cls
rd /S /Q C:\Users\2830972323001\Desktop\%pasta%
echo ==================================
echo *        Pasta deletada          *
echo ==================================
pause
goto menu

:opcao7
cls
color 0a
cd c:\
tree
pause
goto menu

:opcao8
echo Aperte ctrl + C para parar a execucao
goto opcao8

:opcao9
cls
exit

:opcao9
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu