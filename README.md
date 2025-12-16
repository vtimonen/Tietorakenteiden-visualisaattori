# Tietorakenteiden Visualisaattori

**Tietorakenteiden Visualisaattori** on moderni iOS-sovellus, joka on kehitetty **Swiftillä** ja **SwiftUI:lla**. Sovelluksen tavoitteena on havainnollistaa klassisten tietorakenteiden toimintaa dynaamisen ja reaktiivisen käyttöliittymän avulla.

Projekti toimii opetusvälineenä, joka visualisoi reaaliajassa, kuinka data liikkuu muistissa pinon, jonon ja binääripuun operaatioissa.

## 🚀 Ominaisuudet ja Visualisoidut Rakenteet

Sovellus sisältää välilehtipohjaisen navigoinnin kolmelle keskeiselle tietorakenteelle:

### 1. Pino (Stack)
* **Toimintaperiaate:** LIFO (Last-In, First-Out).
* **Operaatiot:**
    * `Push`: Lisää satunnaisen luvun pinon päällimmäiseksi.
    * `Pop`: Poistaa päällimmäisen alkion.
* **Visualisointi:** Pystysuuntainen näkymä, jossa alkiot pinoutuvat dynaamisesti päällekkäin.

### 2. Jono (Queue)
* **Toimintaperiaate:** FIFO (First-In, First-Out).
* **Operaatiot:**
    * `Enqueue`: Lisää alkion jonon loppuun.
    * `Dequeue`: Poistaa alkion jonon alusta.
* **Visualisointi:** Vaakasuuntainen virta, joka näyttää selkeästi jonon alku- ja loppupään.

### 3. Binääripuu (Binary Tree)
* **Algoritmi:** Leveyssuuntainen läpikäynti (Breadth-First Search, BFS) uuden solmun lisäämisessä.
* **Ominaisuudet:**
    * Etsii automaattisesti ensimmäisen vapaan paikan puusta (vasen lapsi ensin, sitten oikea).
    * Rajoitettu syvyys demo-tarkoituksiin (max 7 solmua).
* **Visualisointi:** Rekursiivinen näkymä (`BinaryTreeView`), joka piirtää puun rakenteen ja solmujen väliset yhteydet automaattisesti.

## 🛠️ Teknologiat ja Arkkitehtuuri

Sovellus on rakennettu puhtaasti **SwiftUI**-kehyksellä noudattaen **MVVM (Model-View-ViewModel)** -arkkitehtuurimallia.

* **Kieli:** Swift
* **Framework:** SwiftUI
* **Tilanhallinta:** Combine (`ObservableObject`, `@Published`, `@StateObject`)

### Arkkitehtuurin Yksityiskohdat

* **Models / ViewModels:**
    * `Stack`, `Queue`, `BinaryTree` -luokat toimivat `ObservableObject`-tietovarastoina. Ne sisältävät varsinaisen datalogiikan (esim. `append`, `removeFirst`) ja julkaisevat muutokset käyttöliittymälle.
* **Views:**
    * Käyttöliittymä on täysin deklaratiivinen. Näkymät (esim. `StackView`, `QueueView`) päivittyvät automaattisesti datan muuttuessa ilman manuaalista päivityskoodia.
* **Rekursiiviset näkymät:**
    * Binääripuu on toteutettu `BinaryTreeView`-rakenteella, joka kutsuu itseään lapsisolmujen piirtämiseksi.



