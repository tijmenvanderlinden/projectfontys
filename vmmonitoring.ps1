# temporary bypass execution policy
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

$project = "my-project-52977-tryout"
$zone = "europe-west1-b"
$diskName = "parsec-vm-main-vpc-a-tijmen-20240526-130549"
$snapshotName = "snapshot-" + (Get-Date -Format "yyyyMMddHHmmss")

# auth with goog
gcloud auth activate-service-account --key-file="c:\Users\tijmenvanderlinden01\Downloads\my-project-52977-tryout-a17149cd5750.json"

# creacte snapshot
gcloud compute disks snapshot $diskName --snapshot-names $snapshotName --zone $zone --project $project

