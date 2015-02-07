bootstrap_machine.ps1 is Arsen's script using only chocolatey

install_server is Sergei's boxstarter test

To run install_server, on the target server, open a PowerShell command prompt and launch

```
START http://boxstarter.org/package/url?https://raw.githubusercontent.com/sryabkov/chocolatey_test/master/install_server
```

If you run the above START command on a brand new Windows Server, you will get blocked by IE and we'll need to add boxstarter.org to the list of Trusted Sites. Also, for this command to work, the IE has to be the default browser.

Sergei tested his script on a new Windows Server 2012 Datacenter VM and then ran the following script on it:
http://www.alexdresko.com/2014/12/22/automatically-generating-a-chocolatey-install-script/

The result was:

```
PS C:\Users\Medidata> C:\Users\Medidata\Documents\script_server.ps1
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
choco webpi ASPNET45
choco webpi ASPNET_REGIIS_NET4
choco webpi DefaultDocument
choco webpi DirectoryBrowse
choco webpi HTTPErrors
choco webpi HTTPLogging
choco webpi HTTPRedirection
choco webpi IISManagementConsole
choco webpi ISAPIExtensions
choco webpi ISAPIFilters
choco webpi NETFramework452
choco webpi NETFramework4Update402
choco webpi NetFx4
choco webpi NetFx4Extended-ASPNET45
choco webpi NetFxExtensibility45
choco webpi PowerShell
choco webpi PowerShell3
choco webpi PowerShell4
choco webpi RequestFiltering
choco webpi StaticContent
choco webpi StaticContentCompression
choco webpi WASConfigurationAPI
choco webpi WASProcessModel
choco webpi WDeployNoSMO
choco webpi WindowsInstaller31
choco webpi WindowsInstaller45
choco install aspnetmvc4.install
choco install DotNet4.5.2
choco install ISAPIRewrite
choco install temp_BoxstarterPackage
choco install webdeploy
choco install webpi

PS C:\Users\Medidata> 
```
