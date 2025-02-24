
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Applies customizations to the Dev Box.
.Description
Applies customizations to the Dev Box.
.Example
{{ Add code here }}
.Example
{{ Add code here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.IDevCenterdataIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.Api20231001Preview.ICustomizationGroup
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDevCenterdataIdentity>: Identity Parameter
  [ActionName <String>]: The name of an action that will take place on a Dev Box.
  [CatalogName <String>]: The name of the catalog
  [CustomizationGroupName <String>]: A customization group name.
  [CustomizationTaskId <String>]: A customization task ID.
  [DefinitionName <String>]: The name of the environment definition
  [DevBoxName <String>]: The name of a Dev Box.
  [EnvironmentName <String>]: The name of the environment.
  [Id <String>]: Resource identity path
  [OperationId <String>]: The id of the operation on a Dev Box.
  [PoolName <String>]: The name of a pool of Dev Boxes.
  [ProjectName <String>]: The DevCenter Project upon which to execute operations.
  [ScheduleName <String>]: The name of a schedule.
  [TaskName <String>]: A customization task name.
  [UserId <String>]: The AAD object id of the user. If value is 'me', the identity is taken from the authentication context.

TASK <ICustomizationTask[]>: Tasks to apply. Note by default tasks are excluded from the response when listing customization groups. To include them, use the `include=tasks` query parameter.
  Name <String>: Name of the task.
  [DisplayName <String>]: Display name to help differentiate multiple instances of the same task.
  [Parameter <ICustomizationTaskParameters>]: Parameters for the task.
    [(Any) <String>]: This indicates any property can be added to this object.
.Link
https://learn.microsoft.com/powershell/module/az.devcenterdata/new-azdevcenteruserdevboxcustomizationgroup
#>
function New-AzDevCenterUserDevBoxCustomizationGroup {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.Api20231001Preview.ICustomizationGroup])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Uri')]
    [System.String]
    # The DevCenter-specific URI to operate on.
    ${Endpoint},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Path')]
    [System.String]
    # A customization group name.
    ${CustomizationGroupName},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Path')]
    [System.String]
    # The name of a Dev Box.
    ${DevBoxName},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Path')]
    [System.String]
    # The DevCenter Project upon which to execute operations.
    ${ProjectName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Runtime.DefaultInfo(Script='"me"')]
    [System.String]
    # The AAD object id of the user.
    # If value is 'me', the identity is taken from the authentication context.
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.IDevCenterdataIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.Api20231001Preview.ICustomizationTask[]]
    # Tasks to apply.
    # Note by default tasks are excluded from the response when listing customization groups.
    # To include them, use the `include=tasks` query parameter.
    # To construct, see NOTES section for TASK properties and create a hash table.
    ${Task},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateExpanded = 'Az.DevCenterdata.private\New-AzDevCenterUserDevBoxCustomizationGroup_CreateExpanded';
            CreateViaIdentityExpanded = 'Az.DevCenterdata.private\New-AzDevCenterUserDevBoxCustomizationGroup_CreateViaIdentityExpanded';
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('UserId')) {
            $PSBoundParameters['UserId'] = "me"
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
