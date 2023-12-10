#!/usr/bin/env pwsh

<#
.Synopsis
Installs extensions into vscode profiles

.Description
Takes a profile folder and installs the extensions listed in the extensions.json file

.Parameter install
Install the extensions listed in the profile

.Parameter profile
The profile folder to install

.Parameter help
Show help

.Example
./install_profile.ps1 -install -profile "chrisguest75"

#>
param(
    [Parameter(Mandatory=$false)][switch]$help=$false,
    [switch]$install,
    [Parameter(Mandatory=$true)][string]$profile=""
)

#***********************************************************************************************************
#** Usage
#***********************************************************************************************************

$showhelp = $false

if ( $PSBoundParameters.Values.Count -eq 0 -and $args.count -eq 0 ) {
    $showhelp = $true
}

if(($help -eq $true) -or ($showhelp -eq $true))
{
    Get-Help $MyInvocation.MyCommand.Definition -Detailed
    return
}

if(($profile -eq ""))
{
    Get-Help $MyInvocation.MyCommand.Definition -Detailed
    return
}

if($install)
{
    # check if path exists
    if(!(test-path $profile))
    {
        write-host "Profile folder does not exist: $profile"
        return
    }

    # load json
    $extensions = get-content ./$profile/extensions.json

    # convert json
    $extensionsjson = $extensions | ConvertFrom-Json
    # install extensions synchronously
    $failed = $()
    $extensionsjson | foreach-object {
        $extension=[string]$_
        write-host "Extension: $extension"
        # install extension and check if it is already installed
        code --profile $profile --install-extension $extension
        # get the exit code
        $exitcode=$LASTEXITCODE
        # if the exit code is 0 then the extension was installed
        if($exitcode -eq 0)
        {
            write-host "Installed: $extension"
        }
        else
        {
            write-host "Already installed: $extension"
            failed.add($extension)
        }
    }

    write-host "Failed to install: $failed"
} else {
    write-host "Skipping install profile: $profile"
}

