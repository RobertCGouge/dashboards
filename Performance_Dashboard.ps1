$dashboard = New-UDDashboard -Title 'Test' -Content {}
Start-UDDashboard -Port 8443 -Dashboard $dashboard