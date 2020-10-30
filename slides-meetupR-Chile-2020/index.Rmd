---
title       : Ejemplos de uso de datos en fútbol y hockey sobre hielo
subtitle    : Meetup Usuarios de R en Chile - Sept. 2020
author      : Ismael Gómez Schmidt
job         : Data Scientist 49ing / Co-Founder Futbolytics / Frontman datofutbol.cl
framework   : io2012
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
#widgets     : []            # {mathjax, quiz, bootstrap}
logo        : png_icons/puck.ball.fw.png
biglogo     : fondo.png
mode        : selfcontained # {selfcontained, standalone, draft}
knit        : slidify::knit2slides
---

<style>
.title-slide {
  background-color: white; 
}

.title-slide hgroup > h1{
 font-family: 'Oswald', 'Helvetica', sanserif;
 color: gray;
 font-size:52px;
}

.title-slide hgroup > h2 {
  color: #3182bd;
}

.title-slide hgroup > p {
  color: black;
}
</style>


## Agenda
<br/ >
<br/ >
>- Analítica deportiva
<br/ >
<br/ >
>- Datos y herramientas
<br/ >
<br/ >
>- Ejemplos de uso de datos en **fútbol** y **hockey sobre hielo**
<br/ >
<br/ >
 

--- .segue bg:#0C7BB9
## Analítica deportiva


--- &twocol w1:50% w2:50% bg:black

*** =left
<br/ >
<center><img src="assets/img/examples/data_nfl.jpg" height="85%" width="85%"></center>
<br/ >
<center><img src="assets/img/examples/data_tennis.jpg" height="90%" width="90%"></center>


*** =right
<br/ >
<center><img src="assets/img/examples/data_baseball.jpg" height="60%" width="60%"></center>
<br/ >
<center><img src="assets/img/examples/data_nba.jpg" height="60%" width="60%"></center>

--- bg:black
<center><img src="assets/img/areas.png" height="85%" width="85%"></center></a>



--- .segue bg:#0C7BB9
## Datos y herramientas

---
## Datos de eventos

> - Registro de distintos eventos relevantes con sus detalles respectivos<center><img src="assets/img/events.png" height="100%" width="100%"></center></a>

> - <center><img src="assets/img/events_hockey.png" height="50%" width="50%"></center></a>


--- &twocol w1:50% w2:50%
## Proveedores

*** =left
<br/ >
<br/ >
<center><img src="assets/img/providers/statsbomb.jpg" height="50%" width="40%"></center>
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/providers/stats.png" height="40%" width="40%"></center>

*** =right
<center><img src="assets/img/providers/wyscout.png" height="30%" width="40%"></center>
<br/ >
<br/ >
<center><img src="assets/img/providers/metrica.png" height="30%" width="40%"></center>

---
## Herramientas

<center><img src="assets/img/data-science-workflow2b.fw_new.fw.png" height="100%" width="100%"></center>


--- .segue bg:#0C7BB9
## Ejemplos en fútbol y hockey sobre hielo

---
## 1) Modelos xG
<br/ >
> - xG: eXpected Goals (Goles esperados)

> - Se busca estimar la probabilidad de gol que tienen los tiros antes de ejecutarse

> - Es un problema de clasificación con dos salidas: "GOL" y "NO GOL"

> - Clases muy desbalanceadas: En fútbol aprox. el 11% de los tiros son goles (y en hockey el 6%)

---
## Características modelos xG

> - Variables más relevantes: distancia al arco y ángulo de tiro

> - [Modelo básico con regresión logística](https://www.thesignificantgame.com/portfolio/expected-goals-model-with-tidymodels/)<center><img src="assets/img/examples/xg1.png" height="50%" width="50%"></center>

> - Otras variables: parte del cuerpo, posición del arquero, altura del balón, cantidad y posición de defensas, etc. [Acá un ejemplo con más variables y usando GBM](https://www.datofutbol.cl/xg-model/)

---
## Características modelos xG

Influencia de la cantidad de oponentes en la trayectoria del tiro:
<center><img src="assets/img/examples/xg1B.png" height="70%" width="70%"></center>


--- &twocol w1:50% w2:50%
## Características modelos xG

*** =left
> - **AUC**<center><img src="assets/img/examples/xg3.png" height="100%" width="100%"></center> 

*** =right
> - [Calibración](https://dtai.cs.kuleuven.be/sports/blog/how-data-availability-affects-the-ability-to-learn-good-xg-models)<center><img src="assets/img/examples/xg4.png" height="100%" width="100%"></center>


--- &twocol w1:50% w2:50%
## Aplicaciones modelos xG: Contexto + Scouting

*** =left
> - [Timeline + Shotmap](https://twitter.com/R_by_Ryo/status/1304854594950815744?s=20)<center><img src="assets/img/examples/xg5.png" height="100%" width="100%"></center>

*** =right
> - [Shotmap de una temporada](https://twitter.com/StatifiedF/status/1250759002088144899)<center><img src="assets/img/examples/halaand.jpg" height="85%" width="85%"></center>

---
## Aplicaciones xG: Optimización de line-up

<center><img src="assets/img/examples/hockey_rink.png" height="45%" width="45%"></center>

> - Pregunta: ¿Qué tipo de jugadores maximimizan la producción ofensiva?

> - Enfoque: Usar el xGF% (proporción de xG a favor respecto al xG total) como predictor de la
prob. de ganar -> con xGF 55% tienes 60% prob. de ganar<br/ ><center><img src="assets/img/examples/win_prob.png" height="20%" width="20%"></center>

--- &twocol w1:50% w2:50%
## Aplicaciones modelos xG: Optimización de line-up

> - Método:<br/ > - Clustering de jugadores según estilo de juego y performance ofensiva<br/ >-Calcular xGF% para todos los tiros en Estados 5-5 de una temporada asociados a cada combinación de 3 delanteros (Forwards)

*** =left
> - Ranking de combinaciones de 3 delanteros según XGF%: mejores line-ups!<br/ ><br/ ><center><img src="assets/img/examples/xg7.png" height="110%" width="110%"></center> 


*** =right
> - Conformación de plantel<br/ ><center><img src="assets/img/examples/xg6.png" height="100%" width="100%"></center>

---
## Aplicaciones modelos xG

El xG es el proxy de generar/conceder peligro de gol. Es la base para otras métricas que buscan valorar pases y posesión: xA, xGchain, xGBuild, xT, VAEP, g+, etc.

<center><blockquote class="twitter-tweet" data-theme="dark"><p lang="es" dir="ltr">Lukaku convertía el 3-3 con una gran asistencia de Hakimi. Pero vean la genialidad de <a href="https://twitter.com/Alexis_Sanchez?ref_src=twsrc%5Etfw">@Alexis_Sanchez</a> 😍<a href="https://t.co/NIMiD1llQf">pic.twitter.com/NIMiD1llQf</a></p>&mdash; Inter Club México (@InterClubMX) <a href="https://twitter.com/InterClubMX/status/1309955924103172098?ref_src=twsrc%5Etfw">September 26, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script><center>

---
## 2) Clustering de pases

> - Idea: observar patrones de ubicación, longitud, y dirección de pases, en específico asistencias en la zona ofensiva, tanto a nivel de jugadores como de equipo en situaciones particulares de un partido.

> - Problema: son muchos pases!<br/ ><center><img src="assets/img/examples/hpass1.png" height="40%" width="40%"></center>

> - Enfoque: aplicar clustering para facilitar la visualización

--- &twocol w1:50% w2:50%
## Resultados del clustering

Luego de algunas iteraciones optamos por 39 clusters, aceptando errores en favor de mantener la simetría y la ubicación de tiros

*** =left
<center><img src="assets/img/examples/hpass2.png" height="100%" width="100%"></center>

*** =right
> - <center><img src="assets/img/examples/hpass3.png" height="60%" width="60%"></center><br/ ><center><img src="assets/img/examples/hpass4.png" height="60%" width="60%"></center>


--- &twocol w1:50% w2:50%
## Aplicación del clustering: nivel equipo

*** =left
<center><img src="assets/img/examples/happHCD2.png" height="100%" width="100%"></center>

*** =right
<center><img src="assets/img/examples/happSCB2.png" height="96%" width="96%"></center>


---
## Aplicación del clustering: nivel jugador

<center><img src="assets/img/examples/happTedenby.Mattias.png" height="65%" width="65%"></center>

<center><img src="assets/img/examples/happHofmann.Gregory.png" height="65%" width="65%"></center>


---
## 3) Similitud de jugadores
<br/ >
> - Idea: Un caso recurrente en scouting es buscar un reemplazo a un jugador que se va/fue o bien querer a alguien que tenga un perfil similar a un jugador específico.
<br/ >
<br/ >
> - Problema: Pueden ser decenas o cientos de candidatos + puede haber buenos candidatos que no están en mi radar + se requieren muchos recursos para analisar y evaluar a cada uno.
<br/ >
<br/ >
> - Enfoque: Crear un perfil cuantitativo del jugador de referencia en cuanto a performance (percentiles en atributos relevantes dentro de un universo objetivo) + aplicar un algoritmo/función de similitud + aplicar filtros según condiciones de borde para acotar la cantidad de candidatos

---
<img src="assets/img/futbolytics2.png" height="20%" width="20%">
<img src="assets/img/examples/demo_similitud.png" height="100%" width="100%">

--- &twocol w1:30% w2:60%
## 4) Análisis espacio-temporal con tracking data
<br/ >
*** =left
1° versión del [paquete {SoccerAnimate}](https://github.com/Dato-Futbol/soccerAnimate)<br/ ><center><img src="assets/img/soccerAnimate.png" height="40%" width="40%"></center>

*** =right
<center><img src="assets/img/examples/example_B.gif" height="105%" width="105%"></center></a>

--- &twocol w1:50% w2:50%
## Otras aplicaciones

*** =left
> - [Pitch control model + VAEP](https://twitter.com/TonyElHabr/status/1304766718468857857)<br/ ><center><img src="assets/img/examples/ucl_2020_psg_mun.gif" height="95%" width="95%"></center></a>


*** =right
> - [Corners auto-tagging](https://twitter.com/EightyFivePoint/status/1301193951978848256)<br/ ><blockquote class="twitter-tweet"><p lang="en" dir="ltr">The paper that <a href="https://twitter.com/suds_g?ref_src=twsrc%5Etfw">@suds_g</a> and I have written on corner routine analysis using tracking data is now available for download on the Machine Learning in Sports Analytics workshop website<a href="https://t.co/nnRBKsOH2U">https://t.co/nnRBKsOH2U</a><br><br>Here&#39;s an example of our *automated tagging* of defensive roles at corners <a href="https://t.co/AnmyVz2NK3">pic.twitter.com/AnmyVz2NK3</a></p>&mdash; Laurie Shaw (@EightyFivePoint) <a href="https://twitter.com/EightyFivePoint/status/1301193951978848256?ref_src=twsrc%5Etfw">September 2, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



--- {tpl: thankyou, social: [{href: "https://futbolytics.cl"}, {title: Twitter, href: "https://twitter.com/DatoFutbol_cl"}, {title: Blog, href: "https://datofutbol.cl"}]}

## Gracias!

