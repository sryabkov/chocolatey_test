 Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force -Scope Process -ErrorAction Stop

try {
    #install chocolatey
  
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')) 
    choco install dotnet4.5.1
    choco install aspnetmvc4.install    
    choco windowsfeatures NetFx4ServerFeatures                                       
    choco windowsfeatures NetFx4                                                     
    choco windowsfeatures NetFx4Extended-ASPNET45                                    
    choco windowsfeatures MicrosoftWindowsPowerShellRoot                             
    choco windowsfeatures MicrosoftWindowsPowerShell                                 
    choco windowsfeatures ServerCore-FullServer                                      
    choco windowsfeatures IIS-WebServerRole                                          
    choco windowsfeatures IIS-WebServer                                              
    choco windowsfeatures IIS-CommonHttpFeatures                                     
    choco windowsfeatures IIS-Security                                               
    choco windowsfeatures IIS-RequestFiltering                                       
    choco windowsfeatures IIS-StaticContent                                          
    choco windowsfeatures IIS-DefaultDocument                                        
    choco windowsfeatures IIS-DirectoryBrowsing                                      
    choco windowsfeatures IIS-HttpErrors                                             
    choco windowsfeatures IIS-HttpRedirect                                           
    choco windowsfeatures IIS-ApplicationDevelopment                                 
    choco windowsfeatures IIS-NetFxExtensibility45                                   
    choco windowsfeatures IIS-ISAPIExtensions                                        
    choco windowsfeatures IIS-ISAPIFilter                                            
    choco windowsfeatures IIS-ASPNET45                                               
    choco windowsfeatures IIS-HealthAndDiagnostics                                   
    choco windowsfeatures IIS-HttpLogging                                            
    choco windowsfeatures IIS-Performance                                            
    choco windowsfeatures IIS-HttpCompressionStatic                                  
    choco windowsfeatures IIS-WebServerManagementTools                               
    choco windowsfeatures IIS-ManagementConsole                                      
    choco windowsfeatures WCF-Services45                                             
    choco windowsfeatures WCF-TCP-PortSharing45                                      
    choco windowsfeatures User-Interfaces-Infra                                      
    choco windowsfeatures Server-Gui-Mgmt                                            
    choco windowsfeatures RSAT                                                       
    choco windowsfeatures WindowsServerBackupSnapin                                  
    choco windowsfeatures Printing-Client                                            
    choco windowsfeatures Printing-Client-Gui                                        
    choco windowsfeatures MicrosoftWindowsPowerShellISE                              
    choco windowsfeatures Server-Gui-Shell                                           
    choco windowsfeatures Internet-Explorer-Optional-amd64                           
    choco windowsfeatures KeyDistributionService-PSH-Cmdlets                         
    choco windowsfeatures TlsSessionTicketKey-PSH-Cmdlets                            
    choco windowsfeatures MicrosoftWindowsPowerShellV2                               
    choco windowsfeatures Server-Psh-Cmdlets                                         
    choco windowsfeatures ServerCore-WOW64                                           
    choco windowsfeatures ServerCore-EA-IME-WOW64                                    
    choco windowsfeatures FileAndStorage-Services                                    
    choco windowsfeatures Storage-Services                                           
    choco windowsfeatures Printing-XPSServices-Features                              
    choco windowsfeatures ServerCore-EA-IME                                          
    choco windowsfeatures ServerCore-Drivers-General                                 
    choco windowsfeatures Server-Drivers-General                                     
    choco windowsfeatures Server-Drivers-Printers                                    
    choco windowsfeatures SmbDirect                                                  
    choco windowsfeatures SMB1Protocol                                               
    choco install aspnetmvc4.install
    choco install ISAPIRewrite
    #newrelic
    choco install Mdsol_NewRelic -packageParameters "x64_3.11.296.0" -force -source C:\test\Mdsol_NewRelic
   try 
   {
        choco install sumologic
    }
    catch {
        Start-Sleep -s 10
        write-host "attempt sumologic installation second time"
        choco install sumologic
    }  
    Finally{
     #need to run second time. First time it fails all the time and cach block does not work
      Start-Sleep -s 10
      write-host "attempt final sumologic installation"
      choco install sumologic -force
    }
    choco install webdeploy
    choco install webpi
    choco install isapirewrite    
    
    Write-ChocolateySuccess '__NAME__'
}
 catch {
  Write-ChocolateyFailure '__NAME__' $($_.Exception.Message)
  throw
}