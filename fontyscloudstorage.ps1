$bucketName = "backupfileprojectfontys"
$sourceFile = "c:\Users\tijmenvanderlinden01\Downloads\FontysBackUpScript\ChromeSetup.exe"
$destinationFile = "backup/ChromeSetup.exe"

# auth with gcp
gcloud auth activate-service-account --key-file="c:\Users\tijmenvanderlinden01\Downloads\my-project-52977-tryout-a17149cd5750.json"

# copy file to gcp bucket
gsutil cp $sourceFile gs://$bucketName/$destinationFile

