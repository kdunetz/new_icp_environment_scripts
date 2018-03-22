mkdir /storage
mkdir /storage/kad
mkdir /storage/kad/nodered-kad
chmod 0777 /storage/kad/nodered-kad
mkdir /storage/kad/jenkins
chmod 0777 /storage/kad/jenkins
mkdir /storage/kad/CAM_logs
chmod 0777 /storage/kad/CAM_logs
mkdir /storage/kad/CAM_db
chmod 0777 /storage/kad/CAM_db
mkdir /storage/kad/CAM_terraform
chmod 0777 /storage/kad/CAM_terraform
mkdir /storage/vol01-1gi
chmod 0777 /storage/vol01-1gi
mkdir /storage/vol02-1gi
chmod 0777 /storage/vol02-1gi
mkdir /storage/vol03-1gi
chmod 0777 /storage/vol03-1gi
mkdir /storage/vol04-1gi
chmod 0777 /storage/vol04-1gi
mkdir /storage/vol05-1gi
chmod 0777 /storage/vol05-1gi
mkdir /storage/vol06-1gi
chmod 0777 /storage/vol06-1gi
mkdir /storage/vol07-1gi
chmod 0777 /storage/vol07-1gi
mkdir /storage/vol08-1gi
chmod 0777 /storage/vol08-1gi
mkdir /storage/vol09-1gi
chmod 0777 /storage/vol09-1gi
mkdir /storage/vol10-1gi
chmod 0777 /storage/vol10-1gi
mkdir /storage/vol11-5gi
chmod 0777 /storage/vol11-5gi
mkdir /storage/vol12-5gi
chmod 0777 /storage/vol12-5gi
mkdir /storage/vol13-5gi
chmod 0777 /storage/vol13-5gi
mkdir /storage/vol14-5gi
chmod 0777 /storage/vol14-5gi
mkdir /storage/vol15-5gi
chmod 0777 /storage/vol15-5gi
mkdir /storage/vol16-10gi
chmod 0777 /storage/vol16-10gi
mkdir /storage/vol17-10gi
chmod 0777 /storage/vol17-10gi
mkdir /storage/vol18-10gi
chmod 0777 /storage/vol18-10gi
mkdir /storage/vol19-10gi
chmod 0777 /storage/vol19-10gi
mkdir /storage/vol20-10gi
chmod 0777 /storage/vol20-10gi
mkdir /storage/vol21-20gi
chmod 0777 /storage/vol21-20gi
mkdir /storage/vol22-20gi
chmod 0777 /storage/vol22-20gi
mkdir /storage/vol23-20gi
chmod 0777 /storage/vol23-20gi
mkdir /storage/vol24-20gi
chmod 0777 /storage/vol24-20gi
mkdir /storage/vol25-20gi
chmod 0777 /storage/vol25-20gi
mkdir /storage/vol26-50gi
chmod 0777 /storage/vol26-50gi
mkdir /storage/vol27-50gi
chmod 0777 /storage/vol27-50gi
mkdir /storage/vol28-50gi
chmod 0777 /storage/vol28-50gi
mkdir /storage/vol29-50gi
chmod 0777 /storage/vol29-50gi
mkdir /storage/vol30-50gi
chmod 0777 /storage/vol30-50gi
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.4/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl create -f pv.yaml
