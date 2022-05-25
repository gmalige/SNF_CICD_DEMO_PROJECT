CREATE OR REPLACE TABLE DEV_CONFIG.CICD_LOGS.TBL_CICD_LOGS
(ENV_NAME VARCHAR(10) COMMENT 'Database env name. LOVs like DEV, QA,PRE_PROD, PROD'
,VESION_NUM NUMBER(38,10) COMMENT 'Script version which substr from script name'
,SCRIPT_NAME VARCHAR COMMENT 'Name of the script which is created by developers to deploy DB objects'
,SCRIPT_DESCRIPTION VARCHAR COMMENT 'Descript of scripts'
,SCRIPT_PATH VARCHAR COMMENT 'Git path details of scripts'
,SCRIPT_AUTHOR VARCHAR COMMENT 'Scripts developer name'
,SCRIPT_DEPLOYED_TIMESTAMP TIMESTAMP_LTZ(6) COMMENT 'Script deployed timestamp'
,SCRIPT_DEPLOYMENT_DURATION_IN_MINS NUMBER(38,10) COMMENT 'Total duration in mins of script deployment by CICD pipeline'
,SCRIPT_DEPLOYED_STATUS VARCHAR COMMENT 'Script deployment status LOVs lile SUCCESS FAILURE'
,SCRIPT_DEPLOYMENT_ERROR VARCHAR COMMENT 'Error message in details' 
,SCRIPT_CHECKSUM VARCHAR(32) COMMENT 'Script name checksum using MD5 function')
COMMENT = '{ "OBJECT_TYPE":"TABLE",
             "OBJECT_DETAILS" : {"DATABASE_NAME": "DEV_CONFIG", "SCHEMA_NAME":"CICD_LOGS","TABLE_NAME":"TBL_CICD_LOGS"},
             "AUTHOR":"GMALIGE"
             ,"VERSION":"1.0"
             "JIRA_NUM":"SNOW-1000001"
             ,"DESCRIPTION": "Table to store CICD logs as a part of above mentioned database"
             ,"CREATED_TIMESTAMP": "2022-05-23"}';