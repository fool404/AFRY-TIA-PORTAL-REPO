git add --verbose --update
[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
$text = [Microsoft.VisualBasic.Interaction]::InputBox($msg, 'Kommentera utförda ändringar')
Write-Host($text)
git commit -m "$text"
git push origin
Write-Host('Done')
