git add .
[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
convert to
$text = [Microsoft.VisualBasic.Interaction]::InputBox($msg, "Kommentera dina " + [char]::ConvertFromUtf32(0x00C4) + "ndringar")
Write-Host($text)
if($text -ne '' ){
    git commit -v -m "$text" 
    git push origin
    Write-Host('Uppladdning Klar')
    for ($i = 1; $i -le 100; $i++ )
{
    Write-Progress -Activity "Uppladdning Pågår" -Status "$i% Complete:" -PercentComplete $i;
}
}
else{
    Write-Host('V'+[char]::ConvertFromUtf32(0x00E4)+'nligen skriv en kommentar')
}
