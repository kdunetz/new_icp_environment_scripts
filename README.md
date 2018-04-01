# new_icp_environment_scripts

git clone https://github.com/kdunetz/new_icp_environment_scripts.git

is_icp_up - a simple shell script to ping me when ICP is ready to log into
pv.yaml - a set of Persistent Volume definitions to install in new environment
create_pv_directories.sh - shell script to create the directories on the HD plus run the kubectl command
sample_ldap_ldif.ldif_ibm_com - sample LDAP ldif file to import into ICP LDAP database via the LDAP admin php tool
install_ldap.sh - shell script to install the LDAP engine on a server PLUS start the LDAP admin PHP tool

To run these scripts, you might need to be logged in as root and you will need to run the kubectl login commands for the target environment

kubectl config set-cluster mycluster.icp --server=https://35.174.65.112:8001 --insecure-skip-tls-verify=true
kubectl config set-context mycluster.icp-context --cluster=mycluster.icp
kubectl config set-credentials admin --token=eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF0X2hhc2giOiJuYmYtUmFtZnZ2NGxCVkxuWE8wYndRIiwiaXNzIjoiaHR0cHM6Ly9teWNsdXN0ZXIuaWNwOjk0NDMvb2lkYy9lbmRwb2ludC9PUCIsImF1ZCI6IjYyN2YxMjMzOGU5MDQwZmVlMjFjZTg2MzE0ODJiMzIxIiwiZXhwIjoxNTIyNjYwOTAyLCJpYXQiOjE1MjI2MTc3MDJ9.H7ALTrvI1nSrbmT0HTDyXxdoMu06DZWoCdwH9iHEUgODIQV_dSgcRSpJ69oYg7vfN4M-ngk7Iufm7NOakmhvcveR_IYx_q_zIuHCvzu5WZuAtnZqbdTxRVpb4Cw_f6G-H-NW_vERwAGl6BW0tYU58_pZNIZiRxdrOWsp5nqbut-DGUNEy2VDMRKJqo5X533Q78TiVQc9N7kTfnLv3OeHcDUJjJnlLJnChNTCAsLHiJHMdAf2IVUjrInyVsvpJMVwudPWZk1S_GGx7u9BKggpTUOh1j4ntTcUY0EM1JyMmCC_MV1W0dcGIGE6ecYCqhXwc_hijD2ySANzOz_IhHIJOA
kubectl config set-context mycluster.icp-context --user=admin --namespace=default
kubectl config use-context mycluster.icp-context

