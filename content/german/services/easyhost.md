---
title: "EasyHost"
description: "Einfacheres Hosting Ihrer Shops, Websites und Webanwendungen"
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
  Die Absprungwahrscheinlichkeit steigt um 32 %, wenn die Seitenladezeit von 1 Sekunde auf 3 Sekunden steigt.
  <br>
  Google/SOASTA Research, 2017.
{{< /notice >}}

Bereiten Ihnen Ihre Websites und Anwendungen Kopfschmerzen? Ständig stürzen sie ab, sind langsam? Und jetzt sind sie schon wieder abgestürzt und haben Ihre stundenlange Arbeit zunichte gemacht?

**Mit EasyHost wird das Hosten Ihrer Websites und Apps ganz einfach.**

<hr>
<center>
    <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Kostenlose 15-minütige Beratung darüber, wie EasyHost Ihnen helfen kann</button></a>
</center>
<hr>

1. [Was macht EasyHost anders?](/de/services/easyhost/#was-macht-easyhost-anders)
2. [Der Fall und der Aufstieg statischer Websites](/de/services/easyhost/#der-niedergang-und-der-aufstieg-der-statischen-websites)
3. [Warum die Geschwindigkeit einer Website wichtig ist](/de/services/easyhost/#warum-die-geschwindigkeit-einer-website-wichtig-ist)
4. [EasyHost: Beide Welten vereinend](/de/services/easyhost/#beide-welten-vereint-easyhost)
5. [Portfolio](/de/services/easyhost/#einige-beispiele-für-easyhost-in-aktion)
4. [Preise](/de/services/easyhost/#die-vorteile-von-easyhost--preisgestaltung)

## Was macht EasyHost anders?

Unser Geheimnis ist einfach: **Einfachheit**

Einfachheit sowohl in Bezug auf die **Benutzererfahrung**, als auch auf das Hosting.

{{< notice "tip" >}}
  Suchen Sie nach Website-Programmierung? Gehen Sie zu [Webseiten](/de/services/websites/)
{{< /notice >}}

### Der Niedergang und der Aufstieg der statischen Websites

Erinnern Sie sich noch an die Anfänge des Internets, mit ihren schrecklichen Layouts, extremen Farben und einfach nur Verrücktheit?

<center>
    <img loading="lazy" src="images/services/easyhost/amazon-website-old.webp" alt="Amazon website back in the day">
    <p>Amazon vor einigen Jahren</p>
</center>

Das Design und die Benutzerfreundlichkeit waren grauenhaft, und auch nur kleine Änderungen auf der Seite erforderten ein Neuladen der gesamten Website, was die Benutzerfreundlichkeit stark verlangsamte.

Aus diesem Grund wurden neue Technologien wie Ajax erfunden, um nur winzige Teile von Informationen in die Website zu laden, anstatt die gesamte Seite neu zu laden.

Das Web wurde immer dynamischer, und WordPress wurde das dominierende CMS für Shops und Blogs gleichermaßen.
Mit WordPress wurden große Veränderungen im Web eingeführt, z. B. die Möglichkeit, einfach einen Blogbeitrag zu schreiben, ohne eine ganze HTML-Website programmieren zu müssen, wenn man eine neue Seite auf seiner Website anzeigen lassen will.

Das hat allerdings einen großen Nachteil: Der Server muss "berechnen", wie die endgültige Website aussehen soll. Sie können sich den Arbeitsprozess von WordPress folgendermaßen vorstellen:

1. Benutzer öffnet eine Website
2. WordPress fragt die Datenbank ab, um zu prüfen, ob es einen Blogbeitrag für diese Website gibt
3. Wenn der Inhalt vorhanden ist, wird er aus der Datenbank geladen
4. Nehmen Sie die Vorlage "Blog posts" und fügen Sie die Informationen dort ein
5. Rückgabe der fertig berechneten Website an den Benutzer

Wie Sie sehen, bedeutet dies eine Menge Arbeit für den Server, vor allem, wenn Millionen von Menschen auf die Website zugreifen.

### Warum die Geschwindigkeit einer Website wichtig ist

<center>
    <img loading="lazy" src="images/services/easyhost/website-speed-importance.webp" alt="why website speed is important">
    <p>Sources: LoadStorm</p>
</center>
Wie Sie oben sehen können, ist Geschwindigkeit heutzutage von entscheidender Bedeutung. Die Aufmerksamkeit ist kurzlebig, und wenn die Leute zu lange warten müssen, bis ein Shop oder eine Website geladen ist, werden sie einfach gehen.

Die große Frage ist nun: Kaufen sie eher auf Ihrer **schicken WordPress-Website oder auf der schnellen, schrecklichen 90er-Jahre-Website?**.

### Beide Welten vereint: EasyHost

Die Antwort ist einfach: Sie können beides haben.

Neuere Websites verwenden Javascript und verlassen sich mehr und mehr auf HTML, was sich von der Funktionsweise von Websites wie WordPress unterscheidet.
Der Hauptunterschied besteht darin, dass die neuen Webtechnologien **die Berechnungen im Browser des Benutzers** durchführen und nicht auf Ihrem Server.

Um auf das vorherige Beispiel zurückzukommen - so funktioniert EasyHost:

1. Der Benutzer öffnet eine Website
2. Der Browser lädt HTML, Javascript und CSS vom Server, die im Grunde nur kleine, leichtgewichtige Textdokumente sind
3. Diese Dokumente enthalten Informationen darüber, wie die Website aussieht, man kann sie sich wie eine Blaupause vorstellen
4. Der Browser "baut" die Website nach diesem Rezept 
5. Sie sehen das Endergebnis in Ihrem Browser

#### Mit EasyHost noch einen Schritt weiter gehen

Natürlich ist es nicht so einfach. Javascript, React und NextJS fragen immer noch viele Informationen von APIs und Servern ab, was wiederum zu Verzögerungen führt und Ihre Server zusätzlich belastet. Es ist zwar besser als das "alte" dynamische Web, aber immer noch ziemlich langsam, insbesondere bei der Skalierung.

Nehmen wir an, Ihr Server muss sich in Deutschland befinden und aus Kosten- und Compliance-Gründen ist kein CDN verfügbar.

Selbst wenn nun ein Nutzer in Australien auf die Website zugreift, die "Blaupause" erhält, aber dennoch Ihre API für Informationen abfragen muss, werden die Ladezeiten ziemlich langsam. 
Andererseits könnten Sie Ihre API-Server auf der ganzen Welt verteilen und nur den nächstgelegenen Server für diese Informationen abfragen ... aber gibt es nicht einen einfacheren Weg?

**Können wir nicht einfach die ganze Arbeit auf den Browser des Benutzers verlagern?**

Die Antwort ist ja. Mit EasyHost werden Ihre Webseiten im Grunde genommen "vorgerendert", so als ob jemand eine Seite in reinem HTML programmiert und die ganze Arbeit an den Browser des Benutzers abgibt. Die einzigen Informationen, die von Ihrem oder unserem Server abgefragt werden, sind der "Bauplan" und die Bilder.

#### Bedeutet das, dass ich jede Seite manuell programmieren muss?

Nein, natürlich nicht. Sie können immer noch ein CMS (Content Management System) wie WordPress verwenden, oder Sie schreiben den Text direkt in Markdown, wie ich es jetzt tue, und EasyHost "konvertiert" dies in eine schöne Website und schiebt sie auf den Server.

<center>
    <img loading="lazy" src="images/services/easyhost/easyhost-markdown-min.png" alt="Writing Markdown">
    <p>Dieser Text in Markdown</p>
</center>

<hr>
<center>
    <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Kostenlose 15-minütige Beratung darüber, wie EasyHost Ihnen helfen kann</button></a>
</center>
<hr>

<center>
    <img loading="lazy" src="images/services/easyhost/cms-example-min.png" alt="Editing in the CMS">
    <p>Benutzung des CMS</p>
</center>

#### Einige Beispiele für EasyHost in Aktion

<div style="overflow-x:auto;">


| <div style="width:150px">Webseiten Name</div>       | Type           | Example  | URL |
| ------------- |:-------------:| -----:| -----:|
| EasyCloudHost.de     | Firmen Seite, Blog, Shop | <img loading="lazy" style="width:150px" src="images/services/easyhost/easyhost-website-min.png" alt="EasyHost Website"> | https://easycloudhost.de/ |
| DataFortress.cloud     | Firmen Seite, Blog | <img loading="lazy" style="width:150px" src="images/services/easyhost/datafortress-website-min.png" alt="DataFortress Website"> | https://datafortress.cloud/ |
| BildBlatt.de    | WordPress Shop umgewandelt in static | <img loading="lazy" style="width:150px" src="images/services/easyhost/bildblatt-website-min.png" alt="Bildblatt wordpress Website"> | https://bildblatt.de/ |
| GoodThings4U    | Komplett statischer Shop | <img loading="lazy" style="width:150px" src="images/services/easyhost/goodthings4u-website-min.png" alt="GoodThings4U static Shop Website"> | https://goodthings4u.com/ |

</div>

## Die Vorteile von EasyHost / Preisgestaltung

Jetzt, wo wir wissen, dass unsere Websites superschnell laden und unsere Einnahmen steigen werden, werden Sie uns sicher sagen, dass das hundert Dollar pro Monat kostet, oder?

Nein. Da EasyHost den Server bis zu 1000x entlastet, werden Sie eine Menge Geld für das Hosting sparen. 


<hr>
<center>
    <a href="https://shop.easycloudhost.de/contact/" target="_blank"><button type="submit" class="input-group-text btn btn-primary rounded">Kostenlose 15-minütige Beratung darüber, wie EasyHost Ihnen helfen kann</button></a>
</center>
<hr>