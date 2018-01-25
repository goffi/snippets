$LeftFolder = "C:\tmp\diff\Allegro-8.0.9868.15-rev.1_DanskeEmergencyPatch"
$RightFolder = "C:\tmp\diff\8.0.9868.15-rev.131-JDv1084\"
$LeftSideHash = Get-ChildItem $LeftFolder -Recurse | Get-FileHash | select @{Label="Path";Expression={$_.Path.Replace($LeftFolder,"")}},Hash
$RightSideHash = Get-ChildItem $RightFolder -Recurse | Get-FileHash | select @{Label="Path";Expression={$_.Path.Replace($RightFolder,"")}},Hash
Compare-Object $LeftSideHash $RightSideHash -Property Path,Hash
