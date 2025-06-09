# EcoEdu Nicaragua 🌱🇳🇮

Bienvenido a **EcoEdu Nicaragua**: plataforma abierta para compartir datos, recursos educativos, aplicaciones y guías sobre biodiversidad y educación ambiental en Nicaragua.

---

## 🚀 Acceso rápido

- [🌳 Especies MicroBosque LVH 2025 (HTML interactivo)](https://gustavoemc.github.io/ecoedu-nicaragua/html/Especies_MicroBosque_LVH_2025_v1.0.html)
- [📁 Datos abiertos](/data) *(en desarrollo)*
- [🛠️ Aplicaciones y notebooks](/apps) *(en desarrollo)*
- [📄 Documentación y manuales](/docs) *(en desarrollo)*

> **Nota:** Proyecto en desarrollo activo. Algunos enlaces pueden no tener contenido disponible aún. ¡Tu colaboración y sugerencias son bienvenidas!

---

## ¿Qué es EcoEdu Nicaragua?

Espacio colaborativo para docentes, estudiantes, investigadores, organizaciones y ciudadanía interesada en la educación ambiental y biodiversidad de Nicaragua. Aquí encontrarás datos abiertos, materiales didácticos, visualizaciones interactivas y herramientas digitales para fortalecer la educación y la gestión sostenible de los recursos naturales.

---

## Público objetivo

- Docentes y facilitadores ambientales
- Estudiantes de todos los niveles
- Investigadores, ONGs y sector público
- Ciudadanía interesada en la naturaleza y la sostenibilidad

---

## 📦 Estructura del repositorio

- **/data/**: Datos abiertos (CSV, GeoJSON, etc.)
- **/apps/**: Notebooks, scripts y aplicaciones interactivas
- **/html/**: Visualizaciones y recursos web
- **/docs/**: Manuales, guías, licencias y documentación
- **/scripts/**: Utilidades para automatización y despliegue

---

## 🧭 ¿Cómo usar los recursos?

1. Explora las carpetas para acceder y descargar recursos.
2. Accede a visualizaciones y apps desde la sección "Acceso rápido".
3. Consulta manuales y guías en `/docs/`.
4. Si eres desarrollador/a, revisa `/scripts/` para automatizar tareas o contribuir.

---

## 📄 Notas Técnicas y documentación avanzada

- Guía completa y reproducible del workflow de publicación y socialización de recursos educativos y ambientales en GitHub Pages:
  - [`docs/notas_tecnicas/NT-001-ecoedu-nicaragua-workflow.md`](docs/notas_tecnicas/NT-001-ecoedu-nicaragua-workflow.md)

Incluye:

- Estructura modular recomendada
- Automatización del deploy
- Configuración de GitHub Pages
- Metadatos para vista previa en redes sociales
- Validación, solución de problemas y buenas prácticas
- Nomenclatura y organización para futuras notas técnicas

---

## 🤝 Contribuciones

¡Tus aportes y sugerencias son bienvenidos! Puedes abrir un issue, enviar un pull request o contactarnos para sumar recursos, reportar errores o proponer mejoras.

---

## 📄 Licencias

- **Código:** MIT License
- **Contenidos y datos:** Creative Commons Attribution-ShareAlike 4.0 (CC BY-SA 4.0)

---

## ⚙️ Información técnica para desarrolladores

Para publicar recursos HTML en GitHub Pages:

1. Ejecuta el script de despliegue desde la raíz del proyecto:

   ```powershell
   ./scripts/deploy-to-pages.ps1
   ```

2. Haz commit y push de los cambios:

   ```powershell
   git add docs/html/ docs/.nojekyll
   git commit -m "Deploy HTML para GitHub Pages"
   git push
   ```

3. Verifica que GitHub Pages esté configurado para publicar desde `/docs/` en la rama `main` (Settings > Pages).

---

## 🌐 Enlaces útiles

- [Sitio web publicado (GitHub Pages)](https://gustavoemc.github.io/ecoedu-nicaragua/index.html)
- [Repositorio en GitHub](https://github.com/gustavoemc/ecoedu-nicaragua)
- [Licencia CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.es)

---

**Autor:** [Gustavo Ernesto Martínez Cárdenas](https://www.linkedin.com/in/gustavoernestom/) · [GitHub: gustavoemc](https://github.com/gustavoemc)
**Última actualización:** junio 2025

---

¡Gracias por ser parte de la educación ambiental y la ciencia abierta en Nicaragua!
