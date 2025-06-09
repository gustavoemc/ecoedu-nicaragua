# EcoEdu Nicaragua

Repositorio para recursos educativos, datos y aplicaciones del proyecto EcoEdu en Nicaragua.

## Despliegue en GitHub Pages

Para publicar los recursos HTML de este repositorio en GitHub Pages:

1. Ejecuta el script de deploy desde la raíz del proyecto:

   ```powershell
   ./scripts/deploy-to-pages.ps1
   ```

   Esto copiará los archivos HTML públicos de `/html/` a `/docs/html/` y creará el archivo `.nojekyll` en `/docs/`.

2. Haz commit y push de los cambios:

   ```powershell
   git add docs/html/ docs/.nojekyll
   git commit -m "Deploy HTML para GitHub Pages"
   git push
   ```

3. Verifica que GitHub Pages esté configurado para publicar desde la carpeta `/docs/` en la rama `main` (en Settings > Pages del repositorio).

4. Accede a los recursos publicados en:

   `https://gustavoemc.github.io/ecoedu-nicaragua/html/Especies_MicroBosque_LVH_2025_v1.0.html`

---

## Estructura

- `/data/`: Datos en CSV, GeoJSON, etc.
- `/apps/`: Notebooks, scripts o pequeños front-ends.
- `/html/`: Páginas web y recursos HTML.
- `/docs/`: Guías, licencias y manuales.

## Público objetivo

Docentes, estudiantes y público interesado en educación ambiental y biodiversidad en Nicaragua.

## Cómo usar

Consulta las carpetas para acceder a datos, aplicaciones y documentación relevante.

## Estructura recomendada para scripts

Los scripts auxiliares (como el de deploy) se encuentran en la carpeta `/scripts/` para mantener el proyecto organizado y facilitar su uso por parte de otros colaboradores.
