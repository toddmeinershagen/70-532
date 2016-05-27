<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="FirstCloudProject" generation="1" functional="0" release="0" Id="6422c56c-e416-4124-853c-e68b8ad8f2dc" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="FirstCloudProjectGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebRole1:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/FirstCloudProject/FirstCloudProjectGroup/LB:WebRole1:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="WebRole1:SecureEndpoint" protocol="https">
          <inToChannel>
            <lBChannelMoniker name="/FirstCloudProject/FirstCloudProjectGroup/LB:WebRole1:SecureEndpoint" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|WebRole1:AzureCS" defaultValue="">
          <maps>
            <mapMoniker name="/FirstCloudProject/FirstCloudProjectGroup/MapCertificate|WebRole1:AzureCS" />
          </maps>
        </aCS>
        <aCS name="WebRole1:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/FirstCloudProject/FirstCloudProjectGroup/MapWebRole1:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="WebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/FirstCloudProject/FirstCloudProjectGroup/MapWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/FirstCloudProject/FirstCloudProjectGroup/MapWebRole1Instances" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/FirstCloudProject/FirstCloudProjectGroup/MapWorkerRole1:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/FirstCloudProject/FirstCloudProjectGroup/MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/FirstCloudProject/FirstCloudProjectGroup/MapWorkerRole1Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebRole1:Endpoint1">
          <toPorts>
            <inPortMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:WebRole1:SecureEndpoint">
          <toPorts>
            <inPortMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1/SecureEndpoint" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapCertificate|WebRole1:AzureCS" kind="Identity">
          <certificate>
            <certificateMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1/AzureCS" />
          </certificate>
        </map>
        <map name="MapWebRole1:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1Instances" />
          </setting>
        </map>
        <map name="MapWorkerRole1:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WorkerRole1/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WorkerRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWorkerRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WorkerRole1Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebRole1" generation="1" functional="0" release="0" software="\\vmware-host\Shared Folders\Documents\Visual Studio 2015\Projects\FirstCloudProject\FirstCloudProject\csx\Release\roles\WebRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="SecureEndpoint" protocol="https" portRanges="443">
                <certificate>
                  <certificateMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1/AzureCS" />
                </certificate>
              </inPort>
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;SecureEndpoint&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole1&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0AzureCS" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1/AzureCS" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="AzureCS" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="WorkerRole1" generation="1" functional="0" release="0" software="\\vmware-host\Shared Folders\Documents\Visual Studio 2015\Projects\FirstCloudProject\FirstCloudProject\csx\Release\roles\WorkerRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WorkerRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;SecureEndpoint&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole1&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WorkerRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WorkerRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WorkerRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WebRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="WorkerRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WebRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="WorkerRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WebRole1Instances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="WorkerRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="aa72d939-e6e4-4ba1-8b09-eee566cd23fc" ref="Microsoft.RedDog.Contract\ServiceContract\FirstCloudProjectContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="c4be0b8d-973f-4449-9b26-ab986f7f8957" ref="Microsoft.RedDog.Contract\Interface\WebRole1:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="f425dff3-bf42-49a2-b579-bd2b8b2ee19d" ref="Microsoft.RedDog.Contract\Interface\WebRole1:SecureEndpoint@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/FirstCloudProject/FirstCloudProjectGroup/WebRole1:SecureEndpoint" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>