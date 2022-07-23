---
title: "EasyKube"
description: "Managed Kubernetes in AWS and a custom Cloud"
icon: "fas fa-business-time"
draft: false
---



<center>
    <video controls width="60%" poster="videos/easykube/easykube-thumbnail.png">
        <source src="videos/easykube/easykube.webm"
                type="video/webm">
        <source src="videos/easykube/easykube.mp4"
                type="video/mp4">
        Use a newer browser to see this video.
    </video>
</center>

# Your custom private cloud 

Managed Kubernetes service.

Are you looking for a way to host your data and applications in a secure, private cloud, out of the hands of big corporations?

**EasyKube is your solution**

<hr>
<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Free Demo to see EasyKube in action!</button></a>
</center>
<hr>

1. [The advantages of a custom private cloud](/services/easykube/#the-advantages-of-a-custom-private-cloud)
2. [Top 5 reasons to use a private cloud over the public cloud](/services/easykube/#top-5-reasons-to-use-a-private-cloud-over-the-public-cloud)
3. [The simplicity of EasyKube](/services/easykube/#the-simplicity-of-easykube)
4. [EasyKube in AWS/Google Cloud/Azure](/services/easykube/#and-what-if-i-want-to-host-in-the-public-cloud)
5. [Pricing](/services/easykube/#easykube-pricing-overview)

## The advantages of a custom private cloud

So, why should you care to create your own cloud, instead of using public cloud providers?

There are several advantages and disadvantages depending on your background.
Let us say you store sensitive, intellectual data, like patents or data that gives you a competitive advantage. As you might know, the [Patriot Act](/services/easyhost/) comes with the problem, that US cloud providers have to give your data to the US government if it is supposed to be linked to terrorism.

But even if that is not the case, there are laws for clinics or healthcare providers that force you to host your data in Germany, or at least the EU. 

Does this mean I have to use a "lesser" cloud to comply and protect data? "lesser" is not the case, as Kubernetes is actually offering you a lot of technical advantages over public clouds. Let's find out!

### Top 5 reasons to use a private cloud over the public cloud

##### 1. No vendor lock

Public clouds offer you fully integrated products, like serverless functions, that are incompatible with other clouds. Even though it's easy, as they are ready to use in seconds, it comes as a surprise if the cloud provider increases the prices. Should you re-build your whole architecture to fit into another cloud? Or would you rather "suck it up", and pay the increased price?

To avoid this situation, you should **always be able to "plug and play" your applications**, switching providers like your fuel station. This is possible if you are using frameworks like Kubernetes and EasyKube. 

You are writing your applications as code, called IAAS (infrastructure as code), using barebones Kubernetes yaml files, or more complex Terraform scripts.

If the cloud provider increases their rates, you can just move to antother one in seconds. 

##### 2. Your data in your hands

{{< notice "info" >}}
In the last 18 months, 79% of companies have experienced at least one cloud data breach; even more alarmingly, 43% have reported 10 or more breaches in that time. <a href="https://expertinsights.com/insights/50-cloud-security-stats-you-should-know/" target="_blank">Source</a>
{{< /notice >}}

Many companies who move to the public cloud have previously hosted their applications and data on a local machine, mostly isolated from the internet. What works in a private, secured room is not working in the public cloud though.

This is why many companies leave ports open that should be closed, or access their cloud via insecure channels. A password like "Tommie123" might work in a local network, where only 30 people have access, but not in the public cloud, where millions of bots constantly scan for security leaks.

If you are using EasyKube and Kubernetes, your data runs on your private servers, that you can even completely isolate from the internet if you want. Additionally, EasyKube comes with integrated security features like:

- SSL certificates (Letsencrypt)
- Automatic HTTPS forwarding (even if you try to run HTTP)
- Port isolation. Only port 80 and 443 (internet) are open by default

##### 3. No unexpected costs

Even though prices seem to be comparable to in-house hosting, the public cloud can cause unexpected costs. This is due to the fact, that oftentimes traffic is charged on top, or logging and monitoring cost extra. All this is automatically integrated if you are using Kubernetes and EasyKube. 

Let us take a look at an example. If you are hosting a website in a virtual instance, the usual price for a 2 vCPU, 2 GB RAM machine is around 10$. This seems okay, but even having ~10.000 visitors a month pushes traffic costs to around 50$, which increases the initial cost of 10$ to 60$ total. And this does not even include backups, logging and monitoring. All this is integrated in Kubernetes and EasyKube by default.

##### 4. Simplicity

Even though public cloud providers offer a huge variety of services, they become quite complex if everything needs to be connected with each other. Let us say you just want to deploy a simple website in a virtual machine.

If you are starting the machine, you need to create security groups, networking, permissions, volumes, zones and connections, which are partially unavailable because some services are only supported in some regions... And then it is throwing an error because your user does not have enough permissions. What permission do I need?
...

EasyKube saves you a lot of headache, because we are breaking down the complexity. With EasyKube you can actually deploy a whole application, including networking, persistence and domain based routing in less than 80 lines of code, where most is just copy-and-paste.


##### 5. Cost savings

Whilst a public cloud cluster starts at at least 140€ a month, we are starting as low as 10$! Also our general cost is about a tenth of the public cloud Kubernetes cost. 

<hr>
<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Free Demo to see EasyKube in action!</button></a>
</center>
<hr>

# The simplicity of EasyKube

Let us take a look at an example to use EasyKube. EasyKube supports:
- **Persistent Volumes** - backed up to 3 availability zones
- **Horizontal Autoscaling** - Scale your applications depending on the load
- **HTTPS** by default, with certificates by LetsEncrypt
- **Easy Domain Routing** with both our and your custom domain
- **Auto updating Nodes** - Avoid security breaches with old nodes
- **Up to Date Kubernetes** - Auto-updating Kubernetes
- **Load Balancers** - Use load balancers instead of Domain routing if you want
- **Two data centers in Germany** - to get reliant nodes. If one data center crashes, your applications will switch over to the second datacenter automatically
- **Additionaly centers in the US and Finland** - For global scaling
- **Backups using Velero** 
- **Custom support** - we are always there to help you

## EasyKube Deployment example

Let us say you have some html code and want to publish it to the web.

With EasyKube this comes down to three easy steps 

1. Build your docker image
2. Copy our starter template
3. Deploy

##### 1. Building your html docker image

Dockerfile
```bash
FROM nginx:alpine
COPY ./html /var/www/html/
```

then execute and push to Dockerhub

```python
docker build -t easykube/myapp:latest .
docker push easykube/myapp:latest
```

{{< notice "info" >}}
  We can help you with the building as well - [booking our consulting hours](/pricing/)
{{< /notice >}}

{{< notice "info" >}}
  We also provide private repos hosted in EasyHost. [Contact us for more information](/contact)
{{< /notice >}}

##### 2. Copy and paste into our starter template

you just need to switch out the "image name" and give your deployment a name. The namespace will be provided by us.

```yaml
# defining our deployment, you basically just need to change the "image name", "deployment name" and "namespace".
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: deploymentname
  name: deploymentname
  namespace: yournamespace(provided)
spec:
  replicas: 1
  selector:
    matchLabels:
      app: deploymentname
  strategy:
    type: RollingUpdate
  template:
    metadata:      
      labels:
        app: deploymentname
    spec:
      containers:
        - image: easykube/myapp:latest
          name: deploymentname
          ports:
            - containerPort: 80
          resources: {}
status: {}
---
apiVersion: v1
kind: Service
metadata:
  labels:
    app: deploymentname
  name: deploymentname-service
  namespace: yournamespace(provided)
spec:
  # type: ClusterIP
  ports:
    - name: "80"
      port: 80
      targetPort: 80
  selector:
    app: deploymentname
```

and copy paste your name into the ingress. we also support custom domains.

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: main-ingress
  namespace: yournamespace(provided)
  annotations:
    kubernetes.io/ingress.class: "public"   
    nginx.ingress.kubernetes.io/ssl-redirect: "true"
    nginx.ingress.kubernetes.io/force-ssl-redirect: "true" 
    nginx.ingress.kubernetes.io/proxy-body-size: "4000m"
    nginx.org/client-max-body-size: "4000m"
    cert-manager.io/issuer: "letsencrypt-prod"
spec:
  tls:
  - hosts:
   - web.easycloudhost.de
    secretName: datafortress-tls
  rules:
  - host: web.easycloudhost.de
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: deploymentname-service
            port:
              number: 80
```

**What's happening in the background?**

- automatic routing
- automatic volumes
- automatic scaling (needs to be set up by us)
- automatic HTTPS forwarding and free LetEncrypt certificate

##### 3. Deploy

```bash
kubectl apply -f ./yourfiles/
```

and **DONE**

Easy as that. 

<hr>
<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Free Demo to see EasyKube in action!</button></a>
</center>
<hr>

## And what if I want to host in the public cloud?

That is of course possible as well. Just [contact us](/contact) to get an individual offer.

## EasyKube Pricing overview


<div style="overflow-x:auto;">

| <div style="width:150px">Feature</div>   | EasyKube XS   | EasyKube S    | EasyKube M  | EasyKube L | EasyKube Mammoth | Custom |
| ------------- |:-------------:| -----:| -----:| -----:| -----:| -----:|
| Hosting in Germany | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| SSL/HTTPS (letsencrypt) | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Load Balancers (extra cost) | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| 4 TB traffic / m | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Free subdomain of easycloudhost.de | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Multi AZ | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Custom Domain | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Shared cluster | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; |
| Velero Backups | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; |
| Horizontal Autoscaling | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; |
| Cluster Autoscaling | &#x274C; | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; |
| Support | extra | extra | 2h/month | 5h/month | &#x2705; | &#x2705; |
| Volumes included [2] | 10 GB | 20 GB | 100 GB | 500 GB | &#x2705; | &#x2705; |
| Uptime guarantee |  &#x274C; | 80% | 95% | 99% | 99.9% | &#x2705; |
| Nr nodes | 1 | 1 | 3 | 5 | 10 | 100 | custom |
| vCPU total | 1 | 3 | 9 | 15 | 30 | 300 | custom |
| RAM GB total | 1 | 3 | 9 | 20 | 40 | 400 | custom |
| Monthly payment | <a href="https://buy.stripe.com/7sI7uVbJa4gU784dR9" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">12.99€/m</button></a> | <a href="https://buy.stripe.com/6oEdTj8wY8xacsodRb" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">29.99€/m</button></a> | <a href="https://buy.stripe.com/cN28yZ00sdRu784dRd" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">79.99€/m</button></a> | <a href="https://buy.stripe.com/fZe3eF14w14IgIEfZm" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">149€/m</button></a> | <a href="https://buy.stripe.com/5kA02t8wY6p2gIE8wW" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">2,999€/m</button></a> | <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Contact us</button></a> |
| **Yearly payment -33%** | <a href="https://buy.stripe.com/14k16x8wYfZC9gccN4" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">9€/m</button></a> | <a href="https://buy.stripe.com/7sIbLbbJa14IcsoaEY" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">19€/m</button></a> | <a href="https://buy.stripe.com/9AQ3eF3cE3cQbokeVg" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">55.75€/m</button></a> | <a href="https://buy.stripe.com/bIY3eF8wYcNq4ZW6oN" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">104.20€/m</button></a> | <a href="https://buy.stripe.com/28o7uV6oQcNqakg5kL" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">2,100€/m</button></a> | <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Contact us</button></a> |
| Comparable price [4] | 73$/m + nodes = 103$/m | 153$/m | 243$/m  | 893$/m | 21.000$/m | custom |
 
**We can offer Backups and everything for smaller packages as well, choose "custom" to get an individual offer**

**Prices are automatically converted to your local currency on checkout**
</div>

{{< notice "info" >}}
  [2] 10 GB Minimum, 10 TB Maximum per single volume
{{< /notice >}}

{{< notice "info" >}}
  [4] https://calculator.aws/#/addService/EKS
{{< /notice >}}


<hr>
<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Free Demo to see EasyKube in action!</button></a>
</center>
<hr>