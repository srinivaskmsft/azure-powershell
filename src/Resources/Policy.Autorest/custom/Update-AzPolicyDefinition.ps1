
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
This operation updates an existing policy definition in the given subscription or management group with the given name.
.Description
This operation updates an existing policy definition in the given subscription or management group with the given name.
.Notes
## RELATED LINKS

[Get-AzPolicyDefinition](./Get-AzPolicyDefinition.md)

[New-AzPolicyDefinition](./New-AzPolicyDefinition.md)

[Remove-AzPolicyDefinition](./Remove-AzPolicyDefinition.md)
.Link
https://learn.microsoft.com/powershell/module/az.resources/update-azpolicydefinition
#>
function Update-AzPolicyDefinition {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Policy.Models.IPolicyDefinition])]
[CmdletBinding(DefaultParameterSetName='Name', SupportsShouldProcess=$true, ConfirmImpact='Low')]
[Alias('Set-AzPolicyDefinition')]
param(
    [Parameter(ParameterSetName='Name', Mandatory, ValueFromPipelineByPropertyName)]
    [Parameter(ParameterSetName='SubscriptionId', Mandatory, ValueFromPipelineByPropertyName)]
    [Parameter(ParameterSetName='ManagementGroupName', Mandatory, ValueFromPipelineByPropertyName)]
    [ValidateNotNullOrEmpty()]
    [Alias('PolicyDefinitionName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Path')]
    [System.String]
    # The name of the policy definition to update.
    ${Name},

    [Parameter(ParameterSetName='Id', Mandatory, ValueFromPipelineByPropertyName)]
    [ValidateNotNullOrEmpty()]
    [Alias('ResourceId')]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Path')]
    [System.String]
    # The resource Id of the policy definition to update.
    ${Id},

    [Parameter(ValueFromPipelineByPropertyName)]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Body')]
    [System.String]
    # The display name of the policy definition.
    ${DisplayName},

    [Parameter(ValueFromPipelineByPropertyName)]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Body')]
    [System.String]
    # The policy definition description.
    ${Description},

    [Parameter(ValueFromPipelineByPropertyName)]
    [ValidateNotNullOrEmpty()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Body')]
    [System.String]
    # The policy rule.
    ${Policy},

    [Parameter(ValueFromPipelineByPropertyName)]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Policy.Models.IPolicyDefinitionPropertiesMetadata]))]
    [System.String]
    # The policy definition metadata.
    # Metadata is an open ended object and is typically a collection of key value pairs.
    ${Metadata},

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Policy.Models.IParameterDefinitions]))]
    [System.String]
    # The parameter definitions for parameters used in the policy rule.
    # The keys are the parameter names.
    ${Parameter},

    [Parameter(ValueFromPipelineByPropertyName)]
    [ValidateNotNullOrEmpty()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Body')]
    [System.String]
    # The policy definition mode.
    # Some examples are All, Indexed, Microsoft.KeyVault.Data.
    ${Mode},

    [Parameter(ParameterSetName='ManagementGroupName', Mandatory, ValueFromPipelineByPropertyName)]
    [ValidateNotNullOrEmpty()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Path')]
    [System.String]
    # The ID of the management group.
    ${ManagementGroupName},

    [Parameter(ParameterSetName='SubscriptionId', Mandatory, ValueFromPipelineByPropertyName)]
    [ValidateNotNullOrEmpty()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Path')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(ParameterSetName = 'InputObject', Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Models.IPolicyDefinition]
    ${InputObject},

    [Parameter()]
    [Obsolete('This parameter is a temporary bridge to new types and formats and will be removed in a future release.')]
    [System.Management.Automation.SwitchParameter]
    # Causes cmdlet to return artifacts using legacy format placing policy-specific properties in a property bag object.
    ${BackwardCompatible} = $false,

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Policy.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    # turn on console debug messages
    $writeln = ($PSCmdlet.MyInvocation.BoundParameters.Debug -as [bool]) -or ($PSCmdlet.MyInvocation.BoundParameters.Verbose -as [bool])

    if ($writeln) {
        Write-Host -ForegroundColor Cyan "begin:Update-AzPolicyDefinition(" $PSBoundParameters ") - (ParameterSet: $($PSCmdlet.ParameterSetName))"
    }
}

process {
    if ($writeln) {
        Write-Host -ForegroundColor Cyan "process:Update-AzPolicyDefinition(" $PSBoundParameters ") - (ParameterSet: $($PSCmdlet.ParameterSetName))"
    }

    # Id can be a parameter or from the input object
    if ($Id) {
        $thisId = $Id
    } else {
        $thisId = $InputObject.Id
    }

    # construct id for definition to update
    $resolved = ResolvePolicyDefinition $Name $SubscriptionId $ManagementGroupName $thisId

    $getParameters = Get-ExtraParameters @PSBoundParameters
    $getParameters['Id'] = $resolved.ResourceId

    if ($writeln) {
        Write-Host -ForegroundColor Blue -> Get-AzPolicyDefinition'(' $getParameters ')'
    }

    try {
        $existing = Get-AzPolicyDefinition @getParameters
    }
    catch {
        # treat any error on get as nonexistent
        if ($writeLn) {
            Write-Host -ForegroundColor DarkGray 'Swallowed exception: ' $_
        }
    }

    if (!$existing) {
        throw "[PolicyDefinitionNotFound] : The policy definition '$($resolved.ResourceId)' is not found."
    }

    $calledParameters = @{}
    # populate called parameters from input object if present (these will be overridden by command-line values below)
    if ($InputObject) {
        foreach ($parameterName in $InputObject.Keys) {
            $value = $InputObject.($parameterName)
            if ($value -or ($value -is [array])) {
                $calledParameters.($parameterName) = $value
            }
        }
    }

    # skip $null and empty values to avoid validation failures on pipeline input
    foreach ($parameterName in $PSBoundParameters.Keys) {
        $value = $PSBoundParameters.($parameterName)
        if ($value -or ($value -is [array])) {
            $calledParameters.($parameterName) = $value
        }
    }

    # supply required parameters and remove custom parameters
    $calledParameters.Name = $resolved.Name
    $null = $calledParameters.Remove('Id')
    $null = $calledParameters.Remove('InputObject')


    # convert input/legacy policy parameter to correct set of parameters and remove
    if ($Policy) {
        $resolved = resolvePolicyParameter -ParameterName 'Policy' -ParameterValue $Policy -Debug $writeln
        if ($resolved.policyRule) {
            foreach ($key in $resolved.Keys) {

                if ($key -eq 'name' -or $key -eq 'type' -or $key -eq 'id' -or $key -eq 'policytype') {
                    continue
                }

                $value = $resolved.($key)

                if ($key -eq 'parameters') {
                    $key = 'Parameter'
                    $value = ConvertTo-Json $value -Depth 100
                }

                if ($key -eq 'metadata') {
                    $value = ConvertTo-Json $value -Depth 100
                }

                if (!($calledParameters.($key))) {
                    $calledParameters.($key) = $value
                }
            }

            $calledParameters.Policy = ConvertTo-Json $calledParameters.PolicyRule -Depth 100
            $null = $calledParameters.Remove('PolicyRule')
        }
        else {
            $calledParameters.Policy = ConvertTo-Json $resolved -Depth 100
        }
    }
    elseif ($existing.PolicyRule) {
        $calledParameters.Policy = ConvertTo-Json $existing.PolicyRule -Depth 100
    }

    if (!$calledParameters.Mode) {
        # workaround for service bug: if updating and mode is not in payload, service will change mode: All to Indexed
        $calledParameters.Mode = $existing.Mode
    }

    if (!$calledParameters.Parameter -and $existing.Parameter) {
        $calledParameters.Parameter = ConvertTo-Json $existing.Parameter -Depth 100
    }

    if ($BackwardCompatible) {
        $calledParameters.BackwardCompatible = $true
    }

    if ($writeln) {
        Write-Host -ForegroundColor Blue -> New-AzPolicyDefinition'(' $calledParameters ')'
    }

    New-AzPolicyDefinition @calledParameters
}

end {
}
}