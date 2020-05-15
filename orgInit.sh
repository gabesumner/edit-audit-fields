# Create the demo org
sfdx force:org:create -f config/project-scratch-def.json --setalias edit-audit-fields --setdefaultusername

# Push the security settings first, otherwise the push will fail.
sfdx force:source:deploy -m Settings:Security

# Push the metadata into the new scratch org.
sfdx force:source:push

# Assign user the permset
sfdx force:user:permset:assign -n EditAuditFields

# Open the org.
sfdx force:org:open