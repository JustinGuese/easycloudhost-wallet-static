---
title: "EasyFAAS"
description: "this is meta description"
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
    <p><a href="/services/easyfaas#code-example-bitcoin-price-getter">Nächstes Video: Tech-Demo</a></p>
</center>


{{< notice "tip" >}}
  Wussten Sie, dass über 60 % der Entwicklungszeit für DevOp-Aufgaben aufgewendet wird, anstatt am eigentlichen Produkt zu arbeiten? [1]?
{{< /notice >}}

Was wäre, wenn es eine Möglichkeit gäbe, **"einfach Code auszuführen", anstatt sich um Server und Cluster zu kümmern**?

Mit **EasyFAAS (Easy-Function-as-a-Service) können Sie Ihren Code in einer einfachen Umgebung ausführen, ohne versteckte Kosten**.


<hr>
<center>
    <a href="https://app.easyfaas.de/" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Starten Sie kostenlos!</button></a>
</center>
<hr>

## Warum sollte ich EasyFAAS gegenüber anderen Anbietern bevorzugen?

Während wir mit FAAS-Diensten anderer Anbieter arbeiteten, hatten wir in der Regel Probleme mit zwei spezifischen Dingen:
1. die (EU-)Datensicherheit
2. Kompliziertheit

### 1. Unsere Probleme mit der (EU-)Datensicherheit

Auch wenn die FAAS-Dienste anderer Cloud-Anbieter technisch sicher sind, so haben sie doch das Problem, dass sie von einem amerikanischen Unternehmen gehostet werden. Dies kann für in der EU ansässige Unternehmen ein Problem darstellen, da der amerikanische ["patriot act"] (https://www.congress.gov/107/plaws/publ56/PLAW-107publ56.pdf) besagt, dass die US-Regierung grundsätzlich Ihre Daten von amerikanischen Unternehmen abfragen kann, um "Terrorismus abzufangen und zu behindern".
Es hat auch unbestätigte Berichte über Missbrauch gegeben, bei dem Industrie- und geistige Geheimnisse abgefragt wurden.

{{< notice "tip" >}}
Dies erweist sich als besonders gefährlich für Unternehmen in der **Finanzbranche** oder allgemein dort, wo **Unternehmen einen intellektuellen Wettbewerbsvorteil** haben
{{< /notice >}}
Natürlich kann (noch) niemand mit Sicherheit sagen, dass dies wirklich geschieht und dass es nicht nur zur Bekämpfung des Terrorismus verwendet wird, aber unser Unternehmen und viele andere sind sich einig, dass Ihre Daten nur Ihnen gehören sollten.

### 2. Unsere Probleme mit der Komplexität

Nun zurück zu einem erfreulicheren Thema: Die FAAS-Dienste der anderen Cloud-Anbieter sind erstaunlich. Sie sind vielseitig, gut in ihr System integriert und waren eine technologische Neuheit. Unser Problem war nur, dass man, wenn man "einfach loslegen" will, also einfach seinen Code einfügt, oft die Erfahrung macht, dass es nicht so einfach ist.

Die technische Verknüpfung mit anderen Diensten hat ihren Preis: Sie müssen API-Gateways einrichten, wenn Sie möchten, dass der Dienst eine Verbindung nach außen herstellt, und Sie müssen sich mit Ports, Firewalls, Sicherheitsgruppen und sogar Netzwerken auskennen.

Wenn Sie außerdem benutzerdefinierte Pakete wie numpy und pandas von Python verwenden, müssen Sie eine zusätzliche Schicht erstellen, die sich als ziemlich komplex erweist, anstatt nur die verwendeten Pakete aufzulisten.

Eine unserer Hauptanwendungen in der Vergangenheit bestand darin, kleine APIs zu erstellen, die in eine Datenbank schreiben und aus ihr lesen. 
In anderen FAAS-Lösungen muss man dafür das Netzwerk, die Datenbankverbindung und die benutzerdefinierte Schicht erstellen, was eine Menge sich wiederholender Aufgaben mit sich bringt. 

In unserer EasyFAAS-Lösung ist dies ganz einfach:

![EasyFAAS - Create a new function dashboard](/images/services/easyfaas/create-a-new-function.png)

# Inhalte

1. [Übersicht](/de/services/easyfaas#intro)
2. [Serverless Funktionstypen](/de/services/easyfaas#1-serverlose-funktionen-im-überblick)
3. [Verwaltete MongoDB](/de/services/easyfaas#2-managed-mongodb-übersicht)
4. [Tutorial](/de/services/easyfaas#1-erste-schritte)
    - [EasyFAAS Main Dashboard](/de/services/easyfaas#11-das-haupt-dashboard)
    - [Eine neue Funktion erstellen](/de/services/easyfaas#12-eine-neue-funktion-erstellen)
    - [Code Beispiel: Bitcoin price getter](/de/services/easyfaas#code-beispiel-bitcoin-price-getter)
    - [Die Funktionsdetailseite](/de/services/easyfaas#funktionsdetailseite)
5. [Preise](/de/services/easyfaas#easyfaas-abrechnung)


## Intro

EasyFAAS verkürzt die Markteinführungszeit und lässt Ihre Programmierer sich auf das Wesentliche konzentrieren: Ihren Code!

{{< notice "tip" >}}
Wussten Sie, dass Sie eine Funktion pro Monat kostenlos ausführen können? 
[Beanspruchen Sie Ihre kostenlose Funktion](https://app.easyfaas.de/)
{{< /notice >}}
Um dies zu erreichen, unterstützt EasyFAAS derzeit zwei Funktionen:

#### 1. Serverlose Funktionen

- Unterschieden in **"einfache "** und **"Speicher "** Funktionen
- Unterscheidung in **"zeitgesteuerte "** und **"kontinuierliche "** Funktionen

#### 2. Eine verwaltete MongoDB NoSQL-Datenbank

- Einfache Integration ohne viel Setup in Ihre EasyFAAS-Funktionen

### 1. Serverlose Funktionen im Überblick

Eine "**Speicher**"-Funktion unterscheidet sich von einer "einfachen" Funktion dadurch, dass sie **Persistenz** bietet, was bedeutet, dass bei einem Absturz oder Neustart der Funktion die im Pfad **"/mnt/persistent/"** gespeicherten Objekte erhalten bleiben.

Eine "**zeitgesteuerte**" Funktion unterscheidet sich von der "kontinuierlichen" Funktion dadurch, dass die zeitgesteuerte nach einem bestimmten **Zeitplan** läuft, während die kontinuierliche ständig läuft.

Diese beiden Einstellungen können kombiniert werden, wodurch sich insgesamt vier kombinierbare Möglichkeiten für serverlose Funktionen ergeben:

#### 1.1 Einfache-kontinuierliche Funktion

- Gut für Webanwendungen, die keine Speicherung benötigen. 
- Beispiele: 
    - Sie wollen eine API oder Website anzeigen lassen, bei der keine Daten gespeichert werden müssen
    - Sie wollen aktuelle Krypto-Kurse herunterladen und den Wechselkurs zwischen zwei Paaren berechnen

#### 1.2. Einfach-zeitgesteuerte Funktion

- Gut für Aufträge, die Sie ausführen lassen wollen und die keine Speicherung erfordern
- Beispiele:
    - Auslösen anderer Endpunkte mit Post-Requests
    - Starten externer Backups
    - Herunterladen von Daten und Schreiben dieser Daten in die verwaltete MongoDB


#### 1.3. Storage-Continuous-Funktion

- Gut für Webanwendungen, die Speicherplatz benötigen.
- Beispiele:
    - Eine API, die aktuelle Benutzer als json empfängt und sie auf der Festplatte speichert
    - Eine API oder Website, die Bilder auf der Festplatte speichern muss


#### 1.4. Speicherzeitgesteuerte Funktion

- Gut für Jobs, die Speicherplatz benötigen
- Beispiele:
    - Sie möchten stündlich Preisdaten herunterladen und sie in einer CSV-Datei speichern
    - Sie möchten Sicherungskopien einer Datenbank erstellen

### 2. Managed MongoDB Übersicht

Wenn der Speicherplatz auf der Festplatte nicht ausreicht, können Sie einfach eine verwaltete MongoDB-Instanz aufsetzen, auf die Sie von Ihren serverlosen Funktionen aus zugreifen können.

Eine verwaltete MongoDB ist sinnvoll, wenn Sie mehrere Funktionen ausführen möchten, die alle auf dieselben Informationen zugreifen, z. B. wenn Sie Ihre Arbeitslasten auf mehrere Funktionen verteilen oder Funktionen parallel ausführen.

Die großen Vorteile des gemanagten MongoDB-Dienstes sind, dass er im Gegensatz zu anderen Hosting-Anbietern in einem eigenen Netzwerk verbleibt, d.h. er ist nicht dem Internet ausgesetzt, aber Sie können trotzdem problemlos in Ihren Funktionen darauf zugreifen.

Das bedeutet, dass Sie sich keine Gedanken über SSL-Verbindungen, sichere Passwörter oder andere Dinge machen müssen und es in Sekundenschnelle zum Laufen bringen können. Ein Beispiel für eine Verbindung mit Python lautet wie folgt:

```python
from pymongo import MongoClient
client = MongoClient('mongodb://mongodb:27017/')
```
Dies erspart Ihnen viele Schritte im Vergleich zu anderen Hosting-Anbietern, bei denen Sie SSL-Zertifikate, Ports, Firewalls und Benutzerpasswortkombinationen einrichten müssen.

Anwendungsbeispiele für die verwaltete MongoDB sind:
- Sie speichern Elemente als json in MongoDB mit Hilfe von benutzerdefinierten EasyFAAS-Funktionen. Wenn eine Funktion nicht ausreicht, können Sie Ihre Funktion einfach hochskalieren, und die Last wird automatisch auf zwei Funktionen verteilt.
- Sie bauen eine ETL-Pipeline auf, bei der die erste Funktion Daten sammelt und in der Datenbank speichert, die zweite Funktion Berechnungen darauf anwendet und sie wieder in die Datenbank schreibt und die dritte Funktion das Ergebnis als API bereitstellt


## 1. Erste Schritte

{{< notice "note" >}}
  EasyFAAS unterstützt derzeit nur **Python**, aber wir haben Node, React und andere bereits implementiert. [Erzählen Sie uns von Ihren Code-Vorlieben](/de/contact) und wir können es vielleicht zum Laufen bringen.
{{< /notice >}}

### 1.1 Das Haupt-Dashboard

Gehen Sie zu [https://app.easyfaas.de/](https://app.easyfaas.de/) und registrieren Sie sich oder melden Sie sich an.

<center>
    <img src="/images/tutorial/easyfaas/maindashboard.png" style="width:50%" alt="Easyfaas main dashboard">
</center>

Das Haupt-Dashboard ist das zentrale Kontrollsystem für EasyFAAS. Hier erhalten Sie einen Überblick über die verschiedenen Dienste, die Ihnen zur Verfügung stehen.

### 1.2 Eine neue Funktion erstellen

Klicken Sie als nächstes auf **Neue Funktion**, wodurch Sie zur Auswahl des Funktionstyps gelangen.

![easyfaas-Funktionsartenauswahl](/images/tutorial/easyfaas/newfunction.png)

**Was ist eine zeitlich begrenzte und was ist eine kontinuierliche Funktion?**

{{< tabs >}}

  {{< tab "Timed Function" >}}
   Eine zeitgesteuerte Funktion eignet sich am besten für Aufträge, die nicht ständig, sondern nur in bestimmten Zeitabständen ausgeführt werden müssen. Wenn Sie Cron in der Vergangenheit verwendet haben, ist das so ziemlich alles. 

   Sie können Cron-Zeitpläne so definieren, wie Sie es gewohnt sind, z. B.


    <table>
        <tr>
            <th>
                Cron Ausdruck
            </th>
            <th>
                Bedeutung
            </th>
        </tr>
        <tr>
            <td>30 2 * * *</td>
            <td>Jeden Tag um 2:30</td>
        </tr>
        <tr>
            <td>30 * * * *</td>
            <td>Jeden Tag, jede Stunde um :30 (2:30, 3:30, 4:30 ...)</td>
        </tr>
        <tr>
            <td>01 2 1 * *</td>
            <td>2:01 am ersten Tag des Monats</td>
        </tr>
    </table>


{{< notice "info" >}}
Ich benutze gerne die Website [https://crontab.guru/](https://crontab.guru/), um meine Ausdrücke zu überprüfen
{{< /notice >}}
  {{< /tab >}}

  {{< tab "Continuous Function" >}}
  Eine kontinuierliche Funktion wird ständig ausgeführt und ist am besten geeignet, wenn Sie einen Webservice oder eine API ausführen möchten.
  {{< /tab >}}

{{</ tabs >}}

### 1.3 Der Bildschirm zum Erstellen von Funktionen

Für dieses Tutorial habe ich mich für eine kontinuierliche Funktion entschieden

![Erstellen Sie eine neue kontinuierliche Funktion](/images/tutorial/easyfaas/createfunctioncontinuous.png)
Werfen wir einen Blick auf die verschiedenen Elemente

#### 1.3.1 Einrichtungselemente

**Funktionsname**

Dies kann ein beliebiger Name sein. Der Funktionsname wird später in eine kleingeschriebene, durch "-" getrennte Form umgewandelt.
So wird z.B. aus "My awesome FuNcTiOn" "my-awesome-function".

**Funktionsanzahl**

Hier kommt die **Skalierbarkeit** ins Spiel. Lassen Sie die Anzahl der Funktionen vorerst bei 1, aber wenn Sie später feststellen, dass Sie mehr Leistung benötigen, können Sie Ihre Funktion hier einfach hochskalieren.

**PIP-Anforderungen**

Anstatt nun eine Schicht für Ihre FAAS-Funktion zu erstellen, können Sie **hier einfach Ihre Pip-Pakete eingeben**, und sie werden automatisch installiert. So einfach ist das.

**Debian-Anforderungen**

Alle Funktionen sind in Debian gebaut. Das heißt, Sie können einfach jedes Debian-Paket installieren, wenn Sie es brauchen. Wenn Sie es auf Ihrem lokalen System mit "apt install ..." installiert haben, können Sie es hier auflisten. Dies ist nützlich, wenn Sie einige systembasierte Werkzeuge wie imagemagic, wkhtml und andere benötigen. **Dies wird derzeit noch nicht von anderen FAAS-Diensten unterstützt**.

**Sichtbarkeit**

Ihre EasyFAAS-Funktion wird standardmäßig mit aktivierter Sicherheit ausgeliefert. Wenn Ihre Funktion öffentlich ist, ist sie für jeden zugänglich. Wenn sie privat ist, müssen Sie ein Authentifizierungstoken an den Endpunkt senden. 
Bedeutet das, dass Sie neue Benutzer und alles andere erstellen müssen? Nein, Sie können einfach ein Authentifizierungs-Token über unsere RestAPI mit Ihrem **normalen Benutzer und Kennwort** erhalten und dieses Token dann verwenden, um Ihre Funktion zu starten. 
So einfach ist das.

**Funktionstyp**

Es gibt verschiedene Funktionen zur Auswahl.
Die Auswahl ist **einfache Funktion** und **Speicherfunktion**.

Sie unterscheiden sich dadurch, dass eine Speicherfunktion **Persistenz** hat, während eine normale Funktion keine hat.

Persistenz bedeutet, dass wenn Ihre Funktion Daten auf die Festplatte schreibt, diese sicher sind. 

{{< notice "info" >}}
Schreiben oder lesen Sie aus einer lokalen Datei? Zum Beispiel eine .csv- oder .txt-Datei? Dann brauchen Sie Persistenz. Wenn Ihre Funktion nur rechnet und nichts schreibt oder liest, können Sie eine einfache Funktion wählen
{{< /notice >}}

Die Persistenz wird im Verzeichnis **/mnt/persistence/** aktiviert und nicht in anderen Verzeichnissen.

Das bedeutet, dass Sie temporäre Dateien in beiden Versionen lesen und schreiben können, sie aber nur persistieren, wenn sie in den Pfad /mnt/persistence geschrieben werden.

{{< tabs >}}

  {{< tab "Simple Function" >}}
  Keine persistence

<pre>
<code>
with open("./tmp.txt", "w") as file:
    file.write("my temporary data")

with open("./tmp.txt", "r") as file:
    data = file.read() # <--- keine Erfolgsgarantie, wenn die Funktion neu startet 
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
    data = file.read() # <--- keine Erfolgsgarantie, wenn die Funktion neu startet 

# correct way with persistence
with open("/mnt/persistence/longterm.txt", "w") as file:
    file.write("my temporary data")

with open("/mnt/persistence/longterm.txt", "r") as file:
    data = file.read() # <--- Funktioniert bei Neustart
print(data) 
</code>
</pre>
  {{< /tab >}}

{{</ tabs >}}

#### 1.3.1 Code

Dies ist der Kernteil Ihrer Funktion.

Ihre Funktion verwendet [FastAPI](https://fastapi.tiangolo.com/) im Hintergrund, aber Sie müssen sich um nicht viel kümmern, wenn Sie den bereits eingefügten Startcode verwenden:

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

Die EasyFAAS-Funktion unterstützt nur die Weiterleitung zur Root-Domäne "/". Das heißt, wenn Sie andere Routen erstellen, werden diese nicht verwendet.

Was Sie jedoch ändern können, ist der **Anfragetyp**. Das kann GET oder POST sein, aber auch die anderen.
Für die meisten Anwendungsfälle sollten GET und POST jedoch ausreichen.

Wenn Sie Ihren Code anpassen möchten, können Sie einfach Ihre Berechnungen und Funktionen innerhalb der "root"-Funktion hinzufügen. 

Werfen wir einen Blick auf einige Beispiele

### Code-Beispiel: Bitcoin Price getter

<center>
    <video controls width="60%" poster="/videos/easyfaas/DemoThumb.png" loading="lazy">
        <source src="/videos/easyfaas/EasyFAAS-Tech-Demo.webm"
                type="video/webm">
        <source src="/videos/easyfaas/EasyFAAS-Tech-Demo.mp4"
                type="video/mp4">
        Use a newer browser to see this video.
    </video>
    <p><a href="/services/easyfaas">Vorheriges Video: EasyFAAS Intro</a></p>
</center>

Nehmen wir an, Sie möchten eine kleine Route erstellen, die nur den aktuellen Bitcoin-Kurs ausgibt. Wir verwenden dafür die kostenlose Coingecko-Route.

Wir werden den Code so anpassen, dass er wie folgt aussieht:

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

Da wir diese Funktion kontinuierlich ausführen wollen und sie nirgendwo Daten speichern muss, wählen wir eine **kontinuierliche** und **einfache** Funktion.

Nachdem Sie auf "Bereitstellen" geklickt haben, kehren Sie zum Hauptbildschirm zurück, wo Sie Ihre Funktion sehen.

<img loading="lazy" src="/images/tutorial/easyfaas/deployedfunction.png" alt="Deployed Easyfaas function">

Klicken Sie dann auf "Bearbeiten" neben Ihrer Funktion, um zum Detailbildschirm der Funktion zu gelangen.


#### Funktionsdetailseite

<img loading="lazy" src="/images/tutorial/easyfaas/function-detail-page.png" alt="Function Detail Page">

Wir können hier eine Menge Informationen sehen, aber klicken wir zunächst auf den Link, der unter "Link" angegeben ist.
In diesem Fall ist es das: [https://api.easyfaas.de/functions/route/public/de96cbb3-aead-4485-9889-a76a92a8a719/function-name](https://api.easyfaas.de/functions/route/public/de96cbb3-aead-4485-9889-a76a92a8a719/function-name)

Wenn ich darauf klicke, gibt sie zurück:

```json
{
"status_code": 200,
"status": "ok",
"message": "{\"mins\": 5, \"price\": \"19756.28232097\"}"
}
```
Die "echte" Antwort unserer Funktion befindet sich im Schlüssel "Nachricht" im Wörterbuch. Warum ist das so? Wir wollen eine Art Überprüfung, ob die Anfrage wirklich erfolgreich war, oder wenn nicht, eine Art Fehlermeldung.

Wenn Ihre Anwendung also Ihre EasyFAAS-Route abfragt, sollte sie immer nach dem "status_code"-Teil suchen. Wenn die Funktion fehlschlägt, gibt sie zum Beispiel den Code 500 zusammen mit einer Fehlermeldung im "status"-Teil zurück.

Ein Beispiel dafür, wie Ihre Anwendung die EasyFAAS-Route abfragen würde, ist:

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

##### Funktionsdetailseite: Protokolle

Wenn Sie sich die Funktionsdetailseite genauer ansehen, werden Sie einen Abschnitt "Protokolle" sehen.

<img loading="lazy" src="/images/tutorial/easyfaas/function-logs.png" alt="EasyFAAS Logs">

Hier wird alles angezeigt, was Ihr Funktionscode zurückgibt. Wenn Sie die Seite aktualisieren, werden die aktuellen Protokolle aktualisiert.
Wenn Ihre Funktion nicht ansprechbar ist, sehen Sie hier den Grund dafür.

##### Funktionsdetailseite: Metriken

Metriken zeigen Ihnen, wie viele Ressourcen Ihre Funktion verbraucht. Wenn Sie mehr "Power" benötigen, ist vielleicht [EasyHost](/de/services/easyhost) oder [EasyScale](/de/services/easyscale) etwas für Sie. Ansonsten einfach [Kontakt](/contact).

<img loading="lazy" src="/images/tutorial/easyfaas/function-metrics.png" alt="EasyFAAS Metrics">

# EasyFAAS-Abrechnung

Vielleicht haben Sie das Wort "Credits" schon oft gelesen. Was ist damit gemeint?

EasyFAAS vereinfacht die Abrechnung, indem es "Guthaben" anstelle von nutzungsabhängigen Gebühren berechnet.
Bei anderen Cloud-Anbietern haben Sie oft nicht die volle Transparenz darüber, was Ihnen am Ende des Monats in Rechnung gestellt wird. Es gibt versteckte Traffic-Gebühren, versteckte Load-Balancer-Gebühren und vieles mehr, das Sie nicht vorhersehen können, wenn Sie nicht die Zahlen überprüfen.

EasyFAAS schafft hier Abhilfe, indem es die Abrechnung vereinfacht:

| Function Type        | Credit Kosten pro Monat           | Euro Wert  |
| ------------- |:-------------:| -----:|
| Simple function     | 1 | 2€ |
| Storage function     | 2      |   4€ |
| Managed MongoDB | 5      |    10€ |

Keine versteckten Gebühren, kein gar nichts. In zukünftigen Updates werden wir sogar eine **Autoskalierung** basierend auf dem verbleibenden Guthaben auf Ihrem Konto einführen, d.h. wenn Sie mehr Guthaben als Funktionen haben und eine Funktion nahe an ihrem Limit ist, wird sie auf z.B. 2 Funktionen statt einer skaliert.

Die Abrechnung erfolgt über Stripe, einen sicheren und zuverlässigen Zahlungsanbieter. 

<center>
    <a href="https://app.easyfaas.de/" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Starten Sie kostenlos!</button></a>
</center>