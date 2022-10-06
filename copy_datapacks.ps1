# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.

param(
	[Switch] $dryRun
)

Set-StrictMode -Version 3.0

$MC_SAVES = "$($env:APPDATA)\.minecraft\saves"

function Get-DatapackDestination([string] $savegame, [string] $dp) {
	return "$savegame\datapacks\$dp"
}

$datapacks = Get-ChildItem -Path ".\datapacks" -Directory
for ($i = 0; $i -lt $datapacks.Length; $i++) {
	Write-Output "$($i): $($datapacks[$i].Name)"
}
$dp_idx = Read-Host "Datapack index"
$pack = $datapacks[$dp_idx]

$savegames = Get-ChildItem -Path $MC_SAVES -Directory
for ($i = 0; $i -lt $savegames.Length; $i++) {
	Write-Output "$($i): $($savegames[$i].Name)"
}
$save_idx = Read-Host "Savegame index"
$savegame = $savegames[$save_idx]

$dest = Get-DatapackDestination($savegame)

if ($dryRun) {
	Copy-Item $pack $dest -Force -Recurse -WhatIf
} else {
	Copy-Item $pack $dest -Force -Recurse
}

Write-Output "Copied ´$($pack.Name)´ to ´$($savegame.Name)´."
