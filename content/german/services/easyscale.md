---
title: "EasyScale"
description: "Skalieren Sie Ihre Anwendungen und machen Sie sie schneller"
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

# Verbessern Sie die Geschwindigkeit und Zuverlässigkeit Ihrer Anwendungen mit EasyScale

Die Ladezeiten einer Seite sind sowohl für Ihre Kunden als auch für Ihre Mitarbeiter wichtig. Schon eine **2 Sekunden längere Ladezeit kann dazu führen, dass ein Kunde Ihre Website verlässt** ([Quelle](/de/services/websites/)).

Außerdem haben Sie vielleicht eine Anwendung erstellt, die die Last einiger Benutzer gut bewältigt, aber Schwierigkeiten hat, mit neuen Benutzern Schritt zu halten?

**EasyScale ist Ihre Lösung**

<hr>
<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kostenlose 15-minütige Beratung zu EasyScale</button></a>
</center>
<hr>

1. [Die 5 Hauptgründe für langsame Anwendungen](/de/services/easyScale/#die-4-hauptgründe-für-langsame-anwendungen)
2. [Wie kann ich meine Anwendung skalieren?](/de/services/easyScale/#wie-kann-ich-meine-anwendung-skalieren)

## Die 5 Hauptgründe für langsame Anwendungen

Herkömmliche Anwendungen werden als riesige Einzelprogramme erstellt. Dies beschleunigt zwar die Entwicklung, aber es **skaliert sehr schlecht**.

<center>
    <img loading="lazy" style="width:80%" alt="monolithic vs microservice architecture" src="/images/services/easyscale/microservices-and-monolithic-architectures.jpg" />
    <p>Monolithic vs Microservice architecture. <a href="https://www.bmc.com/blogs/microservices-architecture/" target="_blank">Image by Rancher</a></p>
</center>

Sie fragen sich vielleicht: Warum ist meine Anwendung oder Website so langsam? Normalerweise gibt es dafür 4 einfache Gründe.

#### 1. Kein Multiprocessing

Wenn Ihre Anwendung zum Beispiel kein Multiprocessing unterstützt, kann sie nur eine Funktion gleichzeitig ausführen. Nehmen wir an, Sie fragen jedes Mal, wenn ein Link aufgerufen wird, eine Datenbank ab. Wenn **kein Multiprocessing** verwendet wird, kann jeweils nur ein Teil der Daten aus der Datenbank abgerufen werden, während die anderen "in der Warteschleife" liegen. 

#### 2. Keine Entkopplung

Stellen Sie sich außerdem vor, dass ein Teil Ihrer Anwendung ausfällt. Werden dadurch alle anderen Teile blockiert, bis Ihre Anwendung wieder online ist? Wenn keine **Entkopplung** stattfindet, lautet die Antwort ja.

Die Antwort heißt **Entkopplung**. Entkopplung bedeutet, dass Sie Ihre Anwendung **in kleinere Microservices** aufteilen, die nur eine Sache tun, und diese mit einer **Nachrichtenwarteschlange** wie RabbitMQ verbinden, so dass ein ausfallender Teil Ihrer Anwendung keine Auswirkungen auf andere Teile hat.

Ein weiterer Vorteil ist, dass **Server-Ressourcen** auf den Teil verteilt werden können, der sie gerade am meisten benötigt. Nehmen wir an, Sie haben nicht viel Verkehr auf dem Frontend, da nur einige Benutzer Ihre Website besuchen, aber eine große Last auf Backend-Berechnungen. Bei herkömmlichen Anwendungen würde jeder Teil nur einen gleichen Teil der Ressourcen erhalten, was bedeutet, dass das Frontend im Leerlauf ist, während das Backend überlastet ist. 

Wenn Sie Ihre Anwendung in **Microservices** aufteilen, wird die **Last automatisch dorthin verteilt, wo sie am wichtigsten ist**. Das bedeutet, dass in unserem Beispiel das Frontend weniger Ressourcen hat als das Backend, zumindest in dem Moment, in dem es benötigt wird.

#### 3. Langsame Datenbanken

Dann unterstützen viele SQL-Datenbanken **keine horizontale Skalierung**. Das bedeutet, dass man nur einen immer größeren Server kaufen kann, was in der Regel recht teuer wird, da nur massenproduzierte Server (kleinere) günstig zu haben sind. Horizontale Skalierung bedeutet, dass man viele "kleinere" Server hat, auf denen jeweils die gleichen Datenbanken laufen. Es gibt Datenbanken, die eine horizontale Skalierung unterstützen, wie **MongoDB und [EasyDB](/de/services/easydb/)**, die dazu beitragen können, Kosten zu senken und langsame Datenbanken zu beschleunigen.

#### 4. Keine verteilte Datenverarbeitung

Sie sollten Software nie auf nur einem Server laufen lassen. Wenn dieser Server entweder langsam oder komplett offline ist, wird Ihre Anwendung scheitern.

**Das Ziel ist, Ihre Anwendung auf mehrere Server zu verteilen**.
Dies kann entweder mit einem FAAS-Framework wie [EasyFAAS](/de/services/easyfaas/) oder AWS Lambda geschehen, oder mit einem Container-Management-Framework wie [EasyKube](/de/services/easykube/) oder Kubernetes.

Auf diese Weise werden Ihre Anwendungen automatisch auf einen anderen Server umgeschaltet, wenn ein Server langsam oder offline wird.

#### 5. Keine automatische Skalierung

In engem Zusammenhang mit dem vorigen Punkt gibt es Möglichkeiten, Ihre Anwendung an den Bedarf anzupassen. Dies wird als **Autoskalierung** bezeichnet. Nehmen wir das klassische Beispiel des "Prime Day". Einmal im Jahr bietet Amazon einen riesigen Ausverkauf an, der zu einer über 100-fachen Serverlast führt. An anderen Tagen, wie z. B. an Weihnachten, gibt es so gut wie keinen Datenverkehr, so dass die Server nicht ausgelastet sind. 

Die traditionelle Lösung wäre, einfach einen riesigen Server zu kaufen, der den "Prime Day" bewältigen kann. Das führt aber dazu, dass er an 90 % der Tage **leer läuft und eine Menge unnötiger Kosten verursacht**.
Die andere Möglichkeit wäre, Verkehrsspitzen einfach zu "ignorieren" und **diese zusätzlichen Kunden zu verlieren**, was ebenfalls nicht ideal ist.

Die Lösung besteht darin, die Anwendung an die aktuelle Nachfrage anzupassen. Dies kann mit einem FAAS-Framework wie [EasyFAAS](/de/services/easyfaas/) oder AWS Lambda erreicht werden, oder mit einem Container-Management-Framework wie [EasyKube](/de/services/easykube/) oder Kubernetes.

## Wie kann ich meine Anwendung skalieren?

EasyScale ist eine Reihe der oben genannten Dienste, die Ihnen bei der Skalierung Ihrer Anwendung helfen.
Unser üblicher Arbeitsablauf sieht wie folgt aus:

1. **Kostenlose 15-minütige Beratung** zu Ihrer Anwendung
2. Ein **Identifizierungsworkshop**, um Schwachstellen in Ihrer Anwendung zu identifizieren
3. **Angebot** von unserer Seite, sortiert nach der Priorität der Wirksamkeit
4. Aufteilung der Anwendung in kleinere Teile, genannt **Microservices**
5. Einführung von **Nachrichtenwarteschlangen**, um diese Microservices zu entkoppeln und Abhängigkeiten zu reduzieren
6. Verwendung eines Frameworks wie **FAAS** oder **Kubernetes**, um die Last auf mehrere Server zu verteilen und automatische Skalierung zu unterstützen
7. Wechsel zu **horizontalen autoskalierbaren Datenbanken**, um Kosten zu senken und die Geschwindigkeit zu erhöhen 

<center>
    <a href="/contact" target="_blank"><button type="link" class="input-group-text btn btn-primary rounded">Kostenlose 15-minütige Beratung, wie wir Ihre Anwendung skalieren können</button></a>
</center>
<hr>