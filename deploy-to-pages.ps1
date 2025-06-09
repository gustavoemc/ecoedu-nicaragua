# Deploy script for GitHub Pages (ecoedu-nicaragua)
# 1. Crea /docs/html si no existe
# 2. Copia los HTML públicos de /html/ a /docs/html/
# 3. Crea .nojekyll en /docs/

$source = "html"
$target = "docs/html"

if (!(Test-Path $target)) {
    New-Item -ItemType Directory -Path $target | Out-Null
}

Get-ChildItem -Path $source -Filter *.html | ForEach-Object {
    Copy-Item $_.FullName -Destination $target -Force
}

$nojekyll = "docs/.nojekyll"
if (!(Test-Path $nojekyll)) {
    New-Item -ItemType File -Path $nojekyll | Out-Null
}

Write-Host "Archivos HTML copiados a docs/html y .nojekyll creado. Listo para commit y push."
