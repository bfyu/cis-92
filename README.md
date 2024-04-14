# My CIS-92 Project 

This repository has the starter code for CIS-92. 

Author: Brian Yu

config.yaml:
| Variable Name | Default Value | Description |
| --- | --- | --- | 
| Port | 8000 | Default runnign port number | 
| STUDENT_NAME | Brian Yu | Default Student Name |
| SITE_NAME | www.BrianYu.com | Default Site Name |
| DATA_DIR | /data | Default directory Name | 

secret.yaml:
| Variable Name | Default Value | Description |
| --- | --- | --- | 
| Secret-Key | Hidden key | Hidden Secret key | 

Instructions:

Start up command

kubectl apply -f deployment/

Initilize Database:

kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash

python manage.py migrate

python manage.py createsuperuser

Delete the Kubernetes pod:

kubectl delete -f deployment/
