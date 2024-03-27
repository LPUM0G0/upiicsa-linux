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

    De los roles que sí requieren saber Linux, selecciona uno y busca en [LinkedIn](https://www.linkedin.com) un puesto de trabajo cuyo salario sea visible para compartirlo con tus compañeros.

!!! question "Actividad 3"

    Reflexiona lo siguiente: ¿Crees que Linux sea una tecnología que valga la pena aprender para futuros profesionales de TI?
***

## ¿Cómo inicio?

El primer requisito para estudiar administración de servidores Linux es contar con un servidor Linux.

Antes de tener el nuestro, vale la pena repasar los siguientes conceptos fundamentales.

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
    
- En caso de instalar ambos sistemas correctamente (dual boot), solo podremos usar un sistema a la vez y cambiarlos requerirá reiniciar el equipo y seleccionar que sistema queremos usar. 
    
- En caso de no querer tener dual boot tendríamos que invertir en un equipo de computo para que fuese exclusivamente nuestro servidor. 

!!! note "Es importante conocer el proceso de instalación nativa"
    Pese a las desventajas mencionadas, es importante conocer este proceso de instalación porque habrá entornos en los que esta opción sea la más viable, por ello, al final del taller se hará una demostración de cómo instalar Debian de manera nativa, a los usuarios para los cuales la instalación nativa no sea novedad, los invitamos a que intenten instalar Arch Linux para que entiendan más acerca del proceso que hacen los instaladores automáticos. 

Por lo anteriormente expuesto no consideramos conveniente que los miembros del taller instalen el SO directamente en sus equipos y proponemos dos vías principales como alternativas:

- *Crear nuestro servidor de forma local usando nuestro SO actual como anfitrión*
- *Crear nuestro servidor en la nube*

Dichas alternativas a su vez se dividen en diferentes formas de conseguir nuestro objetivo.

#### Crear nuestro servidor de forma local usando nuestro SO actual como anfitrión
Aquí podemos optar por las siguientes maneras de instalar Linux sobre nuestro SO actual.

- Máquina Virtual
- Contenedor de Docker
- Usar WSL (solo aplica para computadoras Windows)

#### Crear nuestro servidor en la nube

En un centro de datos situado en algún lugar del mundo, un servidor físico que corre Linux de manera nativa es "dividido" en decenas de servidores virtuales, que son rentados para que usuarios como nosotros puedan usarlos desde cualquier sitio con acceso a internet, cada una de esas divisiones es conocida como un VPS (Virtual Private Server).

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