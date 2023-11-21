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

   <img width="734" alt="Screen Shot 2023-11-21 at 5 28 44 PM" src="https://github.com/yismaili/k8s/assets/69278312/e0608a1e-dd05-42f5-919d-44ce4c049b29">

 # Kubernetes Master Node Components

   - API server: is the primary management components of kubernetes and is responsible for orchestrating all operations (scaling, updates, and so on) in the cluster.
   - Controller-manager: The Controller Manager is the engine that runs the core control loops, create Pods, watches the state of the cluster, and makes changes to drive status toward the desired state.
   - Replication-Controller: A ReplicationController ensures that a specified number of pod replicas are running at any one time. It makes sure that a pod is always up and available.
   - Node Controller: The node controller is a Kubernetes master component which manages various aspects of nodes.
   - Scheduler: is identify the right node to place a container on based resource limitations or guarantees, taints, tolerations and affinity/anti-affinity roles.
   - etcd cluster: etcd is a critical part of the Kubernetes. etcd database that stores the state of the cluster, including node and workload information in a key/value format.
   - DNS: all Kubernetes clusters should have cluster DNS to resolve name of the containers inside master node as all the above components is containers inside master node
   - Web UI: web-based UI for Kubernetes clusters. It allows users to manage and troubleshoot applications running in the cluster, as well as the cluster itself
   - Container runtime: The container runtime is the software that is responsible for running containers.
# Node (worker) components

   - kubelet: the main service on a node, connect between Master and Node and ensuring that pods and their containers are healthy and running in the desired state. This component also reports to the master on the health of the host where it is running.
   - kube-proxy - a proxy service that runs on each worker node to deal with individual host subnetting and expose services to the external world. It performs request forwarding to the correct pods/containers across the various isolated networks in a cluster.
# Kubectl

kubectl command is a line tool that interacts with kube-apiserver and send commands to the master node. Each command is converted into an API call.


    
