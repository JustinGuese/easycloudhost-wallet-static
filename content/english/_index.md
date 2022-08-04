---
############################ Banner ##################################
banner:
  enable: true
  title : "Run your apps without worrying about compliance or servers"
  subtitle : "Our EasyServices are allowing you to focus on what is important for your business. Leave speed and compliance to us, and focus on gaining more revenue with your core-business."
  videoMute: "Remember to unmute the video!"
  character_image: "images/banner/character.webp"
  lamp_image: "images/banner/server.webp"
  cube_image: "images/banner/shield.webp"
  chess_image: "images/banner/coding.webp"
  button:
    enable: true
    label: "Our services"
    icon: "fas fa-arrow-right"
    button_modal_target: "/services"
  image: "images/banner/banner.png"


############################ Homepage Service ##################################
services:
  enable: true

############################ Difference Of Us ##################################
difference_of_us:
  enable: true
  subtitle: "About us"
  title: "What Makes Us <br> Different from Others?"
  description: "Developers say they spend up to 60% of their time on DevOps instead of the product"
  description: "Instead of focusing on the core business, developers are spending a lot of time on maintenance, deployments and general DevOps. 
  
  Additionally a lot of new regulations regarding data privacy in Germany and Europe almost forbid the usage of american cloud providers, which can be fined with up to 4% of the yearly revenue of a company if violated."

  item:
  - title: "Serverless hosting of Code"
    icon: "fas fa-shield-alt"
    description: "Just write your code and 'upload' it into our fully managed Function-as-a-Service [EasyFAAS]"
    
  - title: "Compliance"
    icon: "fas fa-blender-phone"
    description: "Our datacenters are located in Nürnberg and Falkenstein, and therefore out of american reach. Optionally hosting is possible in the US and Finland as well."
    
  - title: "Abstraction of Code"
    icon: "fas fa-money-bill-alt"
    description: "We are offering a range of services that each abstract a layer of the DevOps process. Full control? Try EasyKube, our managed Kubernetes platform. Need a managed database? EasyDB. You do not want to have anything to do with DevOps? EasyFAAS is your answer."

############################ About Ourselves ##################################
about_ourselves:
  enable: true
  subtitle: "no unexpected costs"
  title: "EasyServices are Billing simplified"
  description: "Billing with EasyServices is easy: There will be a fixed price per service, with no hidden traffic, storage or usage based fees. Big cloud providers are often turning out ot be way more expensive than expected, which causes a bad user experience. We want to be your trustful partner for the cloud, and therefore offer fixed monthly subscriptions with no additional costs."
  image: "images/about-us.webp"


############################ Homepage Tab ##################################
homepage_tab:
  enable: true
  subtitle: "Having a question?"
  title: "EasyCloudHost makes hosting of sensitive applications and data easy and compliant."

  tablist:
  - title: "How secure is my data in EasyServices?"
    description: "Our datacenters of our hosting provider (Hetzner) are heavily guarded and all communication happens SSL encrypted, unless your service is using something else on purpose. Hetzner is one of the biggest providers in Europe, and is historically reliable."
    image: "images/payment-info.webp"

  - title: "What encryption do you use?"
    description: "Traffic is SSL encrypted, using the newest TLS 1.3 protocol, and isolated using custom subnets of Kubernetes."
    image: "images/illustration-2.png"

  - title: "What is your SLA? How much downtime do I have to expect?"
    description: "If you are using multi-zone services the network SLA is 99.9%. If one datacenters fails services are automatically transacted to the second datacenter in seconds, therefore avoiding downtime."
    image: "images/illustration-1.png"


############################ testimonials ##################################
testimonials:
  enable: true
  subtitle: "Our Happy Customers"
  title: "Trusted By 20+ Companies"
  description: "Don't believe us, but listen to our customers:"

  item:

  - name: "James"
    designation: "Startup Founder"
    image: "images/feedback/01.webp"
    review_text: "Justin could not have been a better hire! Not only did he drastically improve our backend architecture and nearly eliminate our tech-debt, he also taught us a great deal and pushed our company forward in the right direction. Justin is an expert architect who deeply understands how backend systems should be designed and is able to eloquently explain these concepts to members of the team who are less experienced. When things break, he is available to troubleshoot. When education is requested, he provides in-depth documentation, recorded videos, and one-on-one sessions to ensure that the concepts are understood by all and that tasks can be replicated without his assistance. He helped our team immensely and I whole-heartedly recommend him to any other team who is need of a highly proficient technical consultant – whether your needs are from the architect and consulting side, the technical development side, or some combination of the two, Justin is your guy."
  - name: "Christoph Wagner"
    designation: "Marketing Head"
    image: "images/feedback/02.webp"
    review_text: "EasyHost helped us to get our WordPress shop up and running on speed. I'm happy to know that my customer's data will be secure, especially with the new DSGVO laws. I can recommend Justin and his team!"
  - name: "Sharon Briggs"
    designation: "Shop owner"
    image: "images/feedback/03.webp"
    review_text: "EasyServices and Justin developed several shops for us, which are all running fast and are actually cheaper than Shopify! Amazing - he knows a lot about Marketing as well, I can recommend his work"
  - name: "Peter from Haarbach AG"
    designation: "CEO"
    image: "images/feedback/logo1.png"
    review_text: "We wanted to migrate a database to the cloud, with which EasyDB helped us a lot. We switched from an old Oracle database to Postgresql managed by Justin. Good to be worry-free now."
  - name: "SEO driven Platform"
    designation: "CEO"
    image: "images/feedback/logo2.png"
    review_text: "Using EasyScale we were able to increase our application speed by a lot. Finally rid of WordPress haha :D. We increased our sales by about 20%, which can be attributed a lot to speed i guess."
  - name: "anonymous"
    designation: "Lead Developer"
    image: "images/feedback/anonymous.png"
    review_text: "We are running several Machine Learning models in the financial area, scanning several APIs every Milisecond. Justin helped us to scale our workloads with Kubernetes and Scaling. I recommend his work"


############################ faq ##################################
faq:
  enable: true
  subtitle: "Questions You Might Have"
  title: "Frequently Asked Questions"

---