---
title: "EasyScale"
description: "Scale your applications and make them faster"
icon: "fas fa-business-time"
draft: false
---



<!-- <center>
    <video controls width="60%" poster="videos/EasyScale/EasyScale-thumbnail.png">
        <source src="videos/EasyScale/EasyScale.webm"
                type="video/webm">
        <source src="videos/EasyScale/EasyScale.mp4"
                type="video/mp4">
        Use a newer browser to see this video.
    </video>
</center> -->

# Improving speed and reliability of your applications with EasyScale

Page load times are important for both your clients and employees. Just a **2 second increase in load times can cause a client to leave your website** ([source](/services/websites/)).

Additionally, you might have created an application which handled the load of some users just fine, but struggles to keep up with new users?

**EasyScale is your solution**

<hr>
<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Free 15-minute consultation on EasyScale</button></a>
</center>
<hr>

1. [Top 5 reasons for slow applications](/services/easyscale/#top-5-reasons-for-slow-applications)
2. [How can I scale my application?](/services/easyscale/#how-can-i-scale-my-application)

## Top 5 reasons for slow applications

Traditional applications are created as huge, single-application programs. Whilst this is speeding up development, it **scales really bad**.

<center>
    <img loading="lazy" style="width:80%" alt="monolithic vs microservice architecture" src="/images/services/easyscale/microservices-and-monolithic-architectures.jpg" />
    <p>Monolithic vs Microservice architecture. <a href="https://www.bmc.com/blogs/microservices-architecture/" target="_blank">Image by Rancher</a></p>
</center>

You might be asking yourself: Why is my application or website so slow? Usually it is breaking down to 4 simple reasons.

#### 1. No Multiprocessing

If your application is for example not supporting multiprocessing, it can only run one function at a time. Let us say you are querying a database every time a link is called. If **no multiprocessing** is used, only one piece of data can be retrieved from the database at a time, with the other ones being "on hold". 

#### 2. No Decoupling

Additionally, imagine one part of your application failing. Will this block all the other parts until your applications comes back online? If no **decoupling** is happening the answer is yes.

The answer is called **decoupling**. Decoupling means, you are **splitting your application into smaller microservices**, that only do one thing, and connect them with a **message queue** like RabbitMQ, such that one failing part of your application is not affecting other parts.

Another nice benefit of this is, that **server resources** can be distributed to the part where they are required the most right now. Let us say you do not have much traffic on the frontend, as only some users visit your website right now, but a lot of load on backend calculations. In traditional applications each part would only have an equal part of the resources, which means the frontend is idling, whilst the backend is overloaded. 

When splitting up your application into **Microservices**, the **load is automatically distributed to where it matters most**. Meaning that in our example, the frontend will have fewer resources than the backend, at least for this moment where it is required.

#### 3. Slow Databases

Then, a lot of SQL databases do **not support horizontal scaling**. This means, that you can only buy a bigger and bigger server, which tends to get quite expensive as only mass-produced servers (smaller ones) are cheap to use. Horizontal scaling means having a lot of "smaller" servers, that each run the same databases. There are databases that support horizontal scaling, like **MongoDB and [EasyDB](/services/easydb/)**, which can help reduce cost and speed up slow databases.

#### 4. No distributed computing

You should never run software on just one server. If that server is either slow or completely offline, your application will fail.

**The goal is, to distribute your application over several servers**.
This can be done with either using a FAAS Framework like [EasyFAAS](/services/easyfaas/) or AWS Lambda, or to use a container management framework like [EasyKube](/services/easykube/) or Kubernetes.

That way, when one server becomes slow or offline, your applications will automatically be switched to another server.

#### 5. No autoscaling

Closely related to the previous point, there are ways to let your application scale to the demand. This is called **autoscaling**. Let us take the classic "Prime day" example. Once a year, Amazon is offering a huge sale, which results in over 100 times the normal server load. Then on other days, like christmas, traffic is almost nonexistent, leaving servers idle. 

The traditional solution would be, to just buy a huge server that can handle the "Prime day". But this causes it to be **idle on 90% of the days, causing a lot of unnecessary costs**.
The other way would be to just "ignore" traffic peaks and **loose those additional customers**, which is not ideal either.

The answer is to let the Application scale to the current demand. This can be achieved with a FAAS Framework like [EasyFAAS](/services/easyfaas/) or AWS Lambda, or with using a container management framework like [EasyKube](/services/easykube/) or Kubernetes.

## How can I scale my application?

EasyScale is a set of the abovementioned services, which will help you to scale your application.
Our usual workflow looks like this:

1. **Free 15 minute consultation** on your application
2. An **identification workshop** to identify weak parts in your application
3. **Offer** from our side, sorted according to the priority of effectiveness
4. Splitting the application into smaller parts, called **Microservices**
5. Introducing **Message queues** to decouple these Microservices, reducing dependencies
6. Using a Framework like **FAAS** or **Kubernetes** to distribute the load to multiple servers and support autoscaling
7. Switch to **horizontal autoscalable Databases** to reduce costs and improve speed 


<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Free 15-minute consultation of how we can scale your application</button></a>
</center>
<hr>