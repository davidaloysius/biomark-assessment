## Overview
Ruby 2.6.3\
Postgres
 
### Dependencies
[Docker](https://www.docker.com/products/docker-desktop) is required to run this application.

## How to Run the Application
### Getting the Code
Clone the repository in your local machine
```
$ git clonehttps://github.com/davidaloysius/biomark-assessment.git
$ cd biomark-assessment
```

### Running the application
After cloning the project, use these commands below to build and run the application. \
Make sure that Docker is running before running these commands.
```
$ docker-compose build
$ docker-compose up
```
### Database Set-up
Open a new terminal then run the following commands to setup the database.
```
$ docker-compose run web rake db:create
$ docker-compose run web rake db:migrate
```

### Calling the API
Open any API Testing Tool (Postman, Insomnia)
- Create a POST request using this endpoint [http://localhost:3000/patient_labs](http://localhost:3000/patient_labs)
- You can choose this as the payload
  ```
  {
    "date_of_test":"20210227134300",
    "id_number":"IC000A2",
    "patient_name":"Patient A4",
    "gender":"F",
    "date_of_birth":"19940231",
    "lab_number":"QT196-21-124",
    "clinic_code":"QT196",
    "lab_studies":[
      {
        "code":"2085-9",
        "name":"HDL Cholesterol",
        "value":"cancel",
        "unit":"mg/dL",
        "ref_range":"> 59",
        "finding":"A",
        "result_state":"F"
      }
    ],
  }
  ```
  OR
  ```
  {
    "patient_data":{
      "id_number":"IC000A3",
      "first_name":"Patient",
      "last_name":"A5",
      "phone_mobile":"+6500000000",
      "gender":"M",
      "date_of_birth":"19940231",
    },
    "date_of_test":"20210227134300",
    "lab_number":"QT196-21-124",
    "clinic_code":"QT196",
    "lab_studies":[
      {
        "code":"2085-9",
        "name":"HDL Cholesterol",
        "value":"cancel",
        "unit":"mg/dL",
        "ref_range":"> 59",
        "finding":"A",
        "result_state":"F"
      }
    ]
  }
  ```
