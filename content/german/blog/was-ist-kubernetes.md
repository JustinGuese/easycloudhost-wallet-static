---
title: "Was ist Kubernetes?"
date: 2022-08-09T15:40:24+06:00
# post thumb
images:
  - "images/blog/kubernetes-tutorial.png"
#author
author: "Justin Güse"
# description
description: "In dieser Einführungsserie erfahren Sie, was Kubernetes ist, wie es funktioniert und wie es Ihnen bei der Skalierung Ihrer Workloads hilft."
# Taxonomies
categories: ["Academy", "Kubernetes"]
tags: ["Kubernetes","Wie funktioniert Kubernetes?", "K8s", "Master Node", "Worker Node", "Tutorial"]
icon: "fas fa-business-time"
draft: false
---

## Unsere vollständige Kubernetes-Tutorial-Reihe

Machen Sie sich mit Ihrem Kubernetes-Wissen vertraut:

1. [Was ist Kubernetes?](/de/blog/was-ist-kubernetes/)
2. [Was ist Kubernetes Monitoring?](/de/blog/was-ist-kubernetes-monitoring/)
3. [Was ist Kubernetes Management?](/de/blog/was-ist-kubernetes-management/)
4. [Was sind Kubernetes secrets?](/de/blog/was-sind-kubernetes-secrets/)
5. [Was sind Kubernetes pods?](/de/blog/was-sind-kubernetes-pods/)
6. [Was ist Kubernetes support?](/de/blog/was-ist-kubernetes-support/)
7. [Was istEnterprise Kubernetes?](/de/blog/was-ist-enterprise-kubernetes/)

---

Kubernetes ist ein System zur Verwaltung von containerisierten Anwendungen in einem Server-Cluster. Es bietet eine Reihe von Funktionen, die es für groß angelegte Implementierungen gut geeignet machen, darunter:

- Horizontale Skalierung: Kubernetes kann je nach den Anforderungen der Anwendung problemlos nach oben oder unten skaliert werden. Dies macht es ideal für Anwendungen, die plötzliche Spitzen im Datenverkehr erleben.
- Selbstheilung: Wenn ein Knoten in einem Kubernetes-Cluster ausfällt, erkennt das System den Ausfall automatisch und plant die Migration der betroffenen Pods auf einen anderen Knoten. Dadurch wird sichergestellt, dass die Anwendung auch bei Hardwareausfällen verfügbar bleibt.
- Service-Erkennung und Lastausgleich: Kubernetes ist in der Lage, Dienste im gesamten Cluster automatisch zu erkennen und auszugleichen. Dies vereinfacht die Einrichtung neuer Dienste und reduziert die Gesamtkomplexität der Bereitstellung.

Kubernetes entwickelt sich schnell zum Standardwerkzeug für die Verwaltung umfangreicher Bereitstellungen von containerisierten Anwendungen. Dank seines robusten Funktionsumfangs und seiner Benutzerfreundlichkeit ist es für eine Vielzahl von Arbeitslasten gut geeignet.

**Wie funktioniert Kubernetes?**

Kurz gesagt ist Kubernetes ein Tool für die Verwaltung von containerisierten Anwendungen in großem Maßstab. Es bietet eine Möglichkeit zur Automatisierung der Bereitstellung, Skalierung und Verwaltung von Anwendungen, die in Containern ausgeführt werden. Kubernetes wird häufig in Verbindung mit Docker verwendet, einer Open-Source-Container-Laufzeitumgebung.

Kubernetes besteht aus einer Reihe von Komponenten, von denen jede eine Schlüsselrolle für den Betrieb spielt. Die wichtigsten Komponenten sind:

1. Der Master-Knoten: Der Master-Knoten ist für die Verwaltung des Kubernetes-Clusters verantwortlich. Er enthält den Zustand des Clusters und alle Komponenten der Steuerungsebene.
2. Die Worker-Knoten: Auf den Worker Nodes werden Ihre Anwendungen ausgeführt. Sie werden vom Master-Knoten verwaltet und erhalten von ihm Aufgaben.
3. etcd: etcd ist ein Key-Value-Store, der zum Speichern des Kubernetes-Cluster-Status verwendet wird.
4. Der Scheduler: Der Scheduler ist für die Zuweisung von Pods zu Knoten verantwortlich. Er berücksichtigt bei seinen Entscheidungen Faktoren wie die Ressourcenauslastung und die Knotenkapazität.
5. Der Controller-Manager: Der Controller Manager ist ein Prozess, der verschiedene Controller ausführt, die für die Verwaltung des Clusterzustands verantwortlich sind. Beispiele für Controller sind der Replication Controller, der sicherstellt, dass immer die gewünschte Anzahl von Replikaten eines Pods ausgeführt wird, und der Endpoints Controller, der das Endpoints-Objekt mit Informationen über Pods füllt, die Datenverkehr von einem Dienst empfangen sollen.
## **Warum Kubernetes verwenden?**

Kubernetes ist ein leistungsfähiges Container-Orchestrierungstool, mit dem Sie Ihre Anwendungen effizienter verwalten und bereitstellen können. Einige der Vorteile der Verwendung von Kubernetes sind:

- Erhöhte Effizienz: Mit Kubernetes können Sie die Bereitstellung und Verwaltung Ihrer Anwendungen automatisieren, wodurch Sie Zeit sparen und Ihre Produktivität steigern können.
- Größere Flexibilität: Mit Kubernetes können Sie Ihre Anwendungen auf jeder beliebigen Infrastruktur ausführen, sei es vor Ort oder in der Cloud.
- Verbesserte Betriebszeit: Kubernetes kann Ihnen helfen, eine höhere Betriebszeit für Ihre Anwendungen zu erreichen, indem es Funktionen wie Selbstheilung und automatische Rollbacks bietet.
- Geringere Kosten: Durch den Einsatz von Kubernetes können Sie die mit der Verwaltung und Bereitstellung Ihrer Anwendungen verbundenen Kosten senken.

Wie Sie sehen, bietet die Verwendung von Kubernetes viele Vorteile. Wenn Sie auf der Suche nach einem Tool sind, mit dem Sie Ihre Anwendungen effektiver verwalten können, ist Kubernetes eine sehr gute Option, die Sie in Betracht ziehen sollten.


## **Wo kann ich Kubernetes ausführen?**

Kubernetes kann auf einer Vielzahl von Plattformen ausgeführt werden, darunter öffentliche Clouds, private Clouds und Server vor Ort. Öffentliche Cloud-Anbieter wie Amazon Web Services (AWS), Microsoft Azure und Google Cloud Platform (GCP) bieten alle verwaltete Kubernetes-Dienste an. Diese Anbieter kümmern sich um die zugrunde liegende Infrastruktur und bieten zusätzliche Funktionen wie automatische Skalierung und Überwachung. Private Cloud-Plattformen wie OpenStack und VMware vSphere können ebenfalls für die Ausführung von Kubernetes verwendet werden.

Und schließlich kann Kubernetes auch auf Bare-Metal-Servern oder virtuellen Maschinen unter Linux oder Windows installiert werden. In den meisten Fällen ist es am besten, einen verwalteten Kubernetes-Dienst eines öffentlichen Cloud-Anbieters zu verwenden, aber die Flexibilität, Kubernetes überall auszuführen, kann unter bestimmten Umständen nützlich sein.
## **Was ist ein Kubernetes-Cluster?**

Ein Kubernetes-Cluster ist eine Gruppe von virtuellen Maschinen (Knoten), auf denen containerisierte Anwendungen ausgeführt werden. Kubernetes automatisiert die Installation, das Wachstum und die Verwaltung von containerisierten Anwendungen. Zur einfachen Verwaltung und Erkennung unterteilt es die Container, aus denen eine Anwendung besteht, in logische Teile.

Ein Kubernetes-Cluster kann auf einer Cloud-Plattform oder vor Ort bereitgestellt werden. Auf jedem Knoten in einem Kubernetes-Cluster läuft ein Prozess namens kubelet, der die Container auf diesem Knoten verwaltet. Die Knoten kommunizieren über ein gemeinsames Speichervolumen miteinander.

Ein Kubernetes-Cluster verfügt außerdem über einen Scheduler, der die Pods den Knoten zuweist, und einen Controller-Manager, der den Zustand des Clusters verfolgt und dafür sorgt, dass der gewünschte Zustand beibehalten wird.

Darüber hinaus gibt es einen API-Server, der die API offenlegt und den Benutzern die Interaktion mit dem Cluster ermöglicht. Ein Kubernetes-Cluster kann sowohl für die Verwaltung zustandsloser als auch zustandsorientierter Anwendungen verwendet werden. Zustandslose Anwendungen sind solche, bei denen die Daten nicht auf den Knoten gespeichert werden, wie z. B. Webserver. Zustandsbehaftete Anwendungen sind solche, bei denen die Daten auf den Knoten gespeichert sind, wie z. B. Datenbankserver. Kubernetes-Cluster können auch für die Verwaltung hybrider Anwendungen verwendet werden, die sowohl zustandslose als auch zustandsabhängige Komponenten enthalten.


{{< notice "tip" >}}
  Unser vollständig verwaltetes Kubernetes spart Ihnen eine Menge Zeit bei der Einrichtung von Volumes, Netzwerken und mehr, ab 12,99€/Monat, alles in Deutschland gehostet!
[Schauen Sie auf unserer EasyKube Seite vorbei!](/de/services/easykube)
{{< /notice >}}

### Was ist "Enterprise Kubernetes"?

Wenn Sie den Begriff "Kubernetes" hören, denken Sie vielleicht an etwas, das mit der Container-Virtualisierung zu tun hat, oder an ein Open-Source-System zur Automatisierung der Bereitstellung, Skalierung und Verwaltung von containerisierten Anwendungen. Kubernetes für Unternehmen" ist jedoch ein Begriff, der jetzt verwendet wird, um eine neue Klasse von Software zu beschreiben, die Unternehmen bei der Verwaltung ihrer Kubernetes-Bereitstellungen im großen Maßstab unterstützt.

Anbieter von Enterprise-Kubernetes-Plattformen bieten eine Reihe von Funktionen, die Unternehmen die Bereitstellung und Verwaltung von Kubernetes-Clustern erleichtern können. Dazu gehören die Unterstützung mehrerer Cluster-Typen (z. B. Entwicklung, Staging, Produktion), die Integration in die bestehende IT-Infrastruktur (z. B. Überwachung, Protokollierung, Identitätsmanagement) und Tools zur Vereinfachung der Cluster-Verwaltung. Darüber hinaus enthalten viele Kubernetes-Plattformen für Unternehmen Funktionen, die es ihnen erleichtern sollen, ihre Anwendungen von herkömmlichen serverbasierten Umgebungen auf Container zu migrieren.

Es gibt zwar eine Reihe verschiedener Anbieter von Kubernetes-Plattformen für Unternehmen, aber zu den beliebtesten Optionen gehören Red Hat OpenShift, VMware Pivotal Container Service (PKS) und Canonical Charmed Kubernetes. Jede Plattform hat ihre eigenen einzigartigen Funktionen und Preismodelle, daher ist es wichtig, die spezifischen Anforderungen Ihres Unternehmens zu ermitteln, bevor Sie sich für eine Plattform entscheiden.

Richtig eingesetzt, kann Kubernetes für Unternehmen ein leistungsstarkes Tool für die Verwaltung umfangreicher Container-Bereitstellungen sein. Durch die Nutzung der von Kubernetes-Plattformen für Unternehmen angebotenen Funktionen können Unternehmen die Komplexität ihrer Bereitstellungen reduzieren und eine bessere Kontrolle über ihre Container-Umgebungen erlangen.

**Wie beginne ich mit der Verwendung von Kubernetes?**

Bevor Sie mit Kubernetes beginnen können, müssen Sie einige Bedingungen erfüllen. Ihre Linux-Distribution muss mit der für Kubernetes erforderlichen Kernel-Version laufen und die von Kubernetes benötigten Funktionen unterstützen. Außerdem müssen Sie über ein Benutzerkonto mit sudo-Rechten verfügen und einen Texteditor auf Ihrem System installiert haben. Werfen wir nun einen Blick auf die einzelnen Schritte bei der Einrichtung von Kubernetes.

Kubernetes besteht aus einer Reihe von Komponenten, die jeweils separat installiert werden können. Am einfachsten ist es jedoch, mit einer vorgefertigten Lösung wie Minikube zu beginnen. Minikube ist ein Kubernetes-Cluster mit einem einzigen Knoten, der auf Ihrem lokalen Rechner ausgeführt werden kann. Um Minikube zu installieren, befolgen Sie einfach die Anweisungen für Ihre spezielle Plattform.

Sobald Minikube einsatzbereit ist, können Sie Kubernetes verwenden. Als Erstes müssen Sie ein Deployment erstellen. Ein Deployment ist eine Gruppe identischer Pods, die dazu dienen, eine Anwendung oder einen Dienst bereitzustellen. Um ein Deployment zu erstellen, verwenden Sie den Befehl kubectl create. Dieser Befehl kümmert sich um die Erstellung der erforderlichen Pods sowie um die Einrichtung von Netzwerken und Speicher für Ihre Anwendung.

Jetzt, da Ihr Deployment erstellt ist, können Sie auf Ihre Anwendung zugreifen, indem Sie einen Dienst erstellen. Ein Dienst ist eine Abstraktion, die eine Reihe von Pods definiert und sie für Clients zugänglich macht. Sie können einen Dienst mit dem Befehl kubectl expose erstellen. Dieser Befehl kümmert sich um die Erstellung der notwendigen Load Balancer und Routing-Regeln für Ihren Dienst.

Damit sind Sie nun bereit, Kubernetes zu nutzen!

[Nächster Artikel: Was ist Kubernetes-Monitoring, und wie wird es mir helfen downtimes zu verringern und Fehler zu finden?](/de/blog/was-ist-kubernetes-monitoring/)

#### Sind Sie an einem vollständig verwalteten Kubernetes interessiert?

{{< notice "tip" >}}
  Unser vollständig verwaltetes Kubernetes spart Ihnen eine Menge Zeit bei der Einrichtung von Volumes, Netzwerken und mehr, ab 12,99€/Monat, alles in Deutschland gehostet!
[Schauen Sie auf unserer EasyKube Seite vorbei!](/de/services/easykube)
{{< /notice >}}

