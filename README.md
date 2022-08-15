[![CircleCI](https://dl.circleci.com/status-badge/img/gh/okikiolumide/DevOps_Microservice/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/okikiolumide/DevOps_Microservice/tree/main)

# Project Overview
This project is setup to operationalize Machine Learning Microservice API in a provided file, app.py that serves out predictions (inference) about housing prices through API calls.

The python flask app is a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More about the data can be read, which was initially taken from Kaggle, on the data source site. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


## Setup Environment
- Clone repository
- Create (and activate) a new environment, named .devops with Python 3. If prompted to proceed with the install (Proceed [y]/n) type y.
  
  `python3 -m venv ~/.devops &&
  source ~/.devops/bin/activate`
  
 - Install dependencies via project Makefile
    
    `make install`
    
 ## How to run web app and scripts
 
 - Run app locally: `python app.py`
 - Run app in docker: `./run_docker.sh`
 - Run app in kubernetes: `./run_kubernetes.sh`
 
 ## Repository Files
 
 - **Dockerfile**: builds app images 
 - **Makefile**: Install dependencies
 - **app.py**: contains source code
 - **make_prediction.sh**: makes prediction
 - **run_docker.sh**: Tags and run the docker image locally
 - **upload_docker.sh**: Tags and pushes docker image to docker hub
 - **run_kubernetes.sh**: Deploys the docker image in kubernetes using kubectl
