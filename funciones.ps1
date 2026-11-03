<# Biblioteca que contiene funciones en powershell 
   que ayudan en el desarrollo de aplicaciones.
#>
# Recargar funciones personalizadas
function cargar {
    . "C:\Users\alvin\Desktop\cmd-shell\funciones.ps1"
}

# Limpiar terminal
function limpiar {
    Clear-Host
}

# Revisar estándares de WordPress phpcs archivo.php
function phpcs {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Archivo
    )

    $RutaPHPCS = "$env:APPDATA\Composer\vendor\bin\phpcs.bat"

    if (Test-Path $RutaPHPCS) {
        & $RutaPHPCS --standard=WordPress $Archivo
    }
    else {
        Write-Host "No se encontró PHPCS global." -ForegroundColor Red
    }
}

# Corregir automáticamente estándares de WordPress phpcsbf archivo.php
function phpcbf {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Archivo
    )

    $RutaPHPCBF = "$env:APPDATA\Composer\vendor\bin\phpcbf.bat"

    if (Test-Path $RutaPHPCBF) {
        & $RutaPHPCBF --standard=WordPress $Archivo
    }
    else {
        Write-Host "No se encontró PHPCBF global." -ForegroundColor Red
    }
}

# Crear commit en Git uso commit "mensaje"
function commit {
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$mensaje
    )

    git commit -m "$mensaje"
}

function subir{
    $rama = git branch --show-current
    if($rama -eq "main"){
        git push origin main
    }
    else{
        git push origin master
    }
}

function actualizar{
    git pull origin main
}
# modo de uso subirproyecto "ruta/index.php"
function subirProyecto {
     param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$url
    )
    git add .
    git commit -m "proyecto inicial"
    git remote add origin $url
    $master = git branch --show-current
    if($master -eq "master") {
    git push -u origin master
    }
    else{
    git push -u origin main

    }
    
}
function rama {
    git branch
}
function rebase {
    $rama = git branch --show-current
    if($rama -eq "main"){
        git pull --rebase origin main
    }
    else{
        git pull --rebase origin master
    }
}
# funcion personal para iniciar mi servidor local.
function laragon{
    Start-Process "C:\laragon\laragon.exe"
}

# funciones para trabajar base de datos desde el powershell
$global:mysql = "C:\laragon\bin\mysql\mysql-8.4.3-winx64\bin\mysql.exe"
function showdb{
    & $global:mysql -u root -e "SHOW DATABASES;"
}
# modo de usar showtable nombre_db
function showtable{
    param([string]$base)
     & $Global:mysql -u root $base -e "SHOW TABLES;"
}
# funcion para seleccion una tabla 
function verdatos{
    param(
        [string]$base,
        [string]$table
        )
    & $Global:mysql -u root $base -e "SELECT * FROM $table;"
}
function createdb {
param([string]$db)
& $Global:mysql -u root -e "CREATE DATABASE $db;"
}
function dropdb{
    param([string]$db)
& $Global:mysql -u root -e "DROP DATABASE $db;"
}
function webtest{
    Start-Process "http://localhost/wordpress7/wordpress/index.php/2026/08/16/hola-mundo/"
}
