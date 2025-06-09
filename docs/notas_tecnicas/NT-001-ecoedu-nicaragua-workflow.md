---
nota_tecnica_id: ecoedu-nicaragua-nt-001
proyecto: ecoedu-nicaragua
version: 1.0
fecha: 2025-06-09
autor: Gustavo Ernesto Martínez Cárdenas
contacto: gustavoemc (GitHub), https://www.linkedin.com/in/gustavoemc
licencia: MIT
palabras_clave: GitHub Pages, Open Data, Recursos Educativos, Automatización, Open Graph, Social Sharing, Workflow, PowerShell, VS Code
---

# Nota Técnica NT-001: Publicación Modular y Socializable de Recursos Educativos y Ambientales en GitHub Pages

## Resumen Ejecutivo

Esta Nota Técnica describe, de forma sistemática y reproducible, el proceso para crear, organizar, automatizar y publicar recursos educativos y datos ambientales en GitHub, con despliegue web y soporte para vista previa en redes sociales. Está orientada a usuarios principiantes, equipos de desarrollo y agentes IA que requieran replicar o adaptar el flujo para otros proyectos.

---

## Índice

- [Nota Técnica NT-001: Publicación Modular y Socializable de Recursos Educativos y Ambientales en GitHub Pages](#nota-técnica-nt-001-publicación-modular-y-socializable-de-recursos-educativos-y-ambientales-en-github-pages)
  - [Resumen Ejecutivo](#resumen-ejecutivo)
  - [Índice](#índice)
  - [1. Introduccion y Alcance](#1-introduccion-y-alcance)
  - [2. Requisitos Previos](#2-requisitos-previos)
  - [3. Inicializacion del Proyecto](#3-inicializacion-del-proyecto)
    - [3.1. Crear el repositorio en GitHub](#31-crear-el-repositorio-en-github)
    - [3.2. Clonar el repositorio y preparar estructura](#32-clonar-el-repositorio-y-preparar-estructura)
    - [3.3. Migrar rama principal de master a main (si aplica)](#33-migrar-rama-principal-de-master-a-main-si-aplica)
    - [3.4. Configurar permisos para PowerShell (Windows)](#34-configurar-permisos-para-powershell-windows)
    - [3.5. Abrir el proyecto en VS Code](#35-abrir-el-proyecto-en-vs-code)
  - [4. Estructura Recomendada del Repositorio](#4-estructura-recomendada-del-repositorio)
  - [5. Automatizacion del Deploy](#5-automatizacion-del-deploy)
    - [5.1. Script PowerShell: `deploy-to-pages.ps1`](#51-script-powershell-deploy-to-pagesps1)
    - [5.2. Ejecutar el script](#52-ejecutar-el-script)
  - [6. Configuracion de GitHub Pages](#6-configuracion-de-github-pages)
  - [7. Metadatos para Social Sharing](#7-metadatos-para-social-sharing)
  - [8. Validacion de la Vista Previa](#8-validacion-de-la-vista-previa)
  - [9. Solucion de Problemas Frecuentes](#9-solucion-de-problemas-frecuentes)
  - [10. Buenas Practicas y Estrategias](#10-buenas-practicas-y-estrategias)
  - [11. Nomenclatura y Organizacion de Notas Técnicas](#11-nomenclatura-y-organizacion-de-notas-técnicas)
  - [12. Referencias y Recursos](#12-referencias-y-recursos)
  - [13. Contacto y Contribucion](#13-contacto-y-contribucion)

---

## 1. Introduccion y Alcance

Este documento sistematiza el workflow para proyectos de datos abiertos y recursos educativos, facilitando su réplica y adaptación. Incluye desde la inicialización de Git, configuración de permisos, uso de VS Code, hasta la publicación efectiva y socialización del HTML.

---

## 2. Requisitos Previos

- Cuenta en GitHub
- [Git](https://git-scm.com/) instalado
- [Visual Studio Code](https://code.visualstudio.com/) (VS Code)
- [PowerShell](https://learn.microsoft.com/en-us/powershell/) (Windows) o terminal compatible
- Conexión a internet

---

## 3. Inicializacion del Proyecto

### 3.1. Crear el repositorio en GitHub

- Crea un repositorio público, por ejemplo: `ecoedu-nicaragua`.
- Añade un README y una licencia (MIT, CC, etc.).

### 3.2. Clonar el repositorio y preparar estructura

```pwsh
# Clona el repositorio y entra a la carpeta
 git clone https://github.com/<usuario>/<repositorio>.git
 cd <repositorio>
# Crea carpetas base
 mkdir data, apps, html, docs, scripts
```

### 3.3. Migrar rama principal de master a main (si aplica)

```pwsh
git branch -m master main
git push -u origin main
git push origin --delete master
```

### 3.4. Configurar permisos para PowerShell (Windows)

Abre PowerShell como administrador y ejecuta:

```pwsh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Esto permite ejecutar scripts locales (como el de deploy).

### 3.5. Abrir el proyecto en VS Code

```pwsh
code .
```

---

## 4. Estructura Recomendada del Repositorio

```text
LICENSE
README.md
apps/
data/
docs/
    html/
        Especies_MicroBosque_LVH_2025_v1.0.html
        thumbnail_microbosque.png
html/
    Especies_MicroBosque_LVH_2025_v1.0.html
    thumbnail_microbosque.png
scripts/
    deploy-to-pages.ps1
```

- `/data/`: Datos crudos y procesados
- `/apps/`: Aplicaciones, notebooks, scripts interactivos
- `/html/`: Archivos fuente HTML y recursos visuales
- `/docs/`: Carpeta de despliegue para GitHub Pages (`/docs/html/`)
- `/scripts/`: Scripts de automatización (ej: deploy)
- `README.md`: Documentación general y técnica
- `LICENSE`: Licencia abierta

---

## 5. Automatizacion del Deploy

### 5.1. Script PowerShell: `deploy-to-pages.ps1`

Ubica el script en `/scripts/` para copiar HTML y recursos a `/docs/html/`:

```powershell
# Copia HTML y recursos a docs/html para deploy en GitHub Pages
$source = "../html/"
$destination = "../docs/html/"
if (!(Test-Path $destination)) { New-Item -ItemType Directory -Path $destination }
Copy-Item "$source*" $destination -Recurse -Force
Write-Host "Archivos copiados a docs/html. Listo para publicar."
```

### 5.2. Ejecutar el script

```pwsh
pwsh ./scripts/deploy-to-pages.ps1
```

---

## 6. Configuracion de GitHub Pages

- En GitHub, ve a Settings > Pages.
- Selecciona la rama `main` y la carpeta `/docs/` como fuente.
- El HTML será accesible en:
  `https://<usuario>.github.io/<repositorio>/html/<archivo>.html`

---

## 7. Metadatos para Social Sharing

Agrega en el `<head>` del HTML:

```html
<!-- Open Graph -->
<meta property="og:title" content="¡Explora el Microbosque del LVH!" />
<meta property="og:description" content="Visualización interactiva de especies del Microbosque LVH. Proyecto EcoEdu Nicaragua." />
<meta property="og:image" content="https://<usuario>.github.io/<repositorio>/html/thumbnail_microbosque.png" />
<meta property="og:url" content="https://<usuario>.github.io/<repositorio>/html/<archivo>.html" />
<meta property="og:type" content="website" />
<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="¡Explora el Microbosque del LVH!" />
<meta name="twitter:description" content="Visualización interactiva de especies del Microbosque LVH. Proyecto EcoEdu Nicaragua." />
<meta name="twitter:image" content="https://<usuario>.github.io/<repositorio>/html/thumbnail_microbosque.png" />
```

- Usa una imagen horizontal (ideal: 1200x630 px), centrada y sin texto pegado a los bordes.

---

## 8. Validacion de la Vista Previa

- [metatags.io](https://metatags.io/)
- [opengraph.xyz](https://www.opengraph.xyz/)
- [Twitter Card Validator](https://cards-dev.twitter.com/validator)
- [LinkedIn Post Inspector](https://www.linkedin.com/post-inspector/)
- WhatsApp: envía el enlace a un chat propio o grupo de prueba.

---

## 9. Solucion de Problemas Frecuentes

- **El thumbnail no aparece:**
  - Verifica la URL pública y el formato de la imagen.
  - Usa la opción "Scrape Again" en las herramientas de validación.
  - Espera unos minutos por la caché de GitHub Pages y redes sociales.
- **Cambios en la imagen no se reflejan:**
  - Mantén el mismo nombre de archivo y reemplaza el PNG.
  - Si cambias el nombre, actualiza los metadatos en el HTML.
- **Permisos de ejecución en PowerShell:**
  - Ejecuta `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser` si hay errores de permisos.

---

## 10. Buenas Practicas y Estrategias

- Mantén la estructura modular y separa fuentes de despliegue.
- Automatiza el deploy para evitar errores manuales.
- Documenta cada paso y decisión en README y Notas Técnicas.
- Valida siempre la vista previa antes de compartir públicamente.
- Usa imágenes optimizadas y con la relación de aspecto recomendada.
- Haz commits frecuentes y descriptivos.
- Utiliza títulos y descripciones claros y concisos en los metadatos.
- Incluye ejemplos y enlaces útiles en la documentación.

---

## 11. Nomenclatura y Organizacion de Notas Técnicas

- Ubica las Notas Técnicas en `/docs/notas_tecnicas/` o `/docs/`.
- Usa nombres tipo `NT-001-nombre-corto.md`.
- Incluye metadata YAML al inicio para facilitar búsquedas y clasificación.
- Ejemplo de organización: [datanicaragua/Huracanes/docs/notas_tecnicas](https://github.com/datanicaragua/Huracanes/tree/main/docs/notas_tecnicas)

---

## 12. Referencias y Recursos

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Open Graph Protocol](https://ogp.me/)
- [Twitter Cards](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/summary)
- [metatags.io](https://metatags.io/)
- [VS Code Docs](https://code.visualstudio.com/docs)
- [PowerShell Docs](https://learn.microsoft.com/en-us/powershell/)
- [Guía de documentación de GitHub](https://github.blog/developer-skills/documentation-done-right-a-developers-guide/)

---

## 13. Contacto y Contribucion

- Autor: Gustavo Ernesto Martínez Cárdenas
- LinkedIn: [linkedin.com/in/gustavoemc](https://www.linkedin.com/in/gustavoemc)
- Estado: Proyecto en desarrollo activo. ¡Contribuciones y sugerencias bienvenidas!

---

> **Esta Nota Técnica sistematiza el workflow para proyectos educativos y ambientales abiertos, facilitando su réplica y adaptación en otros contextos.**
