Set-StrictMode -Version 3.0

# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.

$MC_SAVES = "$($env:APPDATA)\.minecraft\saves"

function Get-DatapackDestination([string] $savegame, [string] $dp) {
	return "$MC_SAVES\$savegame\datapacks\$dp"
}

$datapacks = Get-ChildItem -Path ".\datapacks" -Directory
for ($i = 0; $i -lt $datapacks.Length; $i++) {
	Write-Output "$($i): $($datapacks[$i])"
}
$dp_idx = Read-Host "Datapack index"
$dp_name = $datapacks[$dp_idx]

$savegames = Get-ChildItem -Path $MC_SAVES -Directory
for ($i = 0; $i -lt $savegames.Length; $i++) {
	Write-Output "$($i): $($savegames[$i])"
}
$save_idx = Read-Host "Savegame index"
$savegame = $savegames[$save_idx]

$src = ".\datapacks\$dp_name"
$dest = Get-DatapackDestination($savegame)

Copy-Item $src $dest -Force -Recurse
Write-Output "Copied $dp_name to $dest"
