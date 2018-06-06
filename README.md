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

El trabajo consiste en un juego basado en el clásico juego de la culebrita. Nuestro personaje principal es una esfera, la cual debe ser guiada por el usuario con las teclas para que se coma las cajas azules y así ganue puntos. Para lograr el objetivo se deben esquivar varios huevos que están alrededor del mapa dando movimientos aleatorios, de modo que si la esfera es tocada por un huevo, se pierde el juego. A medida que la esfera va comiendo cajas, más huevos van apareciendo en el juego. En la implementación se tuvo en cuenta la interacción que el jugador debe tener al usar las flechas para que la esfera pueda moverse de izquierda, derecha, arriba o abajo. Para el escenario del juego se tomó como base el shader ejemplo de processing que se denomina DomeProjection.

Por otro lado se implementó un ejemplo de luz (Reflection) que consiste principalmente en cambiar el color de la esfera cuando se acerca a la comida(la caja azul), de modo que entre más cerca se encuentre la caja de su comida, más alumbrará.


## Resultados
Como resultado observamos que el cargue de un .obj se ralentiza el juego, por ende se tomó como referencia las figuras que tiene processing y se realizaron otras como el huevo que se muestra en la escena.

Por otro lado se obtuvo el objetivo del juego que consiste básicamente en comer cajas azules y tener además algún obstáculo como lo son los huevos para poder finalizar el juego.

Ademas de ello se estudió que existen diferentes tipos de shaders y con ello además se exploró el ejemplo de luz para brindar asi un efecto diferente a la esfera que se encuentra en movimiento.


## Trabajo Futuro

Se pretende que como trabajo futuro sea explorado movimientos en el eje z, entre ellos se incluyen la posibilidad de que la bola y los huevos puedan saltar, como además dar otra perspectiva al campo para que el usuario pueda visualizar el juego de otra manera.

## Referencias

* Basics/Lights/Reflection
* Topics/Shaders/DomeProjection


