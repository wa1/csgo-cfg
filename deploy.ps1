# Run this first: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

Write-Output "Deploying autoexec to csgo folder (a backup of the current autoexec will be saved)."

# Edit to your csgo path.
$path_csgo = "C:/Program Files (x86)/Steam/steamapps/common/Counter-Strike Global Offensive/csgo/cfg"

If (-Not(Test-Path $path_csgo)) {
    Write-Output "Invalid path to csgo cfg directory, edit the powershell script variable 'path_csgo'."
    Exit
}

Write-Output "CSGO path found."

If (Test-Path $path_csgo/autoexec.cfg) {
    $backup_filename = "_autoexec_$(get-date -f yyyyMMdd_HHmmssffff).cfg"
    Write-Output "Making backup of current autoexec.cfg: $backup_filename"
    Copy-Item $path_csgo/autoexec.cfg -Destination $path_csgo/$backup_filename
}

Write-Output "Overwriting current autoexec with new version"
Copy-Item dist/autoexec.cfg -Destination $path_csgo/autoexec.cfg

Write-Output "autoexec done."

#prac

If (Test-Path $path_csgo/prac.cfg) {
    $backup_filename_prac = "_prac_$(get-date -f yyyyMMdd_HHmmssffff).cfg"
    Write-Output "Making backup of current prac.cfg: $backup_filename_prac"
    Copy-Item $path_csgo/prac.cfg -Destination $path_csgo/$backup_filename_prac
}

Write-Output "Overwriting current prac with new version"
Copy-Item dist/prac.cfg -Destination $path_csgo/prac.cfg

Write-Output "prac done."