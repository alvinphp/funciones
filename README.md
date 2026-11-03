# Biblioteca de funciones para PowerShell

Colección de funciones personalizadas que utilizo en mis desarrollos y en la administración desde PowerShell.

## Instalación

Para utilizar la biblioteca, debes ejecutar el archivo `funciones.ps1` indicando la ruta donde se encuentra guardado en tu equipo.

Ejemplo:

    . "C:\Users\alvin\Desktop\cmd-shell\funciones.ps1"

**Importante:** Modifica la ruta según la ubicación donde tengas guardado el archivo `funciones.ps1`.

## Comandos disponibles

### 1. PHPCS

Analiza archivos PHP utilizando los estándares de codificación de WordPress.

    phpcs archivo.php

### 2. PHPCBF

Corrige automáticamente los problemas de formato y estándares que PHPCBF pueda solucionar.

    phpcbf archivo.php

### 3. Limpiar la pantalla

Limpia la pantalla de PowerShell.

    limpiar
### 4. Funciones que ayudan con los comandos de Git

Permite recargar las funciones después de realizar modificaciones en `funciones.ps1`. Incluye una función personalizada para los commits, otra para subir el proyecto, y otras utilidades.
    

## Requisitos

Para que los comandos de análisis y corrección funcionen correctamente, debes tener instalados globalmente:

- **PHP:** intérprete de PHP.
- **Composer:** administrador de dependencias de PHP.
- **PHPCS:** herramienta de análisis de estándares de código.
- **PHPCBF:** herramienta de corrección automática de código.
- **WordPress Coding Standards (WPCS):** conjunto de estándares de codificación de WordPress.

**Importante:** PHPCS, PHPCBF y WordPress Coding Standards deben estar instalados globalmente mediante Composer. Además, las rutas de sus ejecutables deben estar correctamente configuradas en el archivo `funciones.ps1`.

## Autor

Alvin Gil

