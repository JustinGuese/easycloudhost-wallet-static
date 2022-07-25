---
title: "EasyHost"
description: "Making hosting your shops, websites and web apps easier"
icon: "fas fa-business-time"
draft: false
---

<!-- ![EasyFAAS Logo](images/logos/EasyFAAS-min.png) -->
<center>
    <video controls width="60%" poster="videos/easyhost/thumbnail-easyhost.png">
        <source src="videos/easyhost/EasyHost-full.webm"
                type="video/webm">
        <source src="videos/easyhost/EasyHost-full.mp4"
                type="video/mp4">
        Use a newer browser to see this video.
    </video>
</center>


{{< notice "tip" >}}
  The probability of bounce increases 32% as page load time goes from 1 second to 3 seconds
  <br>
  Google/SOASTA Research, 2017.
{{< /notice >}}

Are your websites and apps giving you a headache? Crashing constantly, being slow? And now it crashed again, rendering your past hours of work useless?

**EasyHost will make hosting your websites and apps easy.**

<hr>
<center>
    <a href="/contact" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Free 15-min consultation on how EasyHost can work for you</button></a>
</center>
<hr>

1. [What makes EasyHost different?](/services/easyhost/#what-makes-easyhost-different)
2. [The fall and rise of static sites](/services/easyhost/#the-fall-and-rise-of-static-sites)
3. [Why website speed is important](/services/easyhost/#why-website-speed-is-important)
4. [EasyHost: Uniting both worlds](/services/easyhost/#uniting-both-worlds-easyhost)
5. [Portfolio](/services/easyhost/#some-examples-of-easyhost-in-action)
4. [Pricing](/services/easyhost/#the-advantages-of-easyhost--pricing)

## What makes EasyHost different?

Our secret is simple: **Simplicity**

Simplicity both in terms of **user experience**, as well as in hosting.

{{< notice "tip" >}}
  Looking for Website Programming? Head over to [Websites](/services/websites/)
{{< /notice >}}

### The fall and rise of static sites

Remember the beginning of the web, with their horrible layouts, extreme colors and just pure craziness?

<center>
    <img loading="lazy" src="images/services/easyhost/amazon-website-old.webp" alt="Amazon website back in the day">
    <p>Amazon back in the day</p>
</center>

The design and usability was horrible, and also just having to change small details of the page required re-loading the whole website, which slows down the user-experience a lot.

This is why new technologies like Ajax were invented, to only load tiny parts of information into the website, instead of re-loading the whole deal.

The web became more and more dynamic, and WordPress became the dominating CMS for both shops and blogs alike.
WordPress introduced huge changes to the web, like being able to just write a blog post, without having to program a whole html website if you wanted a new page to show on your website.

This comes with a huge disadvantage though: The server needs to "calculate" how the final website looks like. You can imagine the WordPress working process like this:

1. User opens a website
2. WordPress queries the database to check if we have a blog post for that website
3. If the content exists, load it from the database
4. Grab the "Blog posts" template and insert that information in there
5. Return the final calculated website to the user

As you can see, this is causing a lot of steps to do for the server, especially if millions of people access the website.

### Why website speed is important

<center>
    <img loading="lazy" src="images/services/easyhost/website-speed-importance.webp" alt="why website speed is important">
    <p>Sources: LoadStorm</p>
</center>

As you can see above, speed is essential nowadays. Attention is shortlived, and if people have to wait too long for a shop or website to load, they will simply leave.

Now the big question is: Are they **more likely to buy on your fancy WordPress website or on that fast, horrible 90s one?**

### Uniting both worlds: EasyHost

The answer is simple: You can have both.

Recent websites use Javascript and rely more and more on HTML, which differs from how websites like WordPress work.
The main difference is, that new web technologies **do the calculations in the browser of the user**, opposed to on your server.

If we are going back to the example before - this is how EasyHost works:

1. User opens a website
2. The browser loads HTML, Javascript and CSS from the server, which are basically just small leightweight text documents
3. These documents contain information how the website looks like, think of it as a blueprint
4. The browser "builds" the website following the recipe 
5. You will see the final result in your browser

#### Taking it a step further with EasyHost

Of course, it is not that simple. Javascript, React and NextJS still query a lot of information from APIs and servers, which adds a lot of delays again, and adds load to your servers. It is better than the "old" dynamic web, but still kind of slow, especially when scaling.

Let us say your server has to be located in Germany, with no CDN available for cost and compliance reasons.

Now even if a user in Australia accesses the website, gets the "blueprint", but still needs to query your API for information, loading times become quite slow. 
Then again, you could add your API servers all over the world, and query only the closest server for that information ... but isn't there a simpler way to do it?

**Can't we just offload the whole work to the users browser?**

The answer is yes. With EasyHost your websites are basically "pre-rendered", like if someone programs a page in pure HTML, offloading the whole work to the users browser. The only information that is queried from your or our server will be the "blueprint" and images.

#### Does that mean I have to program each page manually?

Of course not. You can still use a CMS (content management system) like WordPress, or write text directly in Markdown like I do now, and EasyHost "converts" this to a nice website and pushes it to the server.

<center>
    <img loading="lazy" src="images/services/easyhost/easyhost-markdown-min.png" alt="Writing Markdown">
    <p>Writing this text in Markdown</p>
</center>

<hr>
<center>
    <a href="/contact" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Free 15-min consultation on how EasyHost can work for you</button></a>
</center>
<hr>

<center>
    <img loading="lazy" src="images/services/easyhost/cms-example-min.png" alt="Editing in the CMS">
    <p>Using the CMS</p>
</center>

#### Some examples of EasyHost in action

<div style="overflow-x:auto;">


| <div style="width:150px">Website name</div>       | Type           | Example  | URL |
| ------------- |:-------------:| -----:| -----:|
| EasyCloudHost.de     | Company site, Blog, Shop | <img loading="lazy" style="width:150px" src="images/services/easyhost/easyhost-website-min.png" alt="EasyHost Website"> | https://easycloudhost.de/ |
| DataFortress.cloud     | Company site, Blog | <img loading="lazy" style="width:150px" src="images/services/easyhost/datafortress-website-min.png" alt="DataFortress Website"> | https://datafortress.cloud/ |
| BildBlatt.de    | WordPress Shop turned static | <img loading="lazy" style="width:150px" src="images/services/easyhost/bildblatt-website-min.png" alt="Bildblatt wordpress Website"> | https://bildblatt.de/ |
| GoodThings4U    | Complete Static Shop | <img loading="lazy" style="width:150px" src="images/services/easyhost/goodthings4u-website-min.png" alt="GoodThings4U static Shop Website"> | https://goodthings4u.com/ |

</div>

## The advantages of EasyHost / Pricing

Now that we know that our websites will load super quick, and our revenues will increase, you will surely tell us that this will cost a hundred bucks a month, right?

No. As EasyHost is up to a 1000x lighter on the server you will save a lot of money on hosting. 

<div style="overflow-x:auto;">

| <div style="width:150px">Feature</div>     | EasyHost Static           | EasyHost CMS  | EasyHost Shop | Custom |
| ------------- |:-------------:| -----:| -----:| -----:|
| Hosting | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Lightning Speed | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| SSL/HTTPS (letsencrypt) | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Custom Domain possible | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Host your own HTML | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| 1 TB traffic / m | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| CMS [1] | &#x274C; | &#x2705; | &#x2705; | &#x2705; |
| Conversion included [2] | &#x274C; | &#x274C; | &#x274C; | &#x2705; |
| Custom Domain included [3] | &#x274C; | &#x274C; | &#x274C; | &#x2705; |
| Uptime guarantee | 99.9% | 99.5% | 99% | &#x2705; |
| Support | extra | extra | extra | &#x2705; |
| US hosted Pricing | <a href="https://buy.stripe.com/3csdTjcNe28M9gc7sx" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">0.99€/m</button></a> | <a href="https://buy.stripe.com/28obLbaF66p2bokdQT" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">4.99€/m</button></a> | <a href="https://buy.stripe.com/6oE6qR6oQ7t69gceUV" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">19.99€/m</button></a> | <a href="/contact" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Contact us</button></a> |
| DE hosted Pricing | <a href="https://buy.stripe.com/cN29D3aF63cQbok7sw" target="_blank"><button type="submit" class="input-group-text btn btn-secondary rounded">2.99€/m</button></a> | <a href="https://buy.stripe.com/aEU2aB00s7t6bok4gi" target="_blank"><button type="submit" class="input-group-text btn btn-secondary     rounded">9.99€/m</button></a> | <a href="https://buy.stripe.com/7sI3eF14w14I2ROfYY" target="_blank"><button type="submit" class="input-group-text btn btn-secondary rounded">39.99€/m</button></a> | <a href="/contact" target="_blank"><button type="submit" class="input-group-text btn btn-secondary rounded">Contact us</button></a> |
| Comparable price [4] | 20$/m + traffic | 40$/m + traffic | 80$/m + traffic | |


**Prices are automatically converted to your local currency on checkout**
</div>

{{< notice "info" >}}
  [1] A CMS allows you to edit the content yourself in an easy web-interface (content-management-system)
{{< /notice >}}

{{< notice "info" >}}
  [2] If you do not want to convert your site yourself we can help you with that. [Contact us](/contact/)
{{< /notice >}}

{{< notice "info" >}}
  [3] Migrate your existing domain or buy one from us starting at 19.99€/year. [Contact us](/contact/)
{{< /notice >}}

{{< notice "info" >}}
  [4] Comparable speed with an AWS Lightsail WordPress instance, excluding traffic. Can not really be compared as the technologies are totally different, but to get an estimation.
{{< /notice >}}

<hr>
<center>
    <a href="/contact" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Free 15-min consultation on how EasyHost can work for you</button></a>
</center>
<hr>