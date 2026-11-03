# Recargar funciones personalizadas
function cargar {
    . "C:\Users\alvin\Desktop\cmd-shell\funciones.ps1"
}

# Limpiar terminal
function limpiar {
    Clear-Host
}

# Revisar estándares de WordPress
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

# Corregir automáticamente estándares de WordPress
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

# Crear commit en Git
function commit {
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$mensaje
    )

    git commit -m "$mensaje"
}

function subir{
    git push origin main
}

function actualizar{
    git pull origin main
}

function subirProyecto {
     param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$url
    )
    git add .
    git commit -m "primer proyecto"
    git remote add origin $url
    git push -u origin main
}