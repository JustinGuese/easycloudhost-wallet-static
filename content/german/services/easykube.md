---
title: "EasyKube"
description: "Verwaltete Kubernetes in AWS und einer benutzerdefinierten Cloud"
icon: "fas fa-business-time"
draft: false
---



<center>
    <video controls width="60%" poster="videos/easykube/easykube-thumbnail.png">
        <Quelle src="videos/easykube/easykube.webm"
                type="video/webm">
        <Quelle src="videos/easykube/easykube.mp4"
                type="video/mp4">
        Use a newer browser to see this video.
    </video>
</center>

# Ihre maßgeschneiderte private Cloud 

Verwalteter Kubernetes-Dienst.

Suchen Sie nach einer Möglichkeit, Ihre Daten und Anwendungen in einer sicheren, privaten Cloud zu hosten, die nicht in den Händen von Großunternehmen liegt?

**EasyKube ist Ihre Lösung**

<hr>
<center>
    <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kostenlose Demo um EasyKube in Aktion zu sehen!</button></a>
</center>
<hr>

1. [Die Vorteile einer eigenen privaten Cloud](/de/services/easykube/#die-vorteile-einer-eigenen-privaten-cloud)
2. [Die 5 wichtigsten Gründe für die Nutzung einer privaten Cloud im Vergleich zu einer öffentlichen Cloud](/de/services/easykube/#die-5-wichtigsten-gründe-für-die-nutzung-einer-privaten-cloud-im-vergleich-zu-einer-öffentlichen-cloud)
3. [Die Einfachheit von EasyKube](/de/services/easykube/#die-einfachheit-von-easykube)
4. [EasyKube in AWS/Google Cloud/Azure](/de/services/easykube/#und-was-ist-wenn-ich-in-der-öffentlichen-cloud-hosten-möchte)
5. [Preise](/de/services/easykube/#easykube-preisübersicht)

## Was ist der Vorteil von EasyKube gegenüber anderen Kubernetes-Produkten?

<div style="overflow-x:auto;">

| <div style="width:150px">Feature</div> | Standard Kubernetes | AWS/Azure Kubernetes | EasyKube |
| --- | --- | --- | --- |
| Standard K8s | &#x2705; | &#x2705; | &#x2705; |
| Load Balancers | &#x274C; | &#x2705; | &#x2705; |
| Einfaches Server Scaling | &#x274C; | &#x2705; | &#x2705; |
| Direkt nutzbare Volumes | &#x274C; |  &#x2705; | &#x2705; |
| Domain basiertes Routing | &#x274C; |  &#x274C; | &#x2705; |
| Bausteine [1] | &#x274C; |  &#x274C; | &#x2705; |
| DSGVO & HIPAA compliance | &#x274C; |  &#x274C; | &#x2705; |
| "Plug & Play" | &#x274C; |  &#x274C; | &#x2705; |

</div>

{{< notice "info" >}}
  [1] Bausteine sind gebrauchsfertige Bereitstellungsvorlagen mit Autoscaling, Sicherheit und Persistenz
{{< /notice >}}

## Die Vorteile einer eigenen privaten Cloud

Warum sollten Sie also Ihre eigene Cloud erstellen, anstatt öffentliche Cloud-Anbieter zu nutzen?

Je nach Ihrem Hintergrund gibt es verschiedene Vor- und Nachteile.
Nehmen wir an, Sie speichern sensible, intellektuelle Daten, wie Patente oder Daten, die Ihnen einen Wettbewerbsvorteil verschaffen. Wie Sie vielleicht wissen, bringt der [Patriot Act](/de/services/easyhost/) das Problem mit sich, dass US-Cloud-Anbieter Ihre Daten an die US-Regierung weitergeben müssen, wenn ein Zusammenhang mit dem Terrorismus vermutet wird.

Aber selbst wenn das nicht der Fall ist, gibt es Gesetze für Kliniken oder Gesundheitsdienstleister, die Sie dazu zwingen, Ihre Daten in Deutschland oder zumindest in der EU zu hosten. 

Bedeutet das, dass ich eine "kleinere" Cloud nutzen muss, um die Gesetze einzuhalten und meine Daten zu schützen? "Weniger" ist nicht der Fall, denn Kubernetes bietet Ihnen tatsächlich eine Menge technischer Vorteile gegenüber öffentlichen Clouds. Lassen Sie es uns herausfinden!

### Die 5 wichtigsten Gründe für die Nutzung einer privaten Cloud im Vergleich zu einer öffentlichen Cloud

##### 1. Keine Anbieterbindung

Öffentliche Clouds bieten Ihnen vollständig integrierte Produkte, wie z. B. serverlose Funktionen, die mit anderen Clouds nicht kompatibel sind. Auch wenn es einfach ist, da sie in Sekundenschnelle einsatzbereit sind, ist es eine Überraschung, wenn der Cloud-Anbieter die Preise erhöht. Sollten Sie Ihre gesamte Architektur neu aufbauen, um in eine andere Cloud zu passen? Oder sollten Sie es lieber auf sich beruhen lassen und den erhöhten Preis zahlen?

Um diese Situation zu vermeiden, sollten Sie **immer in der Lage sein, Ihre Anwendungen "plug and play" zu betreiben** und den Anbieter wie Ihre Tankstelle zu wechseln. Dies ist möglich, wenn Sie Frameworks wie Kubernetes und EasyKube verwenden. 

Sie schreiben Ihre Anwendungen als Code, genannt IAAS (Infrastructure as Code), und verwenden einfache Kubernetes-Yaml-Dateien oder komplexere Terraform-Skripte.

Wenn der Cloud-Anbieter seine Tarife erhöht, können Sie innerhalb von Sekunden zu einem anderen Anbieter wechseln. 

##### 2. Ihre Daten in Ihren Händen

{{< notice "info" >}}
In den letzten 18 Monaten haben 79 % der Unternehmen mindestens eine Datenschutzverletzung in der Cloud erlebt; noch alarmierender ist, dass 43 % in dieser Zeit 10 oder mehr Verletzungen gemeldet haben. <a href="https://expertinsights.com/insights/50-cloud-security-stats-you-should-know/" target="_blank">Quelle</a>
{{< /notice >}}

Viele Unternehmen, die in die öffentliche Cloud wechseln, haben ihre Anwendungen und Daten zuvor auf einem lokalen Rechner gehostet, der meist vom Internet isoliert ist. Was in einem privaten, gesicherten Raum funktioniert, funktioniert jedoch nicht in der öffentlichen Cloud.

Deshalb lassen viele Unternehmen Ports offen, die eigentlich geschlossen sein sollten, oder greifen über unsichere Kanäle auf ihre Cloud zu. Ein Passwort wie "Tommie123" funktioniert vielleicht in einem lokalen Netzwerk, zu dem nur 30 Personen Zugang haben, aber nicht in der öffentlichen Cloud, wo Millionen von Bots ständig nach Sicherheitslücken suchen.

Wenn Sie EasyKube und Kubernetes verwenden, laufen Ihre Daten auf Ihren privaten Servern, die Sie sogar komplett vom Internet isolieren können, wenn Sie möchten. Zusätzlich verfügt EasyKube über integrierte Sicherheitsfunktionen wie:

- SSL-Zertifikate (Letsencrypt)
- Automatische HTTPS-Weiterleitung (auch wenn Sie versuchen, HTTP auszuführen)
- Port-Isolierung. Nur Port 80 und 443 (Internet) sind standardmäßig geöffnet

##### 3. Keine unerwarteten Kosten

Auch wenn die Preise scheinbar mit denen des Inhouse-Hostings vergleichbar sind, kann die öffentliche Cloud unerwartete Kosten verursachen. Das liegt daran, dass der Datenverkehr oft zusätzlich berechnet wird oder dass Protokollierung und Überwachung extra kosten. All dies ist automatisch integriert, wenn Sie Kubernetes und EasyKube verwenden. 

Schauen wir uns ein Beispiel an. Wenn Sie eine Website in einer virtuellen Instanz hosten, liegt der übliche Preis für eine Maschine mit 2 vCPU und 2 GB RAM bei etwa 10 $. Das scheint in Ordnung zu sein, aber selbst mit ~10.000 Besuchern pro Monat steigen die Traffic-Kosten auf etwa 50$, was die anfänglichen Kosten von 10$ auf insgesamt 60$ erhöht. Und das beinhaltet noch nicht einmal Backups, Protokollierung und Überwachung. All dies ist standardmäßig in Kubernetes und EasyKube integriert.

##### 4. Vereinfachung

Auch wenn Public-Cloud-Anbieter eine große Vielfalt an Diensten anbieten, werden sie ziemlich komplex, wenn alles miteinander verbunden werden muss. Nehmen wir an, Sie möchten nur eine einfache Website in einer virtuellen Maschine bereitstellen.

Wenn Sie die Maschine starten, müssen Sie Sicherheitsgruppen, Netzwerke, Berechtigungen, Volumes, Zonen und Verbindungen erstellen, die teilweise nicht verfügbar sind, weil einige Dienste nur in bestimmten Regionen unterstützt werden... Und dann wird eine Fehlermeldung ausgegeben, weil Ihr Benutzer nicht über genügend Berechtigungen verfügt. Welche Berechtigung benötige ich?
...

EasyKube erspart Ihnen eine Menge Kopfschmerzen, weil wir die Komplexität herunterbrechen. Mit EasyKube können Sie eine ganze Anwendung, einschließlich Netzwerk, Persistenz und domänenbasiertem Routing in weniger als 80 Zeilen Code implementieren, wo die meisten nur Copy-and-Paste sind.


##### 5. Kosteneinsparungen

Während ein öffentlicher Cloud-Cluster mindestens 140 € pro Monat kostet, beginnen wir bei nur 10 €! Unsere allgemeinen Kosten betragen auch nur etwa ein Zehntel der Kosten für Kubernetes in der öffentlichen Cloud. 

<hr>
<center>
    <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kostenlose Demo um EasyKube in Aktion zu sehen!</button></a>
</center>
<hr>

# Die Einfachheit von EasyKube

Werfen wir einen Blick auf ein Beispiel für die Verwendung von EasyKube. EasyKube unterstützt:
- **Persistente Volumes** - gesichert bis zu 3 Verfügbarkeitszonen
- Horizontales Autoscaling** - Skalieren Sie Ihre Anwendungen je nach Auslastung
- HTTPS** standardmäßig, mit Zertifikaten von LetsEncrypt
- Einfaches Domain-Routing** sowohl mit unserer als auch mit Ihrer eigenen Domain
- **Auto updating Nodes** - Vermeiden Sie Sicherheitslücken mit alten Nodes
- **Aktuelles Kubernetes** - Automatische Aktualisierung von Kubernetes
- **Load Balancer** - Nutzen Sie Load Balancer anstelle von Domain-Routing, wenn Sie möchten
- **Zwei Rechenzentren in Deutschland** - um verlässliche Knoten zu erhalten. Wenn ein Rechenzentrum ausfällt, werden Ihre Anwendungen automatisch auf das zweite Rechenzentrum umgeschaltet.
- **Zusätzliche Rechenzentren in den USA und Finnland** - für globale Skalierung
- **Backups mit Velero** 
- **Kundensupport** - wir sind immer für Sie da

## EasyKube Einführungsbeispiel

Nehmen wir an, Sie haben einen HTML-Code und möchten ihn im Internet veröffentlichen.

Mit EasyKube geht das in drei einfachen Schritten 

1. Erstellen Sie Ihr Docker-Image
2. Kopieren Sie unsere Startvorlage
3. Setzen Sie  ein.

##### 1. Erstellen Ihres html-Docker-Images

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
  Wir können Ihnen auch beim Entwickeln helfen - [Buchung unserer Consultingstunden](/pricing/)
{{< /notice >}}

{{< notice "info" >}}
  Wir bieten auch private, bei EasyHost gehostete Repos an. [Kontaktieren Sie uns für weitere Informationen](https://shop.easycloudhost.de/contact/)
{{< /notice >}}

##### 2. Kopieren und Einfügen in unsere Startvorlage

müssen Sie nur den "Image"-Namen austauschen und Ihrer Bereitstellung einen Namen geben. Der Namespace wird von uns bereitgestellt.

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
          reQuelles: {}
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

und fügen Sie Ihren Namen in das Eingabefeld ein. Wir unterstützen auch benutzerdefinierte Domains.

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

**Was passiert im Hintergrund?**

- automatische Weiterleitung
- automatische Volumina
- automatische Skalierung (muss von uns eingerichtet werden)
- automatische HTTPS-Weiterleitung und kostenloses LetEncrypt-Zertifikat

##### 3. Deployen

```bash
kubectl apply -f ./yourfiles/
```

und **FERTIG**

So einfach ist das. 

<hr>
<center>
    <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kostenlose Demo um EasyKube in Aktion zu sehen!</button></a>
</center>
<hr>

## Und was ist, wenn ich in der öffentlichen Cloud hosten möchte?

Das ist natürlich auch möglich. Nehmen Sie einfach [Kontakt](https://shop.easycloudhost.de/contact/) auf, um ein individuelles Angebot zu erhalten.

## EasyKube Preisübersicht

### 1. Abrechnung nach Aufwand

{{< notice "info" >}}
  Um Widerstandsfähigkeit zu erreichen, benötigen Sie **mindestens 3** Server, aber 1 Server funktioniert auch, um Dinge auszuprobieren.
{{< /notice >}}

<div style="overflow-x:auto;">

| <div style="width:150px">Feature</div>   | Node XS   | Node S    | Node M  | Node L |
| ------------- |:-------------:| -----:| -----:| -----:| 
| Gratis subdomain auf easycloudhost.de | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Geteilter Server | &#x2705; | &#x274C; | &#x274C; | &#x274C; |
| 14 Tage Gratis |  &#x2705; | &#x274C; | &#x274C; | &#x274C; |
| vCPU | 1 | 3 | 4 | 8 | 16 | 
| RAM GB | 1 | 4 | 8 | 16 | 32 |
| Monatliche Zahlung | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=pay-as-you-go&attribute_size=XS" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">9.99€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=pay-as-you-go&attribute_size=S" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">21.99€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=pay-as-you-go&attribute_size=M" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">42.99€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=pay-as-you-go&attribute_size=L" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">79.99€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=pay-as-you-go&attribute_size=XL" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">179.99€/m</button></a> | <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kontakt</button></a> |
| Vergleichspreis [4] | 73$/m + server = 103$/m | 153$/m | 243$/m  | 893$/m | 21.000$/m | individuell |
 
**Die Preise werden an der Kasse automatisch in Ihre Landeswährung umgerechnet**

</div>

{{< notice "info" >}}
  [4] https://calculator.aws/#/addService/EKS
{{< /notice >}}

#### Zusätzliche Kosten

| Feature | Preis |
| --- | --- |
| Volumes [2] | 1.50€/m per 10GB |
| Load Balancer | 19.99€/m per Stück |
| Traffic | unbegrenzt |

{{< notice "info" >}}
  [2] 10 GB Minimum, 10 TB Maximum pro einzelnem Volume. Berechnet in 10-GB-Schritten
{{< /notice >}}


### 2. Paket-Preise



<div style="overflow-x:auto;">

| <div style="width:150px">Version</div>   | EasyKube XS   | EasyKube S    | EasyKube M  | EasyKube L | EasyKube Mammoth | Custom |
| ------------- |:-------------:| -----:| -----:| -----:| -----:| -----:|
| Hosting in Deutschland | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| SSL/HTTPS (letsencrypt) | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Load Balancers (extra cost) | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| 4 TB traffic / m | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Gratis subdomain auf easycloudhost.de | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Multi AZ | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Eigene Domain | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; | &#x2705; |
| Shared cluster | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; |
| Velero Backups | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; |
| Horizontal Autoscaling | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; | &#x2705; |
| Cluster Autoscaling | &#x274C; | &#x274C; | &#x274C; | &#x274C; | &#x2705; | &#x2705; |
| Support | extra | extra | 2h/month | 5h/month | &#x2705; | &#x2705; |
| Volumes included [2] | 10 GB | 20 GB | 100 GB | 500 GB | &#x2705; | &#x2705; |
| Uptime Garantie |  &#x274C; | 80% | 95% | 99% | 99.9% | &#x2705; |
| Nr nodes | 1 | 1 | 3 | 5 | 10 | 100 | custom |
| vCPU total | 1 | 3 | 9 | 15 | 30 | 300 | custom |
| RAM GB total | 1 | 3 | 9 | 20 | 40 | 400 | custom |
| Monatliche Bezahlung | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=package+pricing&attribute_size=XS" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">12.99€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=package+pricing&attribute_size=S" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">29.99€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=package+pricing&attribute_size=M" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">79.99€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=package+pricing&attribute_size=L" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">149€/m</button></a> | <a href="https://shop.easycloudhost.de/product/easykube/?attribute_pricing-model=package+pricing&attribute_size=XL" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">2,999€/m</button></a> | <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kontakt</button></a> |
<!-- | **Jährliche Bezahlung -33%** | <a href="https://buy.stripe.com/14k16x8wYfZC9gccN4" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">9€/m</button></a> | <a href="https://buy.stripe.com/7sIbLbbJa14IcsoaEY" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">19€/m</button></a> | <a href="https://buy.stripe.com/9AQ3eF3cE3cQbokeVg" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">55.75€/m</button></a> | <a href="https://buy.stripe.com/bIY3eF8wYcNq4ZW6oN" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">104.20€/m</button></a> | <a href="https://buy.stripe.com/28o7uV6oQcNqakg5kL" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">2,100€/m</button></a> | <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kontakt</button></a> | -->
| Comparable price [4] | 73$/m + nodes = 103$/m | 153$/m | 243$/m  | 893$/m | 21.000$/m | custom |
 
**Wir können Backups und alles auch für kleinere Pakete anbieten, wählen Sie "custom" um ein individuelles Angebot zu erhalten**

**Preise werden beim Bezahlen automatisch in Ihre lokale Währung umgerechnet**
</div>

{{< notice "info" >}}
  [2] 10 GB Minimum, 10 TB Maximum pro einzelnem Volume
{{< /notice >}}

{{< notice "info" >}}
  [4] https://calculator.aws/#/addService/EKS
{{< /notice >}}


<hr>
<center>
    <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kostenlose Demo um EasyKube in Aktion zu sehen!</button></a>
</center>
<hr>