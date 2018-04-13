do
{
  Clear-Host
  Clear-Content -Path D:\code\PowerShell\dashboards\data\emails.txt
  $Outlook = New-Object -ComObject Outlook.Application
  $OutlookInbox = $Outlook.session.GetDefaultFolder(6)
  Set-Content -Path D:\code\PowerShell\dashboards\data\emails.txt -Value ($OutlookInbox.Items.Restrict('[UnRead] = True')).Count
  Write-Host "Starting Sleep"
  Start-Sleep -Seconds 20
}
while (1 -eq 1)
