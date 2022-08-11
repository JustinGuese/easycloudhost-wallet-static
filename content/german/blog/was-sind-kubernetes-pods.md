---
title: "Was sind Kubernetes pods?"
date: 2022-08-11T11:40:24+06:00
# post thumb
images:
  - "images/blog/kubernetes-tutorial.png"
#author
author: "Justin Güse"
# description
description: "In dieser Einführungsreihe werden wir untersuchen, was Kubernetes-Pods sind und warum sie die wichtigsten Kubernetes-Teile sind, in denen Ihre Software läuft."
# Taxonomies
categories: ["Academy", "Kubernetes"]
tags: ["Kubernetes","pods", "Docker", "K8s", "Kubernetes pods", "Tutorial"]
icon: "fas fa-business-time"
draft: false
---

Ein Kubernetes-Pod ist eine Sammlung von einem oder mehreren Containern (z. B. Docker-Containern), die Netzwerk- und Speicherressourcen gemeinsam nutzen und sich an eine Reihe von Betriebsregeln halten. Die Inhalte eines Pods werden immer gemeinsam lokalisiert und geplant und in einem gemeinsamen Kontext ausgeführt. Pods sind die kleinsten bereitstellbaren Einheiten in Kubernetes.

Pods umfassen:

- Einen oder mehrere Container mit gemeinsamen Speicher-/Netzwerkressourcen.

- Eine eindeutige Netzwerk-IP-Adresse.

- Optionale Informationen wie Labels (zur Verwendung bei der Service-Erkennung), Secrets, Volume-Mounts und Konfigurationsdaten.

Pods abstrahieren von Low-Level-Details wie individuellen Prozess-IDs und Hostnamen (die vor allem für die Fehlersuche nützlich sind). Pods erleichtern auch die Bereitstellung mehrerer Replikate einer Anwendung. Durch die enge Kopplung von Containern in einem Pod können wir sicherstellen, dass sie koordinierten Zugriff auf Ressourcen wie Festplattenplatz und Arbeitsspeicher haben, was die Entwicklung selbstheilender Systeme vereinfacht. Durch die gemeinsame Nutzung einer IP-Adresse und eines Portraums können die Container eines Pods einander leicht finden und über localhost miteinander kommunizieren.

Kubernetes-Pods bieten eine hervorragende Möglichkeit, die Dichte der Arbeitslasten auf Ihren Servern zu erhöhen und gleichzeitig die Isolation zwischen den einzelnen Anwendungen aufrechtzuerhalten. Indem Sie mehrere eng zusammenhängende Anwendungen in einen einzigen Pod packen, können Sie die Vorteile einer höheren Dichte nutzen, ohne die Isolierung oder Leistung zu beeinträchtigen.

## Warum Kubernetes Pods verwendet

[Kubernetes](https://easycloudhost.de/blog/what-is-kubernetes/) verwendet Pods zur effizienten Verwaltung von Anwendungsbereitstellungen und Skalierung. Durch das Ausführen mehrerer Replikate einer Anwendung innerhalb von Pods kann Kubernetes sicherstellen, dass die Anwendung immer verfügbar ist und einen erhöhten Datenverkehr ohne Probleme bewältigen kann. Wenn mehr Kapazität benötigt wird, kann Kubernetes einfach weitere Pods erstellen, um den erhöhten Bedarf zu decken. Auf diese Weise lässt sich eine Anwendung je nach Bedarf problemlos vergrößern oder verkleinern.

Außerdem lassen sich durch die Verwaltung einzelner Pods anstelle einzelner Container Konfigurationsänderungen und Aktualisierungen einfacher durchführen. Wenn Sie zum Beispiel die Konfiguration einer Anwendung aktualisieren müssen, können Sie einfach die Pod-Definition aktualisieren und neu bereitstellen. Auf diese Weise wird sichergestellt, dass alle Container des Pods mit der neuen Konfiguration aktualisiert werden.

Insgesamt bieten Pods eine bequeme Möglichkeit, Bereitstellungen und Skalierungen zu verwalten und gleichzeitig einfache Aktualisierungen und Rollbacks zu ermöglichen. Das macht sie zu einer idealen Wahl für die Ausführung von Anwendungen in Kubernetes.

## Wie funktionieren Kubernetes-Pods?

Pods sind die kleinste Bereitstellungseinheit in Kubernetes. Ein Anwendungscontainer (oder in bestimmten Situationen mehrere Container), Speicherressourcen, eine bestimmte Netzwerk-IP-Adresse und Konfigurationseinstellungen sind alle in einem Pod enthalten. Pods werden immer gemeinsam platziert und geplant, was bedeutet, dass sie auf demselben Knoten platziert werden und dass jeder Pod für die Ausführung auf einem oder mehreren Knoten geplant wird.

Pods ermöglichen die gemeinsame Nutzung von Daten und die Kommunikation zwischen Containern innerhalb desselben Pods. Container innerhalb desselben Pods können über localhost miteinander kommunizieren. Die gemeinsame Nutzung von Daten erfolgt über Volumes, die in die Container eingebunden sind. Die Netzwerkkommunikation wird über einen gemeinsamen Netzwerkstack abgewickelt, den alle Container im Pod verwenden.

Pods bieten auch die Möglichkeit, festzulegen, wie viele Instanzen eines bestimmten Containers ausgeführt werden sollen. Dies wird als Replikations-Controller bezeichnet. Der Replikations-Controller stellt sicher, dass die angegebene Anzahl von Pods immer läuft, auch wenn einzelne Pods abstürzen oder gelöscht werden.


{{< notice "tip" >}}
  Wussten Sie schon, dass Sie all dies und noch viel mehr zeitsparende Zusatzfunktionen mit unserer [EasyKube verwalteten Kubernetes-Lösung](/de/services/easykube) erhalten?
{{< /notice >}}


## Pods mit Kubectl verwalten

[Kubernetes (https://easycloudhost.de/blog/what-is-kubernetes/) ist ein leistungsfähiges Tool zur Container-Orchestrierung, mit dem Sie Ihre Anwendungen verwalten und skalieren können. Eine der Funktionen von Kubernetes ist die Verwaltung von Pods, d. h. Gruppen von Containern in beliebiger Anzahl, die sich ein Netzwerk und Speicherplatz teilen. Mit dem Tool kubectl können Sie Ihre Pods verwalten. In diesem Abschnitt zeigen wir Ihnen, wie.

Kubectl ist ein Befehlszeilentool, das Sie für die Interaktion mit Ihrem Kubernetes-Cluster verwenden können. Sie können damit Pods erstellen, aktualisieren und löschen sowie deren Status und Protokolle anzeigen. Um kubectl verwenden zu können, müssen Sie es zunächst auf Ihrer Workstation installieren.

Eine Installationsanleitung für verschiedene Plattformen finden Sie hier: [https://kubernetes.io/docs/tasks/tools/install-kubectl/](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

Sobald kubectl installiert ist, können Sie es zur Verwaltung Ihrer Pods verwenden. Nehmen wir an, Sie haben einen Pod mit zwei Containern, einen für Ihren Anwendungscode und einen für eine Datenbank. Um die Details des Pods anzuzeigen, führen Sie den folgenden Befehl aus:

```bash
kubectl get pod my-pod
```

Dies würde eine ähnliche Ausgabe wie die folgende ergeben:

```bash
NAME READY STATUS RESTARTS AGE 
my-pod 2/2 Running 0 1d
```


Um die Protokolle für den Pod anzuzeigen, führen Sie den folgenden Befehl aus:

```bash
kubectl logs my-pod -c my-container1 -c my-container2 --since=1h --tail=100
```

Dies würde die 100 neuesten Protokollzeilen aus beiden Containern des Pods zurückgeben. Wenn Sie nur die Protokolle eines Containers sehen wollen, können Sie den Teil `-c my-container2` des Befehls weglassen.

Wenn Sie den Code in einem Ihrer Container aktualisieren müssen, können Sie den Befehl kubectl set image verwenden. Wenn Sie zum Beispiel das Image von my-container1 auf die Version 2.0 aktualisieren möchten, würden Sie den folgenden Befehl ausführen:

```bash
kubectl set image pod my-pod my-container1=my-image:2.0
```

Dadurch wird das Image des Containers aktualisiert und er wird gegebenenfalls neu gestartet. Wenn Sie beide Container des Pods auf einmal aktualisieren möchten, können Sie den Teil -c my-container2 des Befehls weglassen.

Wenn Sie schließlich einen Pod löschen müssen, können Sie den Befehl kubectl delete verwenden. Wenn Sie z.B. my-pod löschen möchten, würden Sie den folgenden Befehl ausführen:

```bash
kubectl delete pod my-pod
```

Dies würde den Pod und alle zugehörigen Ressourcen löschen.

Kubectl ist ein leistungsstarkes Tool, mit dem Sie Ihre Pods verwalten und für einen reibungslosen Betrieb sorgen können. Wenn Sie lernen, wie man es richtig einsetzt, können Sie alle Vorteile von Kubernetes voll ausschöpfen.

## Kubernetes-Pods für kontinuierliches Deployment

Kubernetes-Pods eignen sich hervorragend für die kontinuierliche Bereitstellung Ihrer Anwendungen. Indem Sie Ihre Anwendung in einen Pod packen, können Sie sicherstellen, dass sie immer auf dem neuesten Stand und für Ihre Benutzer verfügbar ist. Pods ermöglichen Ihnen auch die horizontale Skalierung Ihrer Anwendung, indem Sie weitere Pods zu Ihrer Bereitstellung hinzufügen. Dies ist besonders nützlich für Anwendungen, die viele Ressourcen benötigen, z. B. CPU oder Speicher. Durch das Hinzufügen weiterer Pods können Sie sicherstellen, dass Ihre Anwendung die Last bewältigen kann.

Schließlich bieten Pods eine Isolierung für Ihre Anwendung, was für die Sicherheit wichtig ist. Indem Sie Ihre Anwendung in einem eigenen Pod ausführen, können Sie die Exposition Ihrer Anwendung gegenüber anderen Teilen des Systems begrenzen. Durch diese Isolierung können Sie auch mehrere Versionen Ihrer Anwendung nebeneinander ausführen, was für Testzwecke nützlich ist. Kubernetes-Pods sind ein leistungsstarkes Tool für die kontinuierliche Bereitstellung und können Ihnen dabei helfen, Ihre Anwendungen auf dem neuesten Stand zu halten und reibungslos auszuführen.


{{< notice "tip" >}}
  Wussten Sie schon, dass Sie all dies und noch viel mehr zeitsparende Zusatzfunktionen mit unserer [EasyKube verwalteten Kubernetes-Lösung](/de/services/easykube) erhalten?
{{< /notice >}}

[Nächster Artikel: Was ist Kubernetes Support? Brauche ich ein Service-Paket? Muss ich selber Support anbieten für interne Teams?](/de/blog/was-ist-kubernetes-support/)