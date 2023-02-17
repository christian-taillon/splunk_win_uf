<#
.SYNOPSIS
  A script using the audit policy tool to modify and report logging policy.

.DESCRIPTION
  Author: Christian Taillon
  Date Creation: 01-21-2023
  Date Modified: 02-17-2023

  Very simple script. Its purpose was to ensure that multiple student participants logging policies were enabled.

.NOTES
  This script will need to be run with administrator privileges.
  This is not intended for use in a production environment but rather in a lab, learning, or Poc environment.
  Validate that the policies intended to be modified were modified.
.LINK
    [auditpol set](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/auditpol-set)
    [auditpol get](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/auditpol-get)
    [Windows Advanced Audit Policy Reccomendations](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/security-best-practices/audit-policy-recommendations)
    [Inputs.conf](https://docs.splunk.com/Documentation/Splunk/9.0.3/Admin/Inputsconf)
 #>

auditpol /set /category:"System","Account Management","Account Logon","Logon/Logoff","Policy Change","DS Access","Object Access" /failure:enable /success:enable

# Category: Failure and Success
auditpol /set /category: "Account Logon","System" /failure:enable /success:enable

# Subcategory: Failure and Success
auditpol /set /subcategory:"Computer Account Management","Other Account Management Events","Security Group Management","User Account Management","DPAPI Activity","Process Creation","Logon","Other Logon/Logoff Events","Special Logon","Audit Policy Change","Authentication Policy Change" /failure:enable /success:enable

# Subcategory: Success
auditpol /set /subcategory:"Account Lockout","Logoff","Registry" /failure:disable /success:enable

# DC Policy
auditpol /set /subcategory:"Directory Service Access","Directory Service Changes" /failure:enable /success:enable

auditpol /get /category:*

# I am cheap and Microsoft is silly ;)
# SIG # Begin signature block
# SIG # End signature block
