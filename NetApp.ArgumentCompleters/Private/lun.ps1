$script:__lunOsTypeEnum = (Invoke-NcSystemApi -Request '<lun-os-type-list/>').results.ostypes.'system-api-enum-value-info'.value
<# $script:__lunOsTypeEnum = @(
    'aix'
    'hpux'
    'hyper_v'
    'linux'
    'netware'
    'openvms'
    'solaris'
    'solaris_efi'
    'vmware'
    'windows'
    'windows_2008'
    'windows_gpt'
    'xen'
) #>
Register-ArgumentCompleter -CommandName New-NcLun -ParameterName OsType -ScriptBlock {
    param ($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
    $script:__lunOsTypeEnum | Where-Object { $_ -like "*$wordToComplete*" } | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}


