# Status data
<div align="left">
    <p>DevOps_Bootcamp_Final_Project_Team_D</p>
    <img src="https://img.shields.io/badge/AmazonAWS-F01F7A?style=flat-square&logo=AmazonAWS&logoColor=white"/>
    <img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=Terraform&logoColor=white"/>
    <img src="https://img.shields.io/badge/GitHub Actions-2088FF?style=flat-square&logo=GitHub Actions&logoColor=white"/>
    <img src="https://img.shields.io/badge/NodeJS-brightgreen?style=flat-square&logo=Node.js&logoColor=white"/>
<p>드라이버의 상태(출발 및 도착)정보를 받아 소비자에게 전달하는 서비스입니다.</p>
</div>

# 파일 설명

| Command | Description                                    |
| ---------- | ---------------------------------------------- |
| main |  terraform cloud를 사용하기 위한 tf 파일      |
| apigatway-status-lambda |  apigatway와 status-lambda 를 연결하기 위한 tf 파일           |
| dynamoDB |  DynamoDB를 생성하기 위한 tf 파일           |
| status-lambda |  상태 메세지를 dynamoDB로 보내기 위한 람다                 |
| status-lambda-iam | status-lambda에서 DynamoDB를 접근하기 위한 IAM-ROLE 권한                   |
| hook-lambda | DynamoDB 트리거를 통해 디스코드로 상태 메세지를 보내기 위한 람다       |
| hook-lambda-iam | hook-lambda에서 DynamoDB를 접근하기 위한 IAM-ROLE 권한                 |
| statuslambda-handler| satus-lambda에서 사용할 js 파일|
| hooklambda-handler|hook-lambda에서 사용할 js파일과 모듈파일|
| files| 람다js 자동배포를 위한 archive_file|
