# Taller de interacción/shaders

## Integrantes

| Integrante | github nick |
|------------|-------------|
| Juan Nicolás Sastoque Espinosa | [NicolasZon](https://github.com/NicolasZon/) |
| Liseth Briceño Albarracín | [ligibrial](https://github.com/ligibrial/) | 

## Objetivos

1. Estudiar los diferentes tipos de shaders 
2. Implementar interacción y shaders

## Implementacion
El trabajo consiste en una esfera que debe comer cajas azules para ganar puntos , a si mismo debe considerar un huevo que esta a su alrededor, si estas dos se intersectan se pierde el juego. En la implementación se tuvo en cuenta la interacción que el jugador debe tener al usar las flechas para que la esfera pueda moverse de izquierda , derecha , arriba o abajo . Además de basarnos en un shader de processing el cual se denomina DomeProjection.

Además de esta interacción se tiene la interacción que hace el huevo para que su oponente(la esfera), pierda, esta se realizó de manera aleatoria en base al movimiento que debe realizar la respectiva coordenada x y y.

Por otro lado se implementó un ejemplo de luz (Reflection)  que consiste principalmente en cambiar el color de la esfera cuando se acerca a la comida(la caja), para este efecto principal se tuvo como referencia la distancia entre la caja y la esfera.

Finalmente se tuvo en cuenta las variables iniciales para que el juego tuviera un reinicio cuando el huevo se intersectara con la esfera.


## Resultados
Como resultado observamos que el cargue de un .obj se ralentiza el juego , por ende se tomó como referencia las figuras que tiene processing y se realizaron otras como el huevo que se muestra en la escena.

Por otro lado se obtuvo el objetivo del juego que consiste básicamente en comer (cajas azules)y tener además algún obstáculo como lo es el huevo para poder finalizar el juego.

Ademas de ello se estudió que existen diferentes tipos de shaders y con ello además se exploró el ejemplo de luz para brindar asi un efecto diferente a la esfera que se encuentra en movimiento.


## Trabajo Futuro


Se pretende que  como trabajo futuro sea explorado con movimientos en el eje z para que el usuario pueda visualizar otra perspectiva de juego.


## Referencias

* Basics/Lights/Reflection
* Topics/Shaders/DomeProjection


