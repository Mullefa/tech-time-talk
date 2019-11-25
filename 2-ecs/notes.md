## Running applications

- __ECS__ (Elastic Container Service) is a service which lets you run, stop and manage Docker containers.
- Two launch types:
    - __EC2__: run your containers on EC2 instances which you manage
    - __Fargate__: serverless infrastructure; AWS manages underlying infrastructure for you
    
- A __Task Definition__ is required to run a container on ECS; some parameters it takes:
    - The Docker image to use
    - How much CPU and memory to use
    - ...
    
- A __Service__ lets you run task definitions
    


