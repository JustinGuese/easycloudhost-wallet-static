---
title: "Was ist Docker Swarm?"
date: 2022-08-11T11:40:24+06:00
# post thumb
images:
  - "images/blog/kubernetes-tutorial.png"
#author
author: "Justin Güse"
# description
description: "In dieser Einführungsserie werden wir untersuchen, was Docker Swarm ist und wie es mit Kubernetes verglichen wird"
# Taxonomies
categories: ["Academy", "Kubernetes"]
tags: ["Kubernetes", "Docker", "K8s", "Docker Swarm", "Tutorial"]
icon: "fas fa-business-time"
draft: false
---

## Our full Kubernetes Tutorial series

Get up and running with your Kubernetes knowledge:

1. [What is Kubernetes?](/blog/what-is-kubernetes/)
2. [What is Kubernetes Monitoring?](/blog/what-is-kubernetes-monitoring/)
3. [What is Kubernetes Management?](/blog/what-is-kubernetes-management/)
4. [What are Kubernetes secrets?](/blog/what-are-kubernetes-secrets/)
5. [What are Kubernetes pods?](/blog/what-are-kubernetes-pods/)
6. [What is Kubernetes support?](/blog/what-is-kubernetes-support/)
7. [What is Enterprise Kubernetes?](/blog/what-is-enterprise-kubernetes/)

---

Ein Clustering- und Scheduling-Tool für Docker-Container heißt Docker Swarm. Sie können eine Gruppe von Docker-Hosts als eine Einheit verwalten, indem Sie einen Cluster von ihnen einrichten. Dies ist sowohl für die Entwicklung großer Anwendungen als auch für die Disaster-Recovery-Planung (DR) von Vorteil. In diesem Blog-Artikel gehen wir auf die Definition, die Funktionsweise und einige der Vorteile von Docker Swarm ein.

## Wo bekomme ich Docker Swarm?

Sie können Docker Swarm über den Docker Store beziehen. Wenn Sie eine Docker-ID haben, können Sie sich anmelden und über die Befehlszeile auf den Store zugreifen. Um Swarm zu finden, geben Sie "docker swarm" in die Suchleiste ein. Daraufhin wird eine Liste der verfügbaren Optionen angezeigt, darunter "Erstellen", "Beitreten" und "Verlassen". Wählen Sie die gewünschte Option aus und folgen Sie den Anweisungen.

Sie können Swarm auch auf GitHub finden. Um es zu installieren, klonen Sie einfach das Repository und führen das Installationsskript aus. Sobald es installiert ist, können Sie einen neuen Cluster erstellen, indem Sie "docker swarm init" ausführen. Um einem bestehenden Cluster beizutreten, verwenden Sie den Befehl "docker swarm join". Und um einen Cluster zu verlassen, verwenden Sie "docker swarm leave".

Mit Swarm können Sie problemlos eine große Anzahl von Docker-Containern verwalten. Wenn Sie also nach einer einfachen Möglichkeit suchen, mit der Container-Orchestrierung zu beginnen, ist Docker Swarm genau das Richtige für Sie.

## Was sind Swarm-Dienste?

Swarm-Dienste sind eine Art von Cloud Computing, bei dem eine Gruppe von verteilten Geräten einen Dienst bereitstellt. Dies steht im Gegensatz zu herkömmlichen Cloud-Diensten, die sich in der Regel auf einen einzelnen Server oder ein Rechenzentrum stützen.

- Schwarmdienste haben mehrere Vorteile gegenüber herkömmlichen Cloud-Diensten. Erstens sind sie skalierbarer und widerstandsfähiger. Wenn ein Gerät im Schwarm ausfällt, können die anderen den Dienst weiter erbringen.
- Zweitens sind sie energieeffizienter. Durch die Verteilung der Arbeitslast auf viele Geräte kann jedes Gerät mit einem geringeren Stromverbrauch arbeiten.
- Und schließlich sind Schwarmdienste oft kostengünstiger. Da sie sich auf Standardhardware stützen, können sie mit kostengünstigeren Komponenten erstellt werden.

Daher stellen Schwarmdienste eine attraktive Alternative für Unternehmen dar, die ihre IT-Kosten senken wollen.

Für die Orchestrierung von Containern gibt es zwei Hauptoptionen: Docker Swarm und Kubernetes. Beide haben ihre Vor- und Nachteile, aber welche ist die beste Option für Sie?

## Docker Swarm vs. Kubernetes

Docker Swarm ist aus vielen Gründen eine beliebte Wahl. Zunächst einmal ist es sehr einfach einzurichten und zu verwenden. Es ist nicht notwendig, zusätzliche Software oder Tools zu installieren, und die Lernkurve ist sehr kurz. Darüber hinaus fügt sich Docker Swarm nahtlos in das Docker-Ökosystem ein, was es zu einer natürlichen Wahl für diejenigen macht, die bereits Docker verwenden. Manche Leute finden jedoch, dass Docker Swarm weniger skalierbar und zuverlässig ist als Kubernetes.

Kubernetes hingegen ist ein komplexeres System, bietet aber eine höhere Skalierbarkeit und Zuverlässigkeit. Außerdem ist es flexibler, was die Bereitstellungsoptionen angeht, und lässt sich leicht mit Plugins und Add-ons erweitern. Allerdings ist die Lernkurve für Kubernetes viel steiler als für Docker Swarm, und der Einstieg kann schwierig sein, wenn Sie nicht bereits mit der Container-Orchestrierung vertraut sind.

Welche Lösung sollten Sie also wählen? Letztlich hängt es von Ihren Bedürfnissen und Vorlieben ab. Wenn Sie ein einfach zu bedienendes System mit minimaler Einrichtungszeit suchen, ist Docker Swarm vielleicht die beste Option. Wenn Sie jedoch ein leistungsfähiges und skalierbares System benötigen, ist Kubernetes wahrscheinlich die bessere Wahl.

## Docker Swarm-Konzepte

Docker Swarms verwenden ein paar Schlüsselkonzepte:

- Dienste: Dies sind lang laufende Prozesse, die über mehrere Maschinen in einem Swarm repliziert werden. Dienste werden verwendet, um Dinge wie Webserver, Datenbanken oder andere Prozesse darzustellen, die in einer Cluster-Umgebung ausgeführt werden müssen.
- Aufgaben: Dies sind die einzelnen Instanzen eines Dienstes, die auf jedem Rechner im Swarm ausgeführt werden. Wenn Sie also einen Dienst haben, der sich über drei Rechner repliziert, dann laufen drei Aufgaben - eine auf jedem Rechner.
- Knoten: Dies sind die einzelnen Maschinen, aus denen ein Docker-Swarm besteht. Jeder Knoten hat eine eindeutige ID und kann entweder ein Managerknoten oder ein Arbeitsknoten sein.
- Manager-Knoten: Dies sind die Knoten, die für die Aufrechterhaltung des Zustands des Schwarms verantwortlich sind und sicherstellen, dass der gewünschte Zustand erreicht wird. Managerknoten führen auch Aufgaben aus, wie z. B. das Planen neuer Aufgaben, das Zurücknehmen von Änderungen oder das Hinzufügen neuer Knoten zum Schwarm.
- Arbeiterknoten: Dies sind die Knoten, die die ihnen von den Managerknoten zugewiesenen Aufgaben tatsächlich ausführen. Arbeiterknoten haben keinen Zugriff auf die Schwarmverwaltungs-API und können keine Verwaltungsaufgaben ausführen.
- Overlay-Netzwerke: Dies sind virtuelle Netzwerke, die sich über mehrere Hosts in einem Swarm erstrecken. Overlay-Netzwerke ermöglichen es Containern auf verschiedenen Hosts, miteinander zu kommunizieren, ohne einen externen Router zu durchlaufen.
- Vertraulichkeiten: Secrets sind Dateien oder Strings, die sensible Daten wie Passwörter oder API-Schlüssel enthalten. Secrets können bestimmten Diensten oder Aufgaben zur Verfügung gestellt werden und werden im Ruhezustand und bei der Übertragung verschlüsselt.
- Stapel: Mit Stapeln können Sie eine Gruppe von Diensten definieren, die gemeinsam bereitgestellt werden müssen. Dies ist z. B. bei Microservices-Anwendungen nützlich, bei denen möglicherweise Dutzende verschiedener Dienste gleichzeitig bereitgestellt werden müssen. Alle Dienste in einem Stack können mit einem einzigen Befehl bereitgestellt werden.

## Docker Swarm in großem Maßstab

Docker Swarm ist ein leistungsstarkes Tool für die Verwaltung und Koordinierung einer großen Anzahl von Docker-Containern. Durch die Möglichkeit, mehrere Docker-Hosts zu einem Cluster zusammenzufassen, erleichtert Swarm die Bereitstellung und Verwaltung von containerisierten Anwendungen in großem Umfang.

Darüber hinaus bietet Swarm eine Reihe von Funktionen, die es für groß angelegte Bereitstellungen gut geeignet machen, darunter die Unterstützung für mehrere Netzwerk- und Speicher-Backends, erweiterte Lastausgleichsfunktionen und eine integrierte Service-Erkennung. Daher ist Docker Swarm eine ideale Lösung für alle, die containerisierte Anwendungen in großem Umfang bereitstellen und verwalten möchten.

## Was also ist Docker Swarm?

Zusammenfassend lässt sich sagen, dass Docker Swarm ein leistungsstarkes Tool ist, mit dem Sie eine große Anzahl von Containern verwalten können. Durch das Erstellen und Verwalten eines Schwarms können Sie sicherstellen, dass Ihre Container immer betriebsbereit sind und gleichmäßig über Ihre Infrastruktur verteilt sind. Außerdem können Sie mit Swarm problemlos neue Container zu Ihrem System hinzufügen und sie entfernen, wenn sie nicht mehr benötigt werden. Im Vergleich zu anderen Content-Management-Lösungen können Sie mit Docker Swarm also viel Zeit und Mühe sparen.


{{< notice "tip" >}}
  Wussten Sie schon, dass wir [EasyKube, unsere verwaltete Kubernetes-Lösung, jetzt im Angebot haben?](/de/services/easykube)
{{< /notice >}}

[Nächster Artikel: Was ist Virtualisierung, und warum ist sie für das Funktionieren von Kubernetes unerlässlich?](/de/blog/was-ist-virtualisierung/)

