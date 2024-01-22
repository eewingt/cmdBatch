$servers = @(  
    [pscustomobject]@{ServerName='google.com';Port='443'}  
  
    )  
    
foreach ($server in $servers) {  
    $ServerName = $server.ServerName  
    $Port = $server.Port  
    Write-Output "Testing $Port on $ServerName"  
    Test-NetConnection $ServerName -Port $Port  
    }
