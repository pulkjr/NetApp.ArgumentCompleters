function Connect-NcCluster {
    <#
    .SYNOPSIS
        This is a wrapper command that is used to Connect to the NetApp Cluster then populate environment variables that will be used within the registered argument completers. 
    .DESCRIPTION
        This is a wrapper command that is used to Connect to the NetApp Cluster then populate environment variables that will be used within the registered argument completers. The expectation is that you would only be working on one cluster at at time as these are specifically for interactive use.
    .EXAMPLE
        PS C:\> Connect-NcCluster cluster01
        This will call Connect-NcController and populate the variables needed for the register argument completers to work.

    .NOTES
        For variables used in this function there should be default values within the private ps1. 
    #>
    [CmdletBinding()]
    param (
        # The Name or IP of the cluster that you would like to connect to
        [Parameter(Mandatory, Position = 0)]
        [String]
        $Name
    )
    
    Connect-NcController -Name $Name

    $script:__lunOsTypeEnum = (Invoke-NcSystemApi -Request '<lun-os-type-list/>').results.ostypes.'system-api-enum-value-info'.value

    $script:__igroupOsTypeEnum = (Invoke-NcSystemApi -Request '<igroup-os-type-list/>').results.ostypes.'system-api-enum-value-info'.value
}