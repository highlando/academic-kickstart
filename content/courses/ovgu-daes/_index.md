---
# Course title, summary, and position.
linktitle: Differential-Algebraic Equations
summary: Informationen, Links, und Materialien zur Vorlesung *DAEs* an der OVGU im Sommersemester 2021
weight: 1

# Page metadata.
title: DAEs
date: "2021-02-03T00:00:00Z"
lastmod: "2020-02-08T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.

# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.

menu:
  ovgu-daes:
    name: Overview
    weight: 1

---

Hier gibt es die (links zu den) Materialien zur Vorlesung *DAEs* im Sommersemester 2021 an der OVGU.

# Aktuelles

| Datum | Event | Link |
| ------- | ---------- | ---- |
| :boom: Di: 04.05., 11:00 | &Uuml;bungsblatt 2 ist da  | [&Uuml;bungen]({{< relref "#uumlbungsblaumltter" >}})  |
| :boom: Di: 11.05., 9:00 | Vorlesung 6 | [Grundlagen linearer DAEs mit variablen Koeffizienten]({{< relref "daes-4" >}}) |
| :hourglass: Fr: 14.05., 15:00 | Wrap Up und &Uuml;bungsblatt 2 | [BBB-1](https://bigblue.math.uni-magdeburg.de/b/jan-heq-7qj) |

<!--
({{< relref "daes-3/#lecture-34" >}})

{{% callout note %}}
Bitte nochmal das &Uuml;bungsblatt euch vornehmen. Wird dann am Freitag nochmal richtig besprochen
{{% /callout %}}

{{% callout warning %}}
If needed and if everyone is OK with that, I can hold the lecture in English.
{{% /callout %}}
-->

# Links

 * [LSF](https://lsf.ovgu.de/qislsf/rds?state=verpublish&status=init&vmfile=no&publishid=174973&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung)
 * :blue_book: [Vorlesungsskript](https://www.janheiland.de/script-daes/index.html) -- das wird noch live komplettiert im Laufe der Vorlesung
 * [Mattermost](https://matter.math.uni-magdeburg.de/daes).
 * Video Chat Room(s)[^1] -- [[BBB-1]](https://bigblue.math.uni-magdeburg.de/b/jan-heq-7qj) -- [[BBB-2]](https://bbba.mpi-magdeburg.mpg.de/b/jan-pyw-fhc)
 * [Anonymer Briefkasten](https://www2.math.uni-magdeburg.de/owncloud/index.php/s/w8j8Xaxo2dfzMIZ)

# &Uuml;bungsbl&auml;tter

Bitte auf alle Aufgaben mal drauf schauen und 2-3 (versuchen zu) l&ouml;sen.

| Inhalt | Datum |
| ------ | ----- |
| [:ledger: Blatt 1](files/ueb01.pdf): Mehrk&ouml;rpersysteme, Separation der Gleichungen, Ortsdiskrete Stokes Gleichung, Regularit&auml;t und &Auml;quivalenz von Matrixpaaren, Kronecker Normalform | :memo: [23.04.]({{< relref "daes-3/#exercise-1" >}}) |
| [:ledger: Blatt 2](files/ueb02.pdf): Index eines Matrizenpaars, Kommutativit&auml;t, Drazin Inverse | :memo: 14.05. |

# Hinweise

## Vorlesungen

 * Dienstags um 09:00 werden neue Kapitel der Vorlesung hier
   hochgeladen oder verlinkt. Das werden pro Vorlesung 1-2 Videos sein und Anweisungen zum selbstst&auml;ndigen Lesen des Skriptes oder begleitender Literatur.
 * Freitags 15:00 gibt es eine live Zusammenfassung der Wocheninhalte
   und die M&ouml;glichkeit zur Diskussion im **Video Chat**.

## Literatur

| Buch | Bemerkung |
|------| ----------|
| Peter Kunkel, Volker Mehrmann: *Differential-Algebraic Equations: Analysis and Numerical Solution* (EMS Press) | Die Basis der Vorlesung. Enth&auml;lt eine komplette Theorie zur analytischen und numerischen Behandlung von DAEs mit allen notwendigen technischen Details. |
| Ernst Hairer, Gerd Wanner: *Solving Ordinary Differential Equations II. Stiff and Differential-Algebraic Problems* (Springer) | Besonders Kapitel 6&7 behandeln anwendungsrelevante Probleme. Weniger detailliert als Kunkel/Mehrmann aber oft ausreichend f&uuml;r die Anwendung. |

## &Uuml;bersicht

1.  Introductory considerations [[week 1]]({{< relref "daes-1" >}})
    -   DAEs in mathematical modelling
    -   Applications areas and examples
    -   Challenges in the numerical and analytical treatment of DAEs

1.  General notions from DAE calculus
    -   Solutions and solvability
    -   Consistency and regularity
    -   Indices

1.  Linear DAEs with constant coefficients
    -   Basic algebraic concepts
    -   Normal forms
    -   Solvability and representations of solutions

1.  Linear time-varying and nonlinear DAEs
    -   Fundamental differences with the linear time-invariant case
    -   Time-dependent equivalence transformations and canonical forms
    -   *Derivative Arrays*
    -   *Differentiation-index and Strangeness-index*

1.  Numerical integration of DAEs
    -   Digression: Numerical integration of ODEs
    -   Runge-Kutta methods (RKM) for DAEs with constant coefficients
    -   *Backward Differencing* for DAEs
    -   RKM for semi-explicit "index-1" DAEs
    -   RKM for implicit "index-1" DAEs: Collocation RKM
    -   RKM for semi-explicit "index-2" DAEs
    -   [RKM/BDF results/implementations/software overview](https://www.janheiland.de/script-daes/numerical-analysis-and-software-overview.html)

1.  Numerical Methods for index reduction
    -   Derivative Arrays
    -   Minimal Extension

1.  DAEs with controls
    -   Motivation
    -   Well-posedness and augmented state representation
    -   Regularity and transfer function


[^1]: BBB-1 ist der Standardraum -- wenn es Probleme gibt wechseln wir in BBB-2
