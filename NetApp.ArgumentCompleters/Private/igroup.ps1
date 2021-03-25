$Script:__igroupProtocolEnum = @(
    'iscsi'
    'fcp'
    'mixed'
)
Register-ArgumentCompleter -CommandName New-NcIgroup -ParameterName Protocol -ScriptBlock {
    param ($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
    $script:__igroupProtocolEnum | Where-Object { $_ -like "*$wordToComplete*" } | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}

$script:__igroupOsTypeEnum = (Invoke-NcSystemApi -Request '<igroup-os-type-list/>').results.ostypes.'system-api-enum-value-info'.value

Register-ArgumentCompleter -CommandName New-NcIgroup -ParameterName Type -ScriptBlock {
    param ($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
    $script:__igroupOsTypeEnum | Where-Object { $_ -like "*$wordToComplete*" } | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}