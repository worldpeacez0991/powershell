$PathToScan="E:\"
"Path to scan:`t $PathToScan"
$hash = $null
$hash = @{}
Get-ChildItem -path $PathToScan -recurse | Where-Object  {
    ($_.Length /1MB) -gt 2 
} | ForEach-Object {
    $hash.add(
        $_.DirectoryName.Replace("$PathToScan","")+$_.Name,
        [math]::Round(($_.length/1MB),0))
}

$TableStyle = @{Expression={$_.Value}; Label="Size (MB)"; Width=10;  Alignment = 'Left'}, 
              @{Expression={$_.Name}; Label="Name"; Width=100}
$hash.GetEnumerator() | Sort Value -Descending| Format-Table -Property $TableStyle

