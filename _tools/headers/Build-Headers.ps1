<#
.SYNOPSIS
    Renders the post header images in headers.html to /images/headers/<id>.png.
.DESCRIPTION
    Each header is a section of headers.html, shown with ?id=<id>. Headless Chrome
    screenshots it at 1600x900 (16:9, the post image box's shape). Add a header by
    adding a section to headers.html and its id to -Id, or pass -Id to rebuild one.
.EXAMPLE
    .\Build-Headers.ps1
.EXAMPLE
    .\Build-Headers.ps1 -Id everything-ive-read
#>
[CmdletBinding()]
param(
    [string[]]$Id = @(
        'introduction-to-rightnow', 'getting-started-guide', 'core-features-walkthrough',
        'target-audience-use-cases', 'alpha-testing-friends-family', 'launching-patreon-support-rightnow',
        'capacity-first-productivity', 'gamifying-backlog-grooming', 'offline-first-flutter-app',
        'technical-deep-dive', 'development-journey-changelog', 'everything-ive-read'
    ),
    [string]$Chrome = 'C:\Program Files\Google\Chrome\Application\chrome.exe'
)

$ErrorActionPreference = 'Stop'
$page = (Resolve-Path (Join-Path $PSScriptRoot 'headers.html')).Path -replace '\\', '/'
$outDir = Join-Path $PSScriptRoot '..\..\images\headers'
New-Item -ItemType Directory -Force $outDir | Out-Null

foreach ($name in $Id) {
    $out = Join-Path (Resolve-Path $outDir) "$name.png"
    # Chrome logs harmless noise to stderr, which Windows PowerShell 5.1 would treat as an error
    Start-Process -FilePath $Chrome -Wait -WindowStyle Hidden -ArgumentList @(
        '--headless=new', '--disable-gpu', '--hide-scrollbars', '--allow-file-access-from-files',
        '--window-size=1600,900', '--virtual-time-budget=3000', "--screenshot=`"$out`"", "file:///$page`?id=$name"
    )
    if (-not (Test-Path $out)) { throw "Chrome did not write $out" }
    Write-Host "Rendered $name"
}
