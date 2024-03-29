## Un poco de contexto ...

Te sugerimos ver el siguiente video para saber a qué nos referimos cuando hablamos de "Linux", basta con dar click en el pingüino para ser redirigido a youtube.

[![IMAGE ALT TEXT](../assets/linportada.png)](https://youtu.be/UUJ0dFpj1-M?si=1lh77wVrG1_vsftY "Entiende Linux y el Software Libre de una vez")

Una vez termines de ver el video, ingresa al sitio [roadmap.sh](https://roadmap.sh/) donde encontrarás diferentes rutas de aprendizaje basadas en los roles que se usan actualmente en la industria de las tecnologías de la información (TI). 

Ahí, consulta las siguientes rutas (no es necesario leer todo el contenido, puedes filtrar con la opción de búsqueda de texto en tu navegador):

- [Frontend](https://roadmap.sh/frontend)
- [Backend](https://roadmap.sh/backend)
- [Full Stack](https://roadmap.sh/full-stack)
- [DevOps](https://roadmap.sh/devops)
- [Software Architect](https://roadmap.sh/software-architect)
- [Cyber Security](https://roadmap.sh/cyber-security)

!!! question "Actividad 1"

    Identifica en cuántas y cuáles rutas se menciona a Linux como una tecnología que se debe aprender (en una ruta no se menciona a Linux como tal sino como LXC).

!!! question "Actividad 2"

    De los roles que sí requieren saber Linux, selecciona uno y busca en [LinkedIn](https://www.linkedin.com) un puesto de trabajo relacionado, cuyo salario sea visible para compartirlo con tus compañeros.

!!! question "Actividad 3"

    Reflexiona lo siguiente: ¿Crees que Linux sea una tecnología que valga la pena aprender para futuros profesionales de TI?
***

## ¿Cómo inicio?

El primer requisito para estudiar administración de servidores Linux es contar con un servidor Linux.

Antes de tener el nuestro, vale la pena repasar algunos conceptos fundamentales.

### ¿Qué es un servidor?

Un servidor es una pieza de software o hardware que provee funcionalidades (llamadas servicios) para otros programas o dispositivos (llamados clientes).

!!! note "Acotando la definición para propósitos de esta lección"
    En este momento, al hablar de un "servidor Linux", nos referimos a una computadora que tiene instalado un sistema operativo Linux cuyo propósito será proveer servicios que nosotros configuraremos.

!!! question "Actividad 4"

    Investiga tres servicios que pueda proveer un servidor Linux. 

### ¿Qué alternativas tengo para montar mi servidor?

#### Manera nativa

La manera más evidente para tener un servidor es **instalar el SO en nuestra máquina**, el proceso de manera muy resumida consta de cargar la imagen del sistema operativo en un medio de almacenamiento, configurar dicho medio para que se pueda detectar como un dispositivo de arranque, encender la computadora y dejar que inicie con el medio de almacenamiento que configuramos, la mayoría de las imagenes cuentan con una instalación gráfica donde se seleccionarán unos parámetros mínimos y el sistema operativo se instalará en el disco duro de nuestro equipo. 

Esta opción es factible pero conlleva algunas desventajas:
    
- Si el equipo cuenta con otro sistema operativo previo a nuestra instalación y no configuramos nuestros parámetros correctamente podemos dañar al sistema original.
    
- En caso de instalar ambos sistemas correctamente (dual boot), solo podremos usar un sistema a la vez y cambiarlos requerirá reiniciar el equipo y seleccionar el sistema que queremos usar. 
    
- En caso de no querer tener dual boot tendríamos que invertir en un equipo de computo para que fuese exclusivamente nuestro servidor. 

!!! note "Es importante conocer el proceso de instalación nativa"
    Pese a las desventajas mencionadas, es importante conocer este proceso de instalación porque habrá entornos en los que esta opción sea la más viable, por ello, al final del taller se hará una demostración de cómo instalar Debian de manera nativa, a los usuarios para los cuales la instalación nativa no sea novedad, los invitamos a que intenten instalar Arch Linux para que entiendan más acerca del proceso que hacen los instaladores automáticos. 

Por lo anteriormente expuesto no consideramos conveniente que los miembros del taller instalen el SO directamente en sus equipos y proponemos dos vías principales como alternativas:

- **Crear nuestro servidor en la nube**
- **Crear nuestro servidor de forma local usando nuestro SO actual como anfitrión**

Dichas alternativas a su vez se dividen en diferentes formas de conseguir nuestro objetivo.

#### Crear nuestro servidor en la nube

No entraremos en mucho detalle teórico acerca de qué es la nube, te sugerimos ver el siguiente video si el concepto de no te es para nada familiar.

[![IMAGE ALT TEXT](../assets/nube.png)](https://youtu.be/1rTs-tSqqv8?si=5O4J40wAmptlEqc- "¿Qué es realmente el Cloud?")


Cuando hablamos de "*crear nuestro servidor en la nube*" nos referimos a que en un centro de datos situado en algún lugar del mundo, un servidor físico que corre Linux de manera nativa es "dividido" en decenas de servidores virtuales, que son rentados para que usuarios como nosotros puedan usarlos desde cualquier sitio con acceso a internet, cada una de esas divisiones es conocida como un VPS (Virtual Private Server).

Como consecuencia es posible tener un pequeño servidor en Internet configurado de manera casi inmediata y a un costo muy bajo mediante la renta de un VPS (Virtual Private Server).

Los proveedores más grandes son AWS, AZURE y GCP, sin embargo, tambien son los más caros.

??? warning "¿Cuál es el mejor VPS?" 
    Es muy probable que a lo largo de tu carrera y vida profesional debas trabajar con más de un proveedor, así que sugerimos experimentes un poco con todos y te especialices en aquel que exija tu entorno laboral.

Casi todos tienen un plan de introducción para que conozcas su plataforma al que llaman "Free Tier", en él te dan créditos para que hagas uso de sus servicios sin tener que pagar, es importante que consideres que el acceso a cualquiera de estos proveedores involucra vincular una tarjeta de crédito y el uso descuidado de la plataforma puede implicar cargos reales de los cuales no nos hacemos responsables.  

A continuación te dejamos una tabla comparativa de precios aproximados de las siguientes plataformas:

- AWS
- Azure
- Google Cloud Platform (GCP)
- Digital Ocean
- Linode
- Vultr

|Proveedor|Instancia Sugerida|vCPU|Memoria|Almacenamiento|Precio mensual USD |Creditos de prueba USD|
|-|-|-|-|-|-|-|
|AWS|t2.micro|1|1 GB|8 GB SSD|$18.27|Los que se consuman por un año de dicho servicio|
|AZURE|B1|1|1 GB|30 GB SSD|$12.26|Gratis por 750 horas que se pueden usar dentro de un año|
|GCP|e2-micro|1|1 GB|10 GB SSD|$ 7.11|$300 que se pueden usar a lo largo de 90 días|
|Digital Ocean|Basic Plan|1|1 GB|25 GB SSD|$6.00|$200 que se pueden usar a lo largo de 60 días|
|Linode|Nanode 1GB|1|1 GB|25 GB SSD|$5.00|$100 que se pueden usar a lo largo de 60 días|
|Vultr|Cloud Compute - Regular|1|1 GB|25 GB SSD|$5.00|$250 que se pueden usar a lo largo de 30 días|

#### Crear nuestro servidor de forma local usando nuestro SO actual como anfitrión

Es difícil crear un servidor en la nube si no se cuenta con una tarjeta de crédito. Además, nuestra inexperiencia nos puede llevar a incurrir en cargos no deseados. Si no se tiene acceso a internet (como es el caso de las sesiones presenciales de este taller), es complicado trabajar con un servidor en la nube. Por ello, también vemos factible trabajar estas prácticas en nuestro entorno local.

!!! warning "Saber trabajar en la nube es MUY importante"
    Te invitamos a que comiences a trabajar en la nube lo más pronto posible, porque son las tecnologías más usadas en la vida real; los pros superan bastante a los contras en este aspecto.

Dentro del ámbito local, podemos optar por las siguientes maneras de instalar Linux:

- **Máquina Virtual (Virtualización)**
- **Contenedor Docker**
- **Usar WSL (solo aplica para computadoras Windows)**

Consideramos que vale la pena enfocarnos más en las primeras dos tecnologías.

Comencemos con la definición del término *virtual*. Según la RAE, el término refiere a algo "*que tiene existencia aparente y no real*".

En nuestro contexto, hablar de una máquina virtual es hablar de una máquina que existe de forma aparente mediante un software que nos permite emularla. No es real porque no la podemos tocar, a diferencia del equipo con el que estamos trabajando, pero existe dentro de nuestro equipo.

La virtualización de máquinas, a muy *grosso modo*, consta de la **simulación de un sistema operativo completo** con su propio kernel, drivers, programas y aplicaciones. Esto es muy útil muchas veces; por ejemplo, en un **entorno de pruebas** donde instalamos malware, nos interesa que no sea en nuestra computadora porque no sabemos el daño que pueda causar, y nos interesa que el sistema sea un sistema operativo completo para saber el alcance real del malware. Ahí, las prestaciones de una máquina virtual resultan bastante útiles. Sin embargo, hay casos donde no son la opción más óptima.

Suponga que está desarrollando una aplicación con tres componentes principales: un frontend hecho con React, una API hecha con Python y una base de datos PostgreSQL. Dicha aplicación requiere la instalación de *NodeJS*, *Python* y *PostgreSQL*. Ahora, suponga que un colega desarrollador va a ayudarlo, él también ha hecho proyectos con dichas tecnologías. 

El gran pero aquí es: ¿Cómo sabrá que las versiones que tienen instaladas son compatibles entre sí? Piense que él puede tener *PostgreSQL 13* y usted *PostgreSQL 16*. No es factible que usted haga el downgrade (cambio a una versión inferior) porque puede perder funcionalidad, tampoco lo es que él haga el upgrade (cambio a una versión superior) porque implicaría migrar sus proyectos existentes y dicha tarea puede implicar mucho tiempo que no está presupuestado. 

Ahí es donde la virtualización podría ser la solución. Si cada uno crea una máquina virtual (VM) con la misma versión de *PostgreSQL* exclusiva para este proyecto, podrían desarrollar sin problemas. No obstante, la creación de las VMs implica que cada una tendrá su propio kernel, sus drivers, sus programas y sus aplicaciones, lo que conllevaría un largo tiempo de instalación, un tiempo de arranque considerable y consumiría bastantes recursos en cada una de las computadoras (piense que el mismo hardware debe correr el SO original y el SO virtual), y no perdamos de vista que no bastará con una única VM por todo el desarrollo, sino una por cada componente. Falta solucionar el mismo problema para *NodeJS* y *Python*.

Es decir, para que no tengamos problemas de versiones sin afectar a otros desarrollos, cada uno de los programadores debería tener corriendo tres VMs además del sistema operativo original, lo que sería una pesadilla para nuestro hardware.

La solución a la situación descrita anteriormente se llama **contenedor**. Un contenedor, en términos simples, es un conjunto de procesos aislados que nos permite correr cada uno de nuestros componentes de manera independiente de la forma más óptima posible.

Piense que si me interesa usar *Python 3.10*, no requiero instalar y ejecutar de nuevo una máquina completa, sino solamente *Python 3.10* y las dependencias que este requiera para funcionar. Es lo que hace un contenedor: genera un entorno virtual aislado de cualquier proceso en el SO anfitrión, pero sin instalar más que lo mínimamente necesario para funcionar.

¿Por qué los contenedores son tan útiles?

- **Auto contenidos:** Cada contenedor tiene todo lo que necesita para funcionar sin requerir de dependencias preinstaladas en la máquina anfitrión.
- **Aislados:** Los contenedores tienen una influencia mínima o nula en el sistema anfitrión u otros contenedores.
- **Independientes:** Cada contenedor se administra de forma independiente; borrar un contenedor no afectará a otros en absoluto.
- **Portables:** Pueden correr donde sea. Si funciona bien en su computadora, funcionará bien en la de sus compañeros o incluso en la nube.

***

### Resumen de alternativas

Nuestra intención con la exposición anterior fue resaltar la importancia de cada una de estas tecnologías y por qué es relevante saber trabajar con todas ellas. Para este taller, sugerimos primero instalar el servidor utilizando la guía de VirtualBox y, si es posible, también desplegar el servidor en AWS.

1. [Guía VirtualBox.](../Guías/virtualbox.md)

2. [Guía Docker.](../Guías/docker.md) 

3. [Guía AWS.](../Guías/AWS.md)

Para cada alternativa, publicaremos la guía correspondiente, y tenemos la intención de ampliar dichas guías para cubrir la mayor cantidad de plataformas en la nube posible, hasta incluir todas las sugeridas en la tabla comparativa.