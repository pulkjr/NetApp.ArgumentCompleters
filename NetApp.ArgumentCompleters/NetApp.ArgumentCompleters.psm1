Set-StrictMode -Version 2.0
try
{
    Get-ChildItem -Path $PSScriptRoot -Filter *.ps1 -Exclude *.ps1xml -Recurse | ForEach-Object { . $PSItem.FullName }
}
catch
{
    $Global:Error.RemoveAt(0)

    throw "One of the script files failed to load. Reason: $( $PSItem.Exception.Message )"
}
