# This will fail because local manaifests are not supported.
# This command will fail if the application has multiple manaifests in the folder.
# Review 4 and 5 for more information on how to install applications with multiple manifests and winget security.
winget install --manifest <manfiest>.installer.yaml