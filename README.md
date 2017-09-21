# Tu ciudad tus datos

 ([EN ESPAÑOL](/LEEME.md))

## Indice:
  - [Ligas de interés](#ligas-de-interés)
  - [Descripción](#descripción)
  - [Como iniciar](#como-iniciar)
    + [Desarrollo con Docker](#desarrollo-con-docker)
    + [Desarrollo](#desarrollo)
    + [Produccion](#produccion)
  - [Fechas importantes](#fechas-importantes)
  - [¿Problemas?](#problemas)
  - [Licencia de uso](#licencia-de-uso)
---

## Ligas de interés
Staging https://tu-ciudad-tus-datos.civicadesarrolla.me/kanban

Invision https://invis.io/ZVCQS3XHY

**NOTA:** Aquí puedes ver una [guia de como instalar RoR](http://rubyonrails.org.es/instala.html).

## Descripción
Tu ciudad tus datos es un proyecto que nace de haber ganado la convocatoria homóloga realizada por Transparencia Mexicana, Open contracting partnership, entre otras organizaciones. El objetivo del proyecto es el uso de las [APIs de Contrataciones abiertas de la Ciudad de México](http://www.contratosabiertos.cdmx.gob.mx/datos-abiertos) para una visualización de la información que permita al usuario saber el estatus de los proyectos de manera amigable y sencilla. 

Dado que el tiempo de entrega fue corto, este desarrollo comprende el MVP únicamente. 
El MVP engloba la visualización del tablero tipo Kanban con tarjetas por contrato, un nivel de detalle por contrato y su búsqueda por palabras clave. La integración dinámica de las APIs en la solución permitirá ver los contratos en las etapas correspondientes al estándar del Open Contracting.

## Como iniciar

Clonar el repositorio:
```
$ git clone git@github.com:civica-digital/tu-ciudad-tus-datos.git
```

### Desarrollo con Docker
Para poder iniciar el proyecto en dev con Docker:
```
$ make dev
```

### Desarrollo
Instalamos y actualizamos las gemas:
```
$ bundle install
```
Creamos las migraciones de la base de datos:
```
$ rake db:setup
```
Iniciamos el servidor:
```
$ rails s
```

### Produccion
```
$
```

## Fechas importantes
Primer avance: 12 de septiembre

Entrega final: 22 de Septiembre

## Problemas?

Mantenemos la conversación del proyecto en nuestra página de problemas  [issues](https://github.com/civica-digital/tu-ciudad-tus-datos/issues). Si usted tiene cualquier otra pregunta, nos puede contactar por correo a <equipo@civica.digital>.

## Licencia de uso
​
Licencia: Apache License, Version 2.0 [Lee la documentación](http://www.apache.org/licenses/LICENSE-2.0) para más información.
​
Creado por [Cívica Digital](http://www.civica.digital), 2017-2018.