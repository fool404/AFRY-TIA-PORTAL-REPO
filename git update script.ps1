git add .
[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
$text = [Microsoft.VisualBasic.Interaction]::InputBox($msg, 'commit changes')
Write-Host($text)
git commit -m "$text"
git push origin
Write-Host('Done')
