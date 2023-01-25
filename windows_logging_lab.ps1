<#
.SYNOPSIS
  A script using the audit policy tool to modify and report logging policy.

.DESCRIPTION
  Author: Christian Taillon
  Date Creation: 01-21-2023
  Date Modified: 01-23-2023

  Very simple script. Its purpose was to ensure that multiple student participants logging policies were enabled.

.NOTES
  This is not intended for use in a production environment but rather in a lab, learning, or Poc environment.
  Validate that the policies intended to be modified were modified.
.LINK
    [auditpol set](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/auditpol-set)
    [auditpol get](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/auditpol-get)
    [Inputs.conf](https://docs.splunk.com/Documentation/Splunk/9.0.3/Admin/Inputsconf)
 #>

auditpol /set /category:"System","Account Management","Account Logon","Logon/Logoff","Policy Change","DS Access","Object Access" /failure:enable /success:enable
auditpol /get /category:*
