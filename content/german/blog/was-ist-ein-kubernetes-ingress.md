---
title: "Was ist ein Kubernetes Ingress?"
date: 2022-08-11T11:40:24+06:00
# post thumb
images:
  - "images/blog/kubernetes-tutorial.png"
#author
author: "Justin Güse"
# description
description: "In dieser Einführungsserie werden wir untersuchen, was ein Kubernetes-Ingress ist, wie er verwendet wird, um den Datenverkehr in Ihren Cluster zu leiten, und wie Sie Ihre benutzerdefinierte Domäne dazu hinzufügen können."
# Taxonomies
categories: ["Academy", "Kubernetes"]
tags: ["Kubernetes","Ingress", "K8s", "Kubernetes Ingress", "Terraform", "Tutorial"]
icon: "fas fa-business-time"
draft: false
---

## Unsere vollständige Kubernetes-Tutorial-Serie

Machen Sie sich mit Ihrem Kubernetes-Wissen vertraut:

1. [Was ist Kubernetes?](/de/blog/was-ist-kubernetes/)
2. [Was ist Kubernetes Monitoring?](/de/blog/was-ist-kubernetes-monitoring/)
3. [Was ist Kubernetes Management?](/de/blog/was-ist-kubernetes-management/)
4. [Was sind Kubernetes secrets?](/de/blog/was-sind-kubernetes-secrets/)
5. [Was sind Kubernetes pods?](/de/blog/was-sind-kubernetes-pods/)
6. [Was ist Kubernetes support?](/de/blog/was-ist-kubernetes-support/)
7. [Was ist Enterprise Kubernetes?](/de/blog/was-ist-enterprise-kubernetes/)
8. [Was ist Kubernetes Orchestrierung?](/de/blog/was-ist-kubernetes-orchestrierung/)
9. [Was ist ein Kubernetes Ingress?](/de/blog/was-ist-ein-kubernetes-ingress/)
10. [Was ist Kubernetes Muti-Clustering?](/de/blog/was-ist-kubernetes-multi-clustering/)
11. [Was ist eine Kubernetes Hybride Cloud?](/blog/was-ist-kubernetes-multi-cloud-oder-hybrid-cloud/)

Grundlagen

12. [Was ist eine Container Registry?](/de/blog/was-ist-eine-container-registry/)
13. [Was ist Docker swarm?](/de/blog/was-ist-docker-swarm/)
14. [Was ist Virtualisierung?](/de/blog/was-ist-virtualisierung/)
15. [Was ist ein software-definiertes Rechenzentrum?](/de/blog/was-ist-ein-software-definiertes-rechenzentrum/)

---

Kubernetes Ingress ist ein Begriff, den Sie vielleicht schon einmal im Zusammenhang mit Container-Orchestrierung gehört haben. Aber was genau ist das? Kubernetes Ingress lässt sich am besten als eine Möglichkeit beschreiben, den Zugriff auf Ihre Kubernetes-Dienste von außerhalb Ihres Netzwerks zu steuern. Es bietet eine Möglichkeit, Ihre Dienste dem Internet auszusetzen, und ermöglicht außerdem Lastausgleich und SSL-Terminierung. Dieser Blogbeitrag gibt einen kurzen Überblick darüber, was Kubernetes Ingress ist und wie Sie es in Ihrer Umgebung nutzen können!

Wenn Entwickler eine Anwendung dem Datenverkehr aussetzen wollen (z. B. zu Testzwecken), definieren sie in der Regel einen der folgenden grundlegenden Dienste als Ausgangspunkt: NodePort, LoadBalancer oder ClusterIP. Wenn sie jedoch Kubernetes verwenden, gibt es eine weitere Option: Ingress.

Kubernetes Ingress ist ein API-Objekt, das Routing für externen Datenverkehr bietet, um Dienste innerhalb eines Clusters zu erreichen. Durch die Angabe von Ingress-Regeln kann ein Benutzer den gesamten Datenverkehr von einer einzigen Domäne (z. B. example.com) auf der Grundlage des Pfads an verschiedene Dienste weiterleiten (z. B. /API/users geht an den Benutzerdienst, / geht an den Frontend-Dienst). Dies ist besonders nützlich, wenn es mit TLS-Terminierung und namensbasiertem virtuellem Hosting kombiniert wird; ein einzelner Kubernetes-Cluster kann dann den Datenverkehr für mehrere Domänen an verschiedene Backend-Dienste weiterleiten. Da sich Ingress am Rand des Clusters befindet, kann es auch Lastausgleich, SSL-Terminierung und namensbasiertes virtuelles Hosting bereitstellen, ohne dass Änderungen an den Diensten selbst erforderlich sind.

Kubernetes Ingress ist daher ein sehr leistungsfähiges Tool für die Weiterleitung von externem Datenverkehr an Dienste innerhalb eines Kubernetes-Clusters. Wenn Sie Kubernetes verwenden, sollten Sie den Einsatz von Ingress in Betracht ziehen, um Ihre Anwendungen dem externen Datenverkehr auszusetzen.

Es funktioniert auch mit benutzerdefinierten Domains, einschließlich automatischer Zertifikatsgenerierung - wenn Sie also Subrouten für eine Domain erstellen möchten, sind es im Grunde nur ein paar Zeilen Code. Die Magie von Kubernetes.

## Enterprise Kubernetes ingress

Enterprise Kubernetes Ingress bezieht sich auf den Prozess der Verwaltung des Datenverkehrs in und aus einem Kubernetes-Cluster. Dies kann entweder über einen öffentlichen oder privaten Infrastructure-as-a-Service (IaaS)-Anbieter erfolgen. Um Ingress zu verwenden, müssen Sie eine Ingress-Ressource in Ihrer Kubernetes-Manifestdatei erstellen. In dieser Ressource werden die Regeln für die Weiterleitung des Datenverkehrs festgelegt.

Sie können beispielsweise festlegen, dass der gesamte Datenverkehr, der an einen bestimmten Pfad geht, an einen bestimmten Dienst weitergeleitet werden soll. Um sicherzustellen, dass Ihre Ingress-Regeln befolgt werden, müssen Sie einen Ingress-Controller einsetzen. Es gibt viele verschiedene Arten von Ingress-Controllern, so dass Sie denjenigen auswählen müssen, der Ihren Anforderungen am besten entspricht.

Sobald Sie Ihren Ingress-Controller eingerichtet haben, müssen Sie ihn konfigurieren. Dazu gehört die Angabe der Adresse Ihres Kubernetes-Clusters und des Pfads zu Ihrer Ingress-Ressourcendatei. Nachdem Ihr Ingress-Controller konfiguriert ist, können Sie mit dem Routing des Datenverkehrs durch ihn beginnen.

Enterprise Kubernetes Ingress bietet eine Möglichkeit, den Datenverkehr in und aus einem Kubernetes-Cluster sicher und effizient zu verwalten. Durch die Verwendung einer Ingress-Ressource und eines Controllers können Sie genau festlegen, wie der Datenverkehr geroutet werden soll, um sicherzustellen, dass Ihre Dienste die Last bewältigen können.

## Ist ein Ingress ein Load Balancer?

Ingress ist ein Load Balancer, der als Teil der Container-Orchestrierungsplattform Kubernetes bereitgestellt wird. Er ermöglicht es Unternehmen, den Datenverkehr zu Diensten innerhalb von Kubernetes-Clustern auf effiziente und skalierbare Weise zu leiten. In Verbindung mit anderen Kubernetes-Komponenten kann Ingress erweiterte Funktionen wie SSL-Terminierung, URL-Rewrites und inhaltsbasiertes Routing bieten.

Ingress wird zwar häufig für den Lastausgleich von Webdaten verwendet, ist aber nicht auf diesen Anwendungsfall beschränkt und kann für den Lastausgleich jeder Art von Datenverkehr eingesetzt werden. Daher ist Ingress ein wertvolles Tool für alle, die die Leistung ihrer Kubernetes-Cluster verbessern möchten.

{{< notice "tip" >}}
  Wussten Sie schon, dass Sie mit [EasyKube, unserer verwalteten Kubernetes-Lösung](/de/services/easykube), ein automatisches Ingress-Setup inklusive Domains und LetsEncrypt-Zertifikaten erhalten können? 
{{< /notice >}}

## Ein Ingress kann schwer zu integrieren sein

Ingress ist ein beliebtes Wort in der Kubernetes-Community, aber es kann schwierig sein, zu verstehen, was es eigentlich ist und wie es funktioniert. Einfach ausgedrückt, ist Ingress eine Möglichkeit, externen Datenverkehr an Ihre Kubernetes-Dienste zu leiten. Er fungiert als Load Balancer, der den Datenverkehr auf alle Pods eines Dienstes verteilt. Dies kann nützlich sein, wenn Sie einen einzelnen Dienst der Welt zugänglich machen oder den Datenverkehr über mehrere Dienste hinweg ausgleichen möchten.

Die Integration von Ingress kann sich als besonders schwierig erweisen, da dazu ein Ingress-Controller eingerichtet werden muss, der selbst ein Kubernetes-Dienst ist. Sobald der Ingress-Controller eingerichtet ist und läuft, müssen Sie ihn mit den gewünschten Routing-Regeln konfigurieren. Dies kann ein komplexer Prozess sein, aber es gibt viele Tools und Tutorials, die Ihnen den Einstieg erleichtern. Mit ein wenig Aufwand können Sie Ingress in Ihrem Kubernetes-Cluster im Handumdrehen zum Laufen bringen.

## Ein Ingress bietet große Vorteile

Es gibt zahlreiche Vorteile, die Ingress bietet, aber einige der wichtigsten Vorteile sind:

- Durch die Abstrahierung der Details der zugrundeliegenden Infrastruktur ermöglicht Ingress das einfache Verschieben von Anwendungen zwischen verschiedenen Umgebungen, sei es vor Ort oder in der Cloud.
- Ingress bietet auch einen einzigen Kontaktpunkt für Benutzer, was die Verwaltung des Datenverkehrs vereinfacht und die Komplexität der Bereitstellung reduziert.
- Darüber hinaus bietet Ingress eine Reihe von Funktionen, die zur Optimierung der Leistung und zur Sicherstellung der Verfügbarkeit beitragen können, wie z. B. Lastausgleich und Sitzungsaufrechterhaltung.

Insgesamt bietet Ingress große Vorteile in Bezug auf Flexibilität, Verwaltbarkeit und Leistung. Daher ist es zu einer beliebten Wahl für die Bereitstellung von Anwendungen in großem Umfang geworden.

{{< notice "tip" >}}
  Wussten Sie schon, dass Sie mit [EasyKube, unserer verwalteten Kubernetes-Lösung](/de/services/easykube), ein automatisches Ingress-Setup inklusive Domains und LetsEncrypt-Zertifikaten erhalten können? 
{{< /notice >}}

[Nächster Artikel: Was ist Kubernetes Multi-Clustering, und wann ist es sinnvoll?](/de/blog/was-ist-kubernetes-multi-clustering/)
