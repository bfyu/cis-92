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

values-postgres.yaml:

|Variable Name	|Default Value	|Description|
| --- | --- | --- | 
|database|	mysite|	PostgresSQL database name|
|username|	mysiteuser|	PostgresSQL user name |
|password|	this-is-a-bad|	Postgres  user password |

Primary.Resources.Requests:

|Resource Name	|Default Value	Description|
| --- | --- | --- | 
|memory	|512Mi	|Minimum memory requirement|
|cpu	|500m	|Minimum CPU requirement|
|ephemeral-storage	|100Mi|	Minimum storage requirement|

Primary.Resources.limits
|Resource Name	|Default Value	Description|
| --- | --- | --- | 
|memory	|512Mi	|Minimum memory requirement|
|cpu	|500m	|Minimum CPU requirement|
|ephemeral-storage	|100Mi|	Minimum storage requirement|

Instructions:

Start up command

helm install postgres oci://registry-1.docker.io/bitnamicharts/postgresql --values values-postgres.yaml

kubectl apply -f deployment/


Initilize Database:

kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash

python manage.py migrate

python manage.py createsuperuser


Delete the Kubernetes pod:

kubectl delete -f deployment/

helm uninstall postgres
