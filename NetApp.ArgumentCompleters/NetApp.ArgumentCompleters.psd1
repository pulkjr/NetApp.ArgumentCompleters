@{
    ModuleVersion     = '0.0.1'
    GUID              = '0f0fed59-167f-4842-b898-07cee0eb200b'
    Author            = 'Joseph Pulk'
    CompanyName       = 'NetApp'
    Copyright         = '(c) Joseph Pulk. All rights reserved.'
    Description       = 'PowerShell Module that registers argument completers for the NetApp.ONTAP and dataONTAP modules.'
    FunctionsToExport = '*'
    RootModule        = 'NetApp.Core.psm1'
    FileList          = @(
        'NetApp.ArgumentCompleters.psd1'
        'NetApp.ArgumentCompleters.psm1'
    )
    PrivateData       = @{
        BuildNumber = '0'
        PSData      = @{
            Tags                       = @('NetApp')
            ExternalModuleDependencies = @(
                'DataONTAP'
                'NetApp.ONTAP'
            )
            ReleaseNotes               = ''
            Category                   = ''
            IconUri                    = ''
            ProjectUri                 = 'https://github.com/pulkjr/NetApp.ArgumentCompleters'
            LicenseUri                 = 'https://github.com/pulkjr/NetApp.ArgumentCompleters/blob/main/LICENSE'
            Prerelease                 = ''
        }
    }
}

