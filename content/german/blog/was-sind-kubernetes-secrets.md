---
title: "Was sind Kubernetes secrets?"
date: 2022-08-11T11:40:24+06:00
# post thumb
images:
  - "images/blog/kubernetes-tutorial.png"
#author
author: "Justin Güse"
# description
description: "In dieser Einführungsserie werden wir untersuchen, warum Kubernetes-Geheimnisse wichtig sind, um Ihre sensiblen Informationen zu schützen, und wie Sie sie in Ihrem Cluster sicher anwenden können."
# Taxonomies
categories: ["Academy", "Kubernetes"]
tags: ["Kubernetes","Secrets", "Sicherheit", "K8s", "Kubernetes Secrets", "Tutorial"]
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


Kubernetes Secrets sind eine Möglichkeit, Daten zu schützen, die von Anwendungen in einem Kubernetes-Cluster benötigt werden, aber nicht nach außen dringen sollen. Sie ähneln den Docker-Secrets und können zum Speichern sensibler Informationen wie Passwörter, API-Schlüssel und SSL-Zertifikate verwendet werden. In diesem Beitrag werden wir einen Blick darauf werfen, wie Secrets in [Kubernetes] (https://easycloudhost.de/blog/what-is-kubernetes/) funktionieren und wie sie zum Schutz unserer Daten verwendet werden können. Wir werden auch sehen, wie sie mit der Kubernetes-Befehlszeilenschnittstelle (CLI) erstellt und verwaltet werden können. Abschließend werden wir uns einige praktische Beispiele ansehen, wie Secrets in einer Kubernetes-Umgebung verwendet werden können.

## Warum sind Secrets wichtig?

In der Welt des Cloud Computing ist die Verwaltung von Geheimnissen unerlässlich. Geheimnisse sind im Wesentlichen Informationen, die vor unbefugten Personen verborgen bleiben sollten. Dazu gehören Passwörter, API-Schlüssel, vertrauliche Dateien und sensible Daten. In einem Kubernetes-Cluster werden Geheimnisse verwendet, um sensible Informationen auf sichere Weise zu speichern und zu verwalten.

Die Verwendung von Secrets in Kubernetes bringt eine Reihe von Vorteilen mit sich, darunter verbesserte Sicherheit, verbesserte Compliance und vereinfachte Verwaltung. Geheimnisse können über den Kubernetes-API-Server einfach erstellt, aktualisiert und gelöscht werden.

Darüber hinaus können Geheimnisse im Ruhezustand mit verschiedenen Verschlüsselungsanbietern wie Vault von HashiCorp verschlüsselt werden. Durch die Verwendung von Kubernetes-Geheimnissen können Unternehmen ihre kritischen Daten schützen und die negativen Folgen einer Datenverletzung vermeiden.

## Wie nutzt Kubernetes Secrets?

Secrets werden als Base64-kodierte Daten gespeichert und können von Pods zur Verbindung mit externen Diensten oder zur Durchführung anderer sensibler Aufgaben verwendet werden. Secrets können in einer YAML-Datei definiert oder mit dem Kommandozeilenwerkzeug `kubectl` erstellt werden. Um ein Geheimnis zu verwenden, muss ein Pod die Berechtigung haben, auf das geheime Objekt zuzugreifen. Dies kann erreicht werden, indem dem Dienstkonto, das vom Pod verwendet wird, die entsprechenden RBAC-Rollen zugewiesen werden. Sobald einem Pod der Zugriff auf ein Geheimnis gewährt wurde, kann er mithilfe von Umgebungsvariablen auf die geheimen Daten verweisen.

Kubernetes bietet auch eine Möglichkeit, Geheimnisse mithilfe von Volumes in Container zu injizieren. Dieser Ansatz eignet sich für Fälle, in denen die Anwendung keine Verweise auf Geheimnisse über Umgebungsvariablen unterstützt. Bei der Verwendung von Volumes werden die geheimen Daten in einem tmpfs-Volume gespeichert, das automatisch in den Container gemountet wird, wenn dieser gestartet wird. Auf das tmpfs-Volume hat nur der Container selbst Zugriff, was eine zusätzliche Sicherheitsebene darstellt.

Secrets können auch zur Erstellung von TLS-Zertifikaten verwendet werden, die zur Sicherung der Kommunikation zwischen Pods eingesetzt werden können. Um ein Zertifikat zu erzeugen, muss zunächst eine Certificate Signing Request (CSR) erstellt werden. Diese CSR kann dann an eine Zertifizierungsstelle (CA) übermittelt werden, um ein signiertes Zertifikat zu erzeugen. Das signierte Zertifikat und der zugehörige private Schlüssel können dann als Geheimnisse in Kubernetes gespeichert werden. Diese TLS-Geheimnisse können von Pods verwendet werden, um sichere Verbindungen untereinander herzustellen.

Zusammenfassend lässt sich sagen, dass Geheimnisse ein wichtiger Bestandteil der Verwaltung sensibler Informationen in Kubernetes sind. Sie können zum Speichern von Daten wie Kennwörtern und API-Schlüsseln sowie von TLS-Zertifikaten zur Sicherung der Kommunikation zwischen Pods verwendet werden. Geheimnisse werden sicher gespeichert und können nur von Pods abgerufen werden, denen eine entsprechende Berechtigung erteilt wurde. So lässt sich genau steuern, welche Pods Zugriff auf sensible Daten haben.

{{< notice "tip" >}}
  Wussten Sie schon, dass Sie all dies und noch viel mehr zeitsparende Zusatzfunktionen mit unserer [EasyKube verwalteten Kubernetes-Lösung](/de/services/easykube) erhalten?
{{< /notice >}}

## Editieren eines Secrets

Sie können ein Secret in Kubernetes bearbeiten, indem Sie die YAML-Definitionsdatei für das Secret aktualisieren und dann die Änderungen anwenden. Um ein Geheimnis zu bearbeiten, müssen Sie zunächst die aktuelle Definitionsdatei für das Geheimnis abrufen. Dies kann mit dem Befehl `kubectl get` erfolgen. Um beispielsweise die Definitionsdatei für ein Geheimnis mit dem Namen "my-secret" abzurufen, würden Sie den folgenden Befehl verwenden: 

`kubectl get secret my-secret -o yaml`. 

Damit wird die YAML-Definitionsdatei für das Geheimnis auf stdout ausgegeben.

Sobald Sie die aktuelle Definitionsdatei für das Geheimnis abgerufen haben, können Sie sie mit Ihrem bevorzugten Texteditor bearbeiten. Bei der Bearbeitung einer Kubernetes-Secret-Definitionsdatei gibt es einige Dinge zu beachten. Erstens muss jeder Eintrag in der "data"-Map base64-kodiert sein. Zweitens dürfen Sie die Größe der Einträge in der "data"-Map nicht ändern. Wenn Sie einen Eintrag hinzufügen oder entfernen müssen, können Sie dies durch Hinzufügen oder Entfernen einer Zeile in der "data"-Map tun. Speichern Sie Ihre Änderungen an der Definitionsdatei, bevor Sie Ihren Texteditor beenden.

Sobald Sie Ihre Änderungen an der Definitionsdatei vorgenommen haben, können Sie sie mit dem Befehl `kubectl apply` anwenden. Um zum Beispiel meine Änderungen an dem Geheimnis "my-secret" anzuwenden, würde ich den folgenden Befehl verwenden: 

`kubectl apply -f my-secret.yaml`. 

Dadurch wird das Geheimnis in Kubernetes mit Ihren neuen Änderungen aktualisiert.

## Eingebaute Geheimnistypen

Es gibt drei Arten von Geheimnissen in Kubernetes: generische, undurchsichtige und Dienstkonten. Generische Geheimnisse können zum Speichern beliebiger Daten verwendet werden, z. B. Passwörter, API-Schlüssel und Zertifikate.

1. **undurchsichtige Geheimnisse** werden zum Speichern von **Binärdaten**, wie z. B. Images, verwendet. Dienstkontengeheimnisse werden für die Authentifizierung von Kubernetes-APIs verwendet. Jede Art von Geheimnis hat Vor- und Nachteile, die Sie bei der Entscheidung für ein bestimmtes Geheimnis berücksichtigen sollten.

2. **Generische Geheimnisse** sind die **flexibelste Art** von Geheimnis, da sie für jede Art von Daten verwendet werden können. Sie sind jedoch auch die am wenigsten sichere Art von Geheimnis, da sie standardmäßig nicht verschlüsselt sind. Undurchsichtige Geheimnisse sind sicherer als generische Geheimnisse, da sie standardmäßig verschlüsselt sind. Sie können jedoch nicht für die Speicherung nicht-binärer Daten verwendet werden.

3. **Dienstkontengeheimnisse** sind die **sicherste** Art von Geheimnis, da sie standardmäßig sowohl verschlüsselt als auch signiert sind. Sie können jedoch nur für die Authentifizierung von Kubernetes-APIs verwendet werden.

Bei der Auswahl eines Geheimnistyps sollten Sie die Sicherheitsanforderungen Ihrer Anwendung und die Art der zu speichernden Daten berücksichtigen. Wenn Sicherheit Ihr Hauptanliegen ist, sollten Sie ein Dienstkontogeheimnis verwenden. Wenn Sie binäre Daten speichern müssen, sollten Sie ein undurchsichtiges Geheimnis verwenden. Wenn Sie irgendeine andere Art von Daten speichern müssen, können Sie ein allgemeines Geheimnis verwenden.

## Fazit:

Kubernetes Secrets bieten eine Möglichkeit, sensible Informationen auf sichere Weise zu speichern und darauf zuzugreifen. Sie sind wichtig, weil sie Ihnen helfen können, Ihre Daten zu schützen, während Sie sie bei Bedarf trotzdem nutzen können. Kubernetes nutzt Secrets zum Speichern von Kennwörtern, API-Schlüsseln und anderen vertraulichen Informationen. Die Bearbeitung eines Secrets ist einfach, und es gibt mehrere integrierte Secret-Typen, mit denen Sie Ihre Daten sicher speichern können.

{{< notice "tip" >}}
  Wussten Sie schon, dass Sie all dies und noch viel mehr zeitsparende Zusatzfunktionen mit unserer [EasyKube verwalteten Kubernetes-Lösung](/de/services/easykube) erhalten?
{{< /notice >}}

[Nächster Artikel: Was sind Kubernetes pods, und warum sind sie ein zentraler Bestandteil des gesamten Systems?](/de/blog/was-sind-kubernetes-pods/)