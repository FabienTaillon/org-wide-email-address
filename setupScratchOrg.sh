echo '##### CREATING SCRATCH ORG #####'
sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias MyScratchOrg --setdefaultusername
echo '##### CREATING ORG WIDE EMAIL ADDRESS #####'
sfdx force:data:record:create --sobjecttype OrgWideEmailAddress --values "Address=fabien@texei.com IsAllowAllProfiles=true DisplayName=Fabien" --targetusername MyScratchOrg
echo '##### PUSHING METADATA #####'
sfdx force:source:push --targetusername MyScratchOrg
echo '##### OPENING SCRATCH ORG #####'
sfdx force:org:open --targetusername MyScratchOrg