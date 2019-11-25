# Tech time talk

Result of stumbling across the [AWS modern application workshop](https://github.com/aws-samples/aws-modern-application-workshop);
investigates how AWS services can be used to run Docker containers, and implement continuous delivery.

## Anatomy of Project

### `1-docker`

- Introduces Docker.
- Builds a simple Go web application as a Docker image.
- Stores the image in an [AWS Elastic Container Registry](https://aws.amazon.com/ecr/). 

### `2-ecs`

- Introduces [AWS Elastic Container Service](https://aws.amazon.com/ecs/).
- Deploys the Docker image from `1-docker` using ECS.

### `3-code-pipeline`

- Introduces [AWS CodeBuild](https://aws.amazon.com/codebuild/) and [AWS Pipeline](https://aws.amazon.com/codepipeline/).
- Sets up a code pipeline which builds the Docker image from `1-docker` and deploys it to the ECS service created in `2-ecs`.
- Code pipeline additionally updates the application infrastructure.
- Code pipeline webhook added so that pipeline will be started when `master` branch is updated.
