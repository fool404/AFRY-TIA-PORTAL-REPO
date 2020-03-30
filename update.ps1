param(
[string]$file
)

git add $file
[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
convert to
$text = [Microsoft.VisualBasic.Interaction]::InputBox($msg, "Kommentera dina " + [char]::ConvertFromUtf32(0x00C4) + "ndringar")
Write-Host($text)
if($text -ne '' ){
    git commit -v -m "$text" 
    git push origin
    
    Write-Progress -Activity "Uppladdning" -Status "$i% Klar:" -PercentComplete -1;
    Write-Host('Uppladdning Klar')

}
else{
    Write-Host('V'+[char]::ConvertFromUtf32(0x00E4)+'nligen skriv en kommentar')
}
