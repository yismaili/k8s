[k8s.pdf](https://github.com/yismaili/k8s/files/13403819/k8s.pdf)

## What is Kubernetes?

 is an open source orchestration tool for managing micro-services applications across a distributed cluster of nodes.
Key features of Kubernetes include:

   - Container Orchestration: Kubernetes automates the deployment, scaling, and management of containerized applications.
   - Cluster Management: Kubernetes manages a cluster of nodes (physical or virtual machines) and ensures that containers are running and accessible on these nodes.
   - Scaling: Kubernetes allows you to scale your application up or down based on demand.
   - Service Discovery and Load Balancing: Kubernetes provides built-in mechanisms for service discovery and load balancing, making it easier to manage the network of microservices.
   - Rolling Updates and Rollbacks: Kubernetes facilitates rolling updates, allowing you to update your applications with minimal downtime. 
   - Self-healing: Kubernetes monitors the health of applications and automatically restarts containers or replaces failed containers. 
   - Declarative Configuration: Kubernetes allows you to describe the desired state of your applications using YAML or JSON files 
   - Multi-Cloud and Hybrid Cloud Support: Kubernetes can run on various cloud providers and on-premises, providing flexibility and avoiding vendor lock-in.

# Kubernetes Components and Architecture

   - K8s Master Node:
    the master server that will create the cluster and it has all the components and service that manage, plan, schedule and monitor all the worker nodes.

   - Worker Node:
    the server that has host the applications as Pods and containers.

    
