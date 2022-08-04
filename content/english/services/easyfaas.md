---
title: "EasyFAAS"
description: "Function-as-a-service (FAAS) made simple."
draft: false
img: "images/logos/EasyFAAS.png"
---

<!-- ![EasyFAAS Logo](images/logos/EasyFAAS.png) -->
<center>
    <video controls width="60%" poster="/videos/easyfaas/IntroThumb.png">
        <source src="/videos/easyfaas/EasyFAASIntro.webm"
                type="video/webm">
        <source src="/videos/easyfaas/EasyFAASIntro.mp4"
                type="video/mp4">
        Use a newer browser to see this video.
    </video>
    <p><a href="/services/easyfaas#code-example-bitcoin-price-getter">Next Video: Tech-Demo</a></p>
</center>


{{< notice "tip" >}}
  Did you know, that over 60% of development time is spent on DevOp tasks instead of working on the actual product [1]?
{{< /notice >}}

What if there could be a way to **"just run code" instead of worrying about servers and clusters**?

**EasyFAAS (Easy-Function-as-a-service) lets you run your code in an easy environment, without hidden costs.**


<hr>
<center>
    <a href="/contact" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Get Started for free!</button></a>
</center>
<hr>

## Why should I choose EasyFAAS over other providers?

Whilst we were working with FAAS services of other providers, we usually ended up having problems with two specific things:
1. (EU) Data Security
2. Complexness

### 1. Our problems with (EU) Data Security

Even though FAAS services of other cloud providers are technically secure, they still have the problem of being hosted by an american company. This can be a problem for EU-based companies, as the american ["patriot act"](https://www.congress.gov/107/plaws/publ56/PLAW-107publ56.pdf) states, that the US government can basically request your data from american companies to "intercept and obstruct terrorism".
There have been unconfirmed reports of misuse as well, where industry and intellectual secrets were requested.

{{< notice "tip" >}}
This proves to be especially dangerours for companies in the **finance** industry, or in general where **companies have an intellectual competitive advantage**.
{{< /notice >}}

Of course no one can surely say (yet) that this is really happening, and that it is not only used for the defeat of terrorism, but our company and many others agree that your data should only belong to you.

### 2. Our problems with complexness

Now back to a happier topic: The FAAS services of other cloud providers are amazing. They are versatile, well integrated in their system, and were a technological novelty. Our problem has just been, that if you want to "just get going", meaning just pasting your code, you will often experience that it is not that easy.

The technical interconnections with other services come with a price: You will find yourself setting up API Gateways if you want the service to connect to the outside, where you will need to know about ports, firewalls, security groups and even networking.

Also, if you are using custom packages like Python's numpy and pandas, you will have to create an extra layer, which proves to be quite complex, instead of just listing the packages that are used.

One of our main applications in the past has been to create little APIs that write and read from a database. 
In other FAAS solutions, this requires you to create the networking, the database connection and the custom layer to get started, which involved a lot of repetitive tasks. 

In our EasyFAAS solution this becomes as simple as this:

![EasyFAAS - Create a new function dashboard](/images/services/easyfaas/create-a-new-function.png)

# Contents

1. [Overview](/services/easyfaas#introduction)
2. [Serverless Function Types](/services/easyfaas#1-serverless-functions-overview)
3. [Managed MongoDB](/services/easyfaas#2-managed-mongodb-overview)
4. [Getting started](/services/easyfaas#1-getting-started)
    - [EasyFAAS Main Dashboard](/services/easyfaas#11-the-main-dashboard)
    - [Creating a new function](/services/easyfaas#12-create-a-new-function)
    - [Code Example: Bitcoin price getter](/services/easyfaas#code-example-bitcoin-price-getter)
    - [The function Detail page](/services/easyfaas#function-detail-page)
5. [Billing](/services/easyfaas#easyfaas-billing)


## Introduction

EasyFAAS reduces time to market, and let's your programmers focus on what it important: your code!


{{< notice "tip" >}}
Did you know that you can run one function per month for free? 
[Claim your free function](/contact)
{{< /notice >}}

To achieve this EasyFAAS currently supports two functions:

#### 1. Serverless functions

- Distinguished into **"simple"** and **"storage"** functions
- Distinguished into **"timed"** and **"continuous"** functions

#### 2. A managed MongoDB NoSQL database

- Easy integration without much setup into your EasyFAAS functions

### 1. Serverless functions overview

A "**storage**" function distinguishes itself from a "simple" function, in that it offers **persistence**, meaning that if a function crashes, or restarts, that objects saved in the path **"/mnt/persistent/"** will be saved.

A "**timed**" function distinguishes itself from the "continuous" function, in that the timed one is running at a specific **schedule**, whilst the continuous is running constantly.

These two settings can be combined, resulting in a total of four combinable possibilities for serverless functions:

#### 1.1 Simple-Continuous function

- Good for web applications that do not require storage. 
- Examples: 
    - you want an API or website displayed where data does not have to be stored
    - you want to download current crypto prices and calculate the exchange rate between two pairs

#### 1.2. Simple-Timed function

- Good for jobs that you want to have executed, that do not require storage
- Examples:
    - triggering other endpoints with post requests
    - starting external backups
    - downloading data and writing it into the managed MongoDB


#### 1.3. Storage-Continuous function

- Good for web applications that require storage.
- Examples:
    - An API that receives current users as json and saves them to disk
    - An API or website that needs to save pictures to disk


#### 1.4. Storage-Timed function

- Good for jobs that require storage
- Examples:
    - You want to download price data every hour and save it into a CSV file
    - You want to create backups of a database

### 2. Managed MongoDB overview

In case storage on disk is not enough, you can easily spin up a managed mongodb instance, which you can easily access from your serverless functions.

A managed MongoDB makes sense, if you want to run multiple functions that are all accessing the same information, like if you distributed your workloads into several functions, or you are running functions in parallel.

The big benefits of the managed MongoDB service are, that contrary to other hosting providers it will remain in a custom network, meaning it is not exposed to the internet, but you can still easily access it in your functions.

This means you do not have to worry about SSL connections, strong passwords or other things, and can easily get it up and running in seconds. An example to connect with python is as follows:

```python
from pymongo import MongoClient
client = MongoClient('mongodb://mongodb:27017/')
```
This saves you from a lot of steps compared to other hosting providers, where you need to set up SSL certificates, ports, firewalls and user password combinations.

Example applications for the managed MongoDB are:
- You are saving items as json into MongoDB using custom EasyFAAS functions. If one function is not enough, you can simply scale your function up, and the load will be distributed to two functions automatically.
- You are building an ETL pipeline, where the first function collects data and saves it into the database, the second applies calculations to it and writes it again into the database, and the third one serves the result as an API


## 1. Getting started

{{< notice "note" >}}
  EasyFAAS currently only supports **Python**, but we have Node, React and others already implemented. [Tell us about your code preferences](/contact) and we might be able to get it working.
{{< /notice >}}

### 1.1 The main dashboard

Head over to [/contact](/contact) and register or login.

<center>
    <img src="/images/tutorial/easyfaas/maindashboard.png" style="width:50%" alt="Easyfaas main dashboard">
</center>

The main dashboard is the central control system for EasyFAAS. In here, you will se an overview over the different services that are available.

### 1.2 Create a new function

Next click on **New function**, which takes you to the function type selection screen.

![easyfaas function type selection](/images/tutorial/easyfaas/newfunction.png)

**What is a timed, and what is a continuous function?**


{{< tabs >}}

  {{< tab "Timed Function" >}}
   A timed function is best suited for jobs that do not need to run all the time, but rather run at specific intervals. If you have used Cron in the past, this is pretty much it. 

   You can define Cron schedules as you are used to, like for example


    <table>
        <tr>
            <th>
                Cron expression
            </th>
            <th>
                Meaning
            </th>
        </tr>
        <tr>
            <td>30 2 * * *</td>
            <td>Every day at 2:30</td>
        </tr>
        <tr>
            <td>30 * * * *</td>
            <td>Every day, every hour at :30 (2:30, 3:30, 4:30 ...)</td>
        </tr>
        <tr>
            <td>01 2 1 * *</td>
            <td>2:01 on the first of every month</td>
        </tr>
    </table>


{{< notice "info" >}}
I like to use the website [https://crontab.guru/](https://crontab.guru/) to check my expressions
{{< /notice >}}
  {{< /tab >}}

  {{< tab "Continuous Function" >}}
  A continuous function runs all the time, and is best used if you want a webservice or API to run.
  {{< /tab >}}

{{</ tabs >}}

### 1.3 The create function screen

For this tutorial I went with a continuous function

![Create a new continuous function](/images/tutorial/easyfaas/createfunctioncontinuous.png)

Let us take a look at the differnet elements

#### 1.3.1 Setup elements

**Function name**

This can be whatever you want. The function name will later be converted to a lower-case, "-" seperated form.
Like "My awesome FuNcTiOn" will become "my-awesome-function".

**Function count**

This is where **scalability** comes into play. For now leave function count at 1, but if you later on experience that you need more power, you can easily up-scale your function here.

**PIP requirements**

Now instead of creating a layer for your FAAS function, you can **just enter your pip packages here**, and it will automatically install them. Easy as that.

**Debian requirements**

All functions are build in Debian. Meaning you can easily install any Debian package if you need it. If you have installed it on your local system with "apt install ..." you can list it here. This is useful if you might need some system based tools like imagemagic, wkhtml and others. **This is actually not supported yet in other FAAS services**.

**Visibility**

Your EasyFAAS function comes with security enabled by default. If your function is public, it will be accessible for everyone. If it is private, you will need to send an auth token to the endpoint. 
Does that mean you need to create new users and everything? No, you can just get an auth token using our RestAPI using your **normal user and password**, and then use that token to fire towards your function. 
Easy as that.

**Function type**

There are different functions to choose from.
The selection are **simple function** and **storage function**.

They are distinguishable in the way, that a storage function has **persistence**, whilst a normal function has not.

Persistence means that if your function writes data to the disk, it will be safe. 

{{< notice "info" >}}
Do you write or read from a local file? Like a .csv, or .txt file? Then you will need persistence. If your function just calculates and does not write or read anything, you can choose a simple function
{{< /notice >}}

Persistence is enabled at the directory **/mnt/persistence/**, and not in other directories.

This means you can still read and write temporary files in both versions, but only persist them if they are written to the /mnt/persistence path.


{{< tabs >}}

  {{< tab "Simple Function" >}}
  No persistence

<pre>
<code>
with open("./tmp.txt", "w") as file:
    file.write("my temporary data")

with open("./tmp.txt", "r") as file:
    data = file.read() # <--- not guaranteed to succeed, if the function restarts 
</code>
</pre>

  {{< /tab >}}

  {{< tab "Storage Function" >}}
  Persistence at /mnt/persistence/
<pre>
<code>
with open("./tmp.txt", "w") as file:
    file.write("my temporary data")

with open("./tmp.txt", "r") as file:
    data = file.read() # <--- not guaranteed to succeed, if the function restarts 

# correct way with persistence
with open("/mnt/persistence/longterm.txt", "w") as file:
    file.write("my temporary data")

with open("/mnt/persistence/longterm.txt", "r") as file:
    data = file.read() # <--- guaranteed to succeed
print(data) 
</code>
</pre>
  {{< /tab >}}

{{</ tabs >}}

#### 1.3.1 Code

This is the core part of your function.

Your function is using [FastAPI](https://fastapi.tiangolo.com/) in the background, but you do not have to worry about much if you use the already inserted starter code:

```python
from fastapi import FastAPI, Request
app = FastAPI()

# basic usage
@app.get("/")
async def root():   
    return {"message": "Hello World"}

# post requests
@app.post("/")
async def rootPost(request: Request): 
    data = await request.json()
    print(data)  
    return {"message": "I got the post: " + str(data)}
```

The EasyFAAS function only supports routing to the root domain "/". Meaning if you create different routes they will not be used.

What you can change though, is the **request type**. It can be GET or POST, as well as the others.
For most of the use-cases GET and POST should be enough though.

If you want to adapt your code you can easily just add your calculations and functions inside the "root" function. 

Let us take a look at some examples

### Code example: Bitcoin Price getter

<center>
    <video controls width="60%" poster="/videos/easyfaas/DemoThumb.png" loading="lazy">
        <source src="/videos/easyfaas/EasyFAAS-Tech-Demo.webm"
                type="video/webm">
        <source src="/videos/easyfaas/EasyFAAS-Tech-Demo.mp4"
                type="video/mp4">
        Use a newer browser to see this video.
    </video>
    <p><a href="/services/easyfaas">Previous Video: EasyFAAS Intro</a></p>
</center>

Let us say you want to create a small route that just returns the current price of Bitcoin. We are using the free coingecko route for it.

We will adapt the code to look like this:

```python
from fastapi import FastAPI
import requests

base_url = "https://api.binance.com/api/v3"

app = FastAPI()

def getCoingeckoPrice(symbol):
    url = base_url + f"/avgPrice?symbol={symbol}USDT"
    r = requests.get(url)
    return r.json()
    

# basic usage
@app.get("/")
async def root():   
    return getCoingeckoPrice("BTC")
```

As we want to run this function continuously, and it does not need to save data anywhere, we will choose a **continuous** and **simple** function.

After clicking on "Deploy", you will be taken back to the mainscreen, where you will see your function.

<img loading="lazy" src="/images/tutorial/easyfaas/deployedfunction.png" alt="Deployed Easyfaas function">

Then, click on "edit" next to you function which will take you to the function detail screen.


#### Function Detail Page

<img loading="lazy" src="/images/tutorial/easyfaas/function-detail-page.png" alt="Function Detail Page">

We can see a lot of information in here, but let us first just click on the link provided at "Link".
In this case, it is: [https://api.easyfaas.de/functions/route/public/de96cbb3-aead-4485-9889-a76a92a8a719/function-name](https://api.easyfaas.de/functions/route/public/de96cbb3-aead-4485-9889-a76a92a8a719/function-name)

When I am clicking on it, it returns:

```json
{
"status_code": 200,
"status": "ok",
"message": "{\"mins\": 5, \"price\": \"19756.28232097\"}"
}
```

The "real" response of our function is located at the `message` key in the dictionary. Why is that? We want some kind of check if the request was really successful, or if not, some kind of error message.

So if your application is querying your EasyFAAS route, it should always check for the "status_code" part. If the function is failing, it will return for example code 500 together with an error message in the "status" part.

An example on how your application would query the EasyFAAS route is:

```python
import requests

response = requests.get("https://api.easyfaas.de/functions/route/public/de96cbb3-aead-4485-9889-a76a92a8a719/function-name")
if response.status_code != 200:
    raise Exception("error in EasyFAAS function: " + str(response.text))
else:
    response = response.json()
    message = json.loads(response["message"])
    print(message)
    price = float(message["price"])
```

##### Function Detail Page: Logs

If you take a closer look at the function detail page you will see a "logs" section.

<img loading="lazy" src="/images/tutorial/easyfaas/function-logs.png" alt="EasyFAAS Logs">

In here, everything that your function code returns will be shown. If you refresh the page it will refresh the current logs.
If you function is not responsive you will see the reason why in here.

##### Function Detail Page: Metrics

Metrics show you how much of the resources your function is using. If you require more "power", maybe [EasyHost](/services/easyhost) or [EasyScale](/services/easyscale) is something for you. Otherwise just [contact us](/contact).

<img loading="lazy" src="/images/tutorial/easyfaas/function-metrics.png" alt="EasyFAAS Metrics">

# EasyFAAS billing

You might have read the word "credits" quite often by now. What does it mean?

EasyFAAS simplifies billing, in that it charges "credits" instead of usage-based fees.
With other cloud providers, you often do not have the full transparency on what will be charged at the end of the month. There are hidden traffic fees, hidden load balancer fees and way more that you can not foresee unless you run the numbers.

EasyFAAS solves that, in that it simplifies billing to:

| Function Type        | Credit cost per Month           | Euro value  |
| ------------- |:-------------:| -----:|
| Simple function     | 1 | 2€ |
| Storage function     | 2      |   4€ |
| Managed MongoDB | 5      |    10€ |

No hidden fees, no nothing. In future updates we will even include **autoscaling** based on the remaining credits in your account, meaning that if you have more credits than functions, and a function is close to it's limit, it will scale up to e.g. 2 functions instead of one.

Billing is done via Stripe, a secure and reliable payment provider. 

<center>
    <a href="/contact" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Get Started for free!</button></a>
</center>