If (Get-ItemProperty -Path 'Registry::HKLM\SOFTWARE\Adobe\Adobe Acrobat\DC\FeatureLockDown')
    {
    #If the key already exists just set the value
    Write-Output "True"
    Set-Itemproperty -Path 'Registry::HKLM\SOFTWARE\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bDisableJavaScript' -value '1'
    Set-Itemproperty -Path 'Registry::HKLM\SOFTWARE\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bDisableFlash' -value '1'
    Get-ItemProperty -Path 'Registry::HKLM\SOFTWARE\Adobe\Adobe Acrobat\DC\FeatureLockDown'
    }
    else
    {
     #If the key doesnt exist then the program is not installed and doesnt need rectification
     Write-Output "False"
     }