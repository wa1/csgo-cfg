# Run this first: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

Write-Output "Run this if the script crashes next (to allow running scripts)"
Write-Output "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass"

Write-Output "Deploying autoexec to cfg folder (a backup of the current autoexec will be saved)."

# Edit to your csgo path.
# $path_csgo = "C:/Program Files (x86)/Steam/steamapps/common/Counter-Strike Global Offensive/csgo/cfg"
$path_cs2 = "C:/Program Files (x86)/Steam/steamapps/common/Counter-Strike Global Offensive/game/csgo/cfg"

If (-Not(Test-Path $path_cs2)) {
    Write-Output "Invalid path to cfg directory, edit the powershell script variable 'path_cs2'."
    Exit
}

Write-Output "CSGO path found."

#autoexec

If (Test-Path $path_cs2/autoexec.cfg) {
    $backup_filename = "_autoexec_$(get-date -f yyyyMMdd_HHmmssffff).cfg"
    Write-Output "Making backup of current autoexec.cfg: $backup_filename"
    Copy-Item $path_cs2/autoexec.cfg -Destination $path_cs2/$backup_filename
}

Write-Output "Overwriting current autoexec with new version"
Copy-Item dist/autoexec.cfg -Destination $path_cs2/autoexec.cfg

Write-Output "autoexec done."

#prac

If (Test-Path $path_cs2/prac.cfg) {
    $backup_filename_prac = "_prac_$(get-date -f yyyyMMdd_HHmmssffff).cfg"
    Write-Output "Making backup of current prac.cfg: $backup_filename_prac"
    Copy-Item $path_cs2/prac.cfg -Destination $path_cs2/$backup_filename_prac
}

Write-Output "Overwriting current prac with new version"
Copy-Item dist/prac.cfg -Destination $path_cs2/prac.cfg

Write-Output "prac done."