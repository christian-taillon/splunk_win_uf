<#
.SYNOPSIS
  A script to download and potentially install the Splunk Universal Forwarder on Windows

.DESCRIPTION
  Author: Christian Taillon
  Date Creation: 01-21-2023
  Date Modified: 01-23-2023

  Currently this script will simply download and execute Msiexec against the .msi file with a few required parameters. By running this script you are agreeeing to Splunk's Terms and Conditions for the use of their Software.

  This version downloads Splunk Universal Forwarder 9.3.0 for Windows.

.NOTES
  This is not intended for use in a production environment but rather in a lab, learning, or Poc environment. By default, this script will automatically generate a random password for you. You can modify the script to set the password you desire during installation (view line 22 & 27).

.LINK
    [Information regarding the Splunk Universal Forwarder](https://www.splunk.com/en_us/blog/learn/splunk-universal-forwarder.html)
    [Inputs.conf](https://docs.splunk.com/Documentation/Splunk/9.0.3/Admin/Inputsconf)
    [SplunkUFInstall](https://docs.splunk.com/Documentation/Forwarder/9.0.4/Forwarder/InstallaWindowsuniversalforwarderfromaninstaller#Install_a_Windows_universal_forwarder_from_the_command_line)
 #>

# If you would like to set your own passphrase, modify the following and set it here. Otherwise, by default, the password is randomly generated.
$passphrase = "Unsold4-8x64b-Monoxide-Sector"

wget -O splunkforwarder-9.1.1-64e843ea36b1-x86-release.msi "https://download.splunk.com/products/universalforwarder/releases/9.1.1/windows/splunkforwarder-9.1.1-64e843ea36b1-x86-release.msi"

## If you desire to set a password, uncomment line 28 and comment line 29.
# msiexec /i splunkforwarder-9.0.3-dd0128b1f8cd-x64-release.msi AGREETOLICENSE=Yes SPLUNKPASSWORD=$passphrase /quiet
msiexec /i splunkforwarder-9.1.1-64e843ea36b1-x86-release.msi AGREETOLICENSE=Yes GENRANDOMPASSWORD=1 /quiet

# I am cheap and Microsoft is silly ;)
# SIG # Begin signature block
# SIG # End signature block
