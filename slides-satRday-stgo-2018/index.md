---
title       : Una mirada al Soccer Analytics usando R
subtitle    : satRday Santiago 2018
author      : Ismael Gómez Schmidt
job         : Data Scientist yalea.cl / Frontman datofutbol.cl
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
logo        : logo.png
#biglogo     : tablet.jpg
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<style>
.title-slide {
  background-color: white; 
}

.title-slide hgroup > h1{
 font-family: 'Oswald', 'Helvetica', sanserif; 
 color: gray;
}

.title-slide hgroup > h2 {
  color: #3182bd;
}

.title-slide hgroup > p {
  color: #2b323f;
}
</style>

## ¿Qué haremos?
<br/ >
> - Una mirada al Soccer Analytics: Propuesta de categorías de análisis 
(Ejemplos + recursos + comunidad)
<br/ >
<br/ >
> - Usando R: [datofutbol.cl](datofutbol.cl) -> Paquetes y ejemplos
<br/ >
<br/ >
> - Otros ejemplos con R (y sin R también!)
<br/ >
<br/ >
> - Desafíos


--- bg:black
<center><img src="assets/img/tablet.jpg" height="100%" width="100%"></center></a>

--- &twocol w1:50% w2:50%
*** =left
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/opta.png" height="60%" width="40%"></center>
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/statsbomb.jpg" height="70%" width="40%"></center>
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/stratabet.png" height="70%" width="40%"></center>

*** =right
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/datafactory.jpg" height="20%" width="40%"></center>
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/transfermarkt.png" height="20%" width="40%"></center>
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/stats.jpg" height="30%" width="40%"></center>


--- 
<center><img src="assets/img/SoccerAnalytics.jpg" height="100%" width="100%"></center></a>



--- bg:#cbd5e8 
<center><img src="assets/img/fondo_balon_azul.png" height="100%" width="100%"></center></a>

--- bg:#cbd5e8
## (1) Estadísticas históricas
<center><img src="assets/img/ej1.png" height="80%" width="80%"></center></a>




--- bg:#e6f5c9
<center><img src="assets/img/fondo_balon_verde.png" height="100%" width="100%"></center></a>

--- bg:#e6f5c9
## (2) Modelos de probabilidades
<center><img src="assets/img/ej2.png" height="80%" width="80%"></center></a>




--- bg:#fff2ae
<center><img src="assets/img/fondo_balon_amarillo.png" height="100%" width="100%"></center></a>

--- bg:#fff2ae  
## (3) Performance de jugadores
<center><img src="assets/img/ej3b.png" height="55%" width="55%"></center></a>




--- bg:#f4cae4
<center><img src="assets/img/fondo_balon_rojo.png" height="100%" width="100%"></center></a>

--- bg:#f4cae4
## (4) Análisis espacial/temporal de eventos del juego
<center><img src="assets/img/ej4a.png" height="80%" width="80%"></center></a>



--- bg:black
<br/ >
<center><img src="assets/img/datofutbol.png" height="100%" width="100%"></center></a>

--- bg:white
## Dato Fútbol
<center><img src="assets/img/about.png" height="80%" width="70%"></center></a>

--- bg:white
## Flujo de Trabajo en Ciencia de Datos
<br/ >
<center><img src="assets/img/data-science-workflow1b_.png" height="100%" width="100%"></center></a>

--- bg:white
## Paquetes utilizados
<br/ >
<center><img src="assets/img/data-science-workflow2b.png" height="100%" width="100%"></center></a>

--- .segue bg:#33a02c
## Ejemplos DatoFutbol.cl 

--- &twocol w1:50% w2:50% bg:#cbd5e8
*** =left
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/mio6.png" height="100%" width="100%"></center></a>

*** =right
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/mio7.png" height="100%" width="100%"></center></a>


--- &twocol w1:50% w2:50% bg:#cbd5e8
*** =left
<br/ >
<br/ >
<center><img src="assets/img/mio10.png" height="100%" width="100%"></center></a>

*** =right
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/mio12.png" height="100%" width="100%"></center></a>


--- bg:#cbd5e8

<iframe src="https://bustami.shinyapps.io/ranking_fifa/" width="850" height="550" scrolling="yes" frameBorder="0"></iframe>


--- &twocol w1:50% w2:50% bg:#e6f5c9
*** =left
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/mio11.png" height="100%" width="100%"></center></a>

*** =right
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/mio13.png" height="100%" width="100%"></center></a>


--- &twocol w1:50% w2:50% bg:#e6f5c9
*** =left
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/mio5.png" height="100%" width="100%"></center></a>

*** =right
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/mio14.png" height="100%" width="100%"></center></a>



--- bg:#fff2ae
<br/ >
<br/ >
<center><img src="assets/img/mio15.png" height="85%" width="85%"></center></a>


--- &twocol w1:50% w2:50% bg:#f4cae4
*** =left
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/passmap1.png" height="100%" width="100%"></center></a>

*** =right
<br/ >
<br/ >
<br/ >
<center><img src="assets/img/passmap2.png" height="100%" width="100%"></center></a>

--- bg:#f4cae4
<br/ >
<br/ >
<center><img src="assets/img/shotmapB.png" height="80%" width="80%"></center></a>

--- bg:#f4cae4
<br/ >
<center><img src="assets/img/xGtime.png" height="80%" width="80%"></center></a>


--- .segue bg:#3182bd
## Otros ejemplos (con R)

--- $vcenter
<br/ >
<br/ >
<center><img src="assets/img/japones.jpg" height="75%" width="75%"></center></a>

--- &vcenter
<center><img src="assets/img/ronaldo_messi.jpg" height="70%" width="70%"></center></a>

--- .segue bg:#636363
## Otros ejemplos (sin R)

--- &vcenter
<center><img src="assets/img/ej4b.png" height="95%" width="95%" ></center></a>
<center><img src="assets/img/ej4b2.jpg" height="95%" width="95%" ></center></a>

--- &vcenter
<center><img src="assets/img/opta_positions.jpg" height="85%" width="85%" ></center></a>

--- &vcenter
<blockquote class="twitter-tweet" data-lang="es"><p lang="en" dir="ltr">It&#39;s the most anticipated club match of the year, and it hasn&#39;t disappointed. This was the first goal, for Boca Juniors, a great counterattack with an amazing assist by Nández. <a href="https://twitter.com/hashtag/FinalLibertadores?src=hash&amp;ref_src=twsrc%5Etfw">#FinalLibertadores</a> <a href="https://twitter.com/hashtag/RiverBoca?src=hash&amp;ref_src=twsrc%5Etfw">#RiverBoca</a> <a href="https://t.co/Up2fH68E6c">pic.twitter.com/Up2fH68E6c</a></p>&mdash; Last Row (@lastrowview) <a href="https://twitter.com/lastrowview/status/1071883167924142084?ref_src=twsrc%5Etfw">9 de diciembre de 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

--- &vcenter
<blockquote class="twitter-tweet" data-lang="es"><p lang="en" dir="ltr">Experimenting with new metrics using Voronoi diagrams: the number near the goal is the % of the relevant area &quot;owned&quot; by the attacking team. The number goes up from 15% to 30% with the key pass of the play. Useful to calculate goal contribution? <a href="https://t.co/3bbaNBG4bP">pic.twitter.com/3bbaNBG4bP</a></p>&mdash; Last Row (@lastrowview) <a href="https://twitter.com/lastrowview/status/1068846306980970497?ref_src=twsrc%5Etfw">1 de diciembre de 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

---
## Desafíos

> - Acceso a los datos

> - [Estandarización](http://www.analiticasports.com/por-que-la-fifa-hizo-una-alianza-con-barcelona-para-unificar-la-captura-y-procesamiento-de-datos-del-futbol/)

> - Ganarse el espacio: Evidenciar con más fuerza y claridad el valor agregado de los datos +
Romper antiguos esquemas dentro del fútbol

> - Hacer un meetup!


--- {
 tpl: thankyou,
 social: [{title: Twitter, href: "@ismaelgomezs / @DatoFutbol_cl"}]
}

## Gracias!


