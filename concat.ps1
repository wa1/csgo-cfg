Write-Output "Generating new autoexec.cfg"

$info = @"

echo ""
echo "Config generated using https://github.com/wa1/csgo-cfg"
echo ""
echo "Build timestamp: $(
    Get-date -f yyyy-MM-ddTHH:mm:ss:ffff
)"
echo ""
"@

# Glue all the config files together
(Get-Content src/header.cfg, src/_*.cfg) + $info + (Get-Content src/footer.cfg) | Set-Content dist/autoexec.cfg

Write-Output "New autoexec.cfg generated at ./dist/autoexec.cfg"