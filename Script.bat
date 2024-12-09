@echo off
REM Passo 1: Verificar o volume da unidade
echo Verificando o volume da unidade C:
dir C:\
echo.

REM Passo 2: Verificar a versão do sistema
echo Versão do sistema:
ver
echo.

REM Passo 3: Limpar a tela
cls

REM Passo 4: Listar todos os arquivos e pastas da unidade C:
echo Listando todos os arquivos e pastas da unidade C:\
dir C:\
echo.

REM Passo 5: Criar 3 pastas na unidade C: com os nomes Huginho, Zezinho e Luizinho
echo Criando as pastas Huginho, Zezinho e Luizinho...
mkdir C:\Huginho
mkdir C:\Zezinho
mkdir C:\Luizinho
echo Pastas criadas com sucesso.
echo.

REM Passo 6: Verificar se as pastas foram criadas
echo Verificando se as pastas foram criadas:
if exist C:\Huginho (
    echo Pasta Huginho criada.
) else (
    echo Pasta Huginho não foi criada.
)

if exist C:\Zezinho (
    echo Pasta Zezinho criada.
) else (
    echo Pasta Zezinho não foi criada.
)

if exist C:\Luizinho (
    echo Pasta Luizinho criada.
) else (
    echo Pasta Luizinho não foi criada.
)
echo.

REM Passo 7: Acessar cada uma dessas pastas e criar as pastas Argentina, Brasil e Uruguai
echo Criando pastas Argentina, Brasil e Uruguai nas pastas Huginho, Zezinho e Luizinho...

mkdir C:\Huginho\Argentina
mkdir C:\Huginho\Brasil
mkdir C:\Huginho\Uruguai

mkdir C:\Zezinho\Argentina
mkdir C:\Zezinho\Brasil
mkdir C:\Zezinho\Uruguai

mkdir C:\Luizinho\Argentina
mkdir C:\Luizinho\Brasil
mkdir C:\Luizinho\Uruguai
echo Pastas criadas com sucesso nas pastas Huginho, Zezinho e Luizinho.
echo.

REM Verificar se as pastas foram criadas nas subpastas
echo Verificando se as pastas Argentina, Brasil e Uruguai foram criadas:

for %%D in (Huginho Zezinho Luizinho) do (
    if exist C:\%%D\Argentina (
        echo Pasta Argentina criada em %%D.
    ) else (
        echo Pasta Argentina não foi criada em %%D.
    )
    
    if exist C:\%%D\Brasil (
        echo Pasta Brasil criada em %%D.
    ) else (
        echo Pasta Brasil não foi criada em %%D.
    )
    
    if exist C:\%%D\Uruguai (
        echo Pasta Uruguai criada em %%D.
    ) else (
        echo Pasta Uruguai não foi criada em %%D.
    )
)
echo.

REM Passo 8: Remover todas as pastas com o nome Argentina
echo Removendo pastas Argentina...
rmdir /S /Q C:\Huginho\Argentina
rmdir /S /Q C:\Zezinho\Argentina
rmdir /S /Q C:\Lui
