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
  This is not intended for use in a production environment but rather in a lab, learning, or Poc environment.
  Change the password
.LINK
    [Information regarding the Splunk Universal Forwarder](https://www.splunk.com/en_us/blog/learn/splunk-universal-forwarder.html)
    [Inputs.conf](https://docs.splunk.com/Documentation/Splunk/9.0.3/Admin/Inputsconf)
 #>
$passphrase = "Unsold4-8x64b-Monoxide-Sector"

wget -O splunkforwarder-9.0.3-dd0128b1f8cd-x86-release.msi "https://download.splunk.com/products/universalforwarder/releases/9.0.3/windows/splunkforwarder-9.0.3-dd0128b1f8cd-x86-release.msi"

## Comment to Disable Installation
msiexec /i .\splunkforwarder-9.0.3-dd0128b1f8cd-x86-release.msi AGREETOLICENSE=Yes GENRANDOMPASSWORD=$passphrase
