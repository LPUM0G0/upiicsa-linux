## Introducción 
La mayoría de los usuarios de computadoras fuera del mundo Linux y Unix no pasan mucho tiempo en la línea de comandos, pero como administrador de sistemas Linux, este es tu entorno de trabajo, por lo que debes tener habilidades en él.

Cuando utilizas un escritorio gráfico como Windows o macOS de Apple (o incluso las últimas versiones de Linux), existen "lugares" donde se almacenan tus cosas, "Imágenes", "Música", "Descargas", etc. 

Pero si tienes algún conocimiento técnico, te darás cuenta de que debajo de todo esto hay una "estructura de directorios" jerárquica de "carpetas" 

!!! tip "Directorios y ficheros"
    Es común que en el vocabulario técnico nos refiramos a las **carpetas** como **directorios** y a los **archivos** como **ficheros**.

Ejemplos: 

- `C:\Users\Steve\Desktop` en Windows
- `/Users/Steve/Desktop` en macOS
- `/home/steve/Desktop`  en un sistema Linux.

De ahora en adelante, en el taller te indicaremos una serie de recursos en línea para un tema y luego te daremos un conjunto sencillo de tareas que debes realizar. Está perfectamente bien buscar en Google otros recursos en línea, consultar cualquier libro que tengas, preguntar a profesores, compañeros, etc.; de hecho, un elemento fundamental del diseño de este taller es obligarte a hacer un poco de tu propia investigación. Incluso los administradores de sistemas más experimentados harán una búsqueda en línea para encontrar consejos sobre cómo usar los comandos, por lo que cuanto antes adquieras ese hábito, mejor.
***
## Tus tareas para este módulo
- Encontrar la documentación de los comandos que hemos usado hasta ahora. - [Demo](https://asciinema.org/a/619679)
- Navegar entre directorios, crear directorios, listar contenidos mover y borrar archivos. - [Demo](https://asciinema.org/a/619680) 
***
## [RTFM](https://en.wikipedia.org/wiki/RTFM)

Este es un buen momento para mencionar que una de las muchas ventajas de Linux es que está diseñado para permitirte conocer el sistema y aprender a usarlo. 
La documentación está disponible en forma de manuales de texto, guías y foros. Es en ellos donde pasarás la mayor parte de tu tiempo durante este taller.

Mientras que los sistemas propietarios tienen alguna documentación gratuita, ves con mucha más frecuencia el uso de soporte técnico de pago para solucionar problemas o averiguar cómo se puede realizar una tarea en particular.

Aunque también puedes hacer esto con Linux (Canonical, RedHat y SuSE son ejemplos de empresas que ofrecen soporte de la misma manera), es muy probable que prefieras solucionarlo TÚ mismo. 

Lo cual nos lleva al famoso acrónimo [RTFM](https://en.wikipedia.org/wiki/RTFM). 

Leer el manual es lo primero que debes hacer cuando estás aprendiendo un comando. Vamos a repasar las muchas formas de obtener esa información, pero si al final de esa búsqueda necesitas más información, siempre puedes hacer una [pregunta bien redactada](https://opensource.com/life/16/10/how-ask-technical-questions) en foros y otras comunidades.

### man
Empezando con el comando `man`. 

Cada aplicación instalada viene con su propia página en este manual, por lo tanto es posible consultar la página de `pwd` y ver todos los detalles sobre la sintaxis, mediante el siguiente comando:
```BASH
man pwd
```

Te recomendamos probar los siguientes comandos:
```BASH
man cp
```

```BASH
man mv
```

```BASH
man grep
```

```BASH
man ls
```

```BASH
man man
```

Como verás, son excelentes para la sintaxis detallada de un comando, pero muchos son extremadamente concisos y para otros, la cantidad de detalles puede resultar algo abrumadora.

### tldr
¡Y es por eso que `tldr` es una herramienta tan poderosa! Puede [instalarlo](https://tldr.sh/) fácilmente con el comando:
```BASH
sudo apt install tldr
``` 
o seguir esta [demostración](https://asciinema.org/a/619672).

Ejemplo de uso:

**Comando**
```BASH
tldr pwd
```
**Output**
```BASH
$ tldr pwd
pwd
Print name of current/working directory.More information: https://www.gnu.org/software/coreutils/pwd.

 - Print the current directory:
   pwd

 - Print the current directory, and resolve all symlinks (i.e. show the "physical" path):
   pwd -P
```

### apropos
Si conoce una palabra clave o alguna descripción de lo que se supone que debe hacer el comando, puede probar con `apropos` o `man -k` de esta manera:

**Comando**
```BASH
apropos "working directory"
```
**Output**
```BASH
$ apropos "working directory"
git-stash (1)        - Stash the changes in a dirty working directory away
pwd (1)              - print name of current/working directory
pwdx (1)             - report current working directory of a process

$ man -k "working directory"
git-stash (1)        - Stash the changes in a dirty working directory away
pwd (1)              - print name of current/working directory
pwdx (1)             - report current working directory of a process
```

### help
Pero pronto descubrirás que no todos los comandos tienen un manual que puedas leer con `man`. 
Los comandos sin página en `man` están contenidos dentro del propio shell y los llamamos comandos integrados ([built](https://www.gnu.org/software/bash/manual/html_node/Shell-Builtin-Commands.html)).

Hay algunos traslapes (es decir, comandos integrados que también tienen una página de manual), pero si `man` no funciona, usamos el comando `help` para mostrar información sobre ellos.

**Ejemplo:**

**Comando sin página de man**

```BASH
$ man export
No manual entry for export
```

**Help para ese mismo comando**
```BASH

$ help export
export: export [-fn] [name[=value] ...] or export -p
    Set export attribute for shell variables.

    Marks each NAME for automatic export to the environment of subsequently
    executed commands.  If VALUE is supplied, assign VALUE before exporting.

    Options:
      -f        refer to shell functions
      -n        remove the export property from each NAME
      -p        display a list of all exported variables and functions

    An argument of `--' disables further option processing.

    Exit Status:
    Returns success unless an invalid option is given or NAME is invalid.
```

La mejor manera de saber si un comando es un comando integrado es verificar su tipo mediante el comando `type`
**Ejemplo:**

**Comando integrado**
```BASH
$ type export
export is a shell builtin
```

**Comando NO integrado**
```BASH
$ type ping
ping is /usr/bin/ping
```

### info
Y por último, el comando `info` lee la documentación almacenada en formato [info](https://en.wikipedia.org/wiki/Info_(Unix)).

```BASH
info man
```

![IMG-01](../assets/mtres_01.png)

***

## Navegar por la estructura de archivos

!!! question "Actividad 1"
    Comienza leyendo el manual: [`man hier`](https://help.ubuntu.com/kubuntu/desktopguide/es/directories-file-systems.html).

!!! question "Actividad 2"
    Responde lo siguiente:

    - ¿Qué directorio contiene las "aplicaciones binarias importantes"?
    - ¿Qué directorio contiene los ficheros de configuración?
    - ¿Qué directorio contiene "directorios personales (home) para los diferentes usuarios"? 
    - ¿En qué directorio podemos encontrar "aplicaciones opcionales (de terceros)"?
    - ¿Cuál es el directorio personal del superusuario?

!!! example "Obtenga su directorio actual"
    Para saber la ruta ABSOLUTA en la que se encuentra trabajando use el comando "print working directory": 
    ```BASH
    pwd
    ```

!!! question "Prompt"
    Lee a qué nos referimos cuando hablamos del [Prompt](https://es.wikipedia.org/wiki/Prompt#:~:text=Se%20llama%20prompt%20al%20carácter,comandos%20y%20suele%20ser%20configurable.)

??? note "Prompt y la ruta actual"
    Generalmente, su "[prompt](https://es.wikipedia.org/wiki/Prompt)" también está configurado para brindarle al menos parte de la información relativa a su ruta actual, por lo que si estoy en el directorio `/etc`, entonces el mensaje podría ser: `enrique@202.203.203.22:/etc$` o simplemente: `/etc: $`
    ![IMG-02](../assets/mtres_02.png)
    ![IMG-03](../assets/mtres_03.png)

!!! example "Cambie de directorio"
    El comando `cd` te mueve a diferentes áreas del sistema. 
    
    `cd /var/log` te llevará a la carpeta `/var/log`.

    Bajo esta lógica dirígete a la ruta: `/tmp` y verifica la ruta absoulta.

!!! example "Vuelve a tu directorio HOME"
    El comando `cd` sin ninguna ruta específicada, por defecto te mandará a tu directorio HOME también conocido como `~`, inténtalo. 

!!! note "Directorio padre"
    Es posible referirnos al directorio padre de cierto directorio con la notación `..`
    Por ejemplo, si usted se encuentra en la ruta `/etc/NetworkManager` puede regresar a `/etc` mediante el comando:

    ```BASH
    cd ..
    ```

!!! example "Ejercicio Directorio padre"
    Ingrese a `/var/log/` luego ejecute en este orden los comandos:
    ```BASH
    cd ..
    ```
    ```BASH
    pwd
    ``` 
    ```BASH
    cd ..
    ```
    ```BASH
    pwd
    ``` 
    Responda en qué directorio se encuentra al final. 
!!! note "Ubicación relativa"
    Una ubicación "relativa" se basa en su directorio de trabajo actual, 
    
    - Ejemplo: si primero usa `cd /var`, entonces `pwd` confirmará que está "en" `/var`, y podrá pasar a `/var/log` de dos maneras: 
	    - ya sea proporcionando la ruta completa (absoluta) con: `cd /var/log` 
	    - o simplemente usando la ruta "relativa" con el comando: `cd log`


!!! note "¿Qué archivos hay en una carpeta?"
    El comando `ls` (lista) le dará una lista de los archivos y subcarpetas. 
    
    Como muchos comandos de Linux, existen opciones (conocidas como "switches") para alterar el significado del comando o el formato de salida. 
    Pruebe con un `ls` simple, luego `ls -l -t` y luego intente con `ls -l -t -r -a`

!!! note "Archivos ocultos"
    Por convención, los archivos con un carácter inicial "." se consideran ocultos y `ls`, y muchos otros comandos, los ignorarán. El modificador `-a` nos permite verlos.


!!! note "Nota sobre los modificadores/switches"
    Una nota sobre los modificadores: generalmente, la mayoría de los comandos de Linux aceptarán uno o más "parámetros" y uno o más "switches". 
    Entonces, cuando decimos `ls -l /var/log`, "`-l`" es un modificador para decir "formato largo" y "`/var/log`" es el "parámetro". Muchos comandos aceptan una gran cantidad de modificadores y, por lo general, estos se pueden combinar (por lo tanto, de ahora en adelante, use `ls -ltra`, en lugar de `ls -l -t -r -a`.

!!! example "Identifique los directorios en su HOME" 
    En su directorio de inicio, escriba: 
    ```BASH
    ls -ltra
    ``` 
    y observe la columna del extremo izquierdo; aquellas entradas con una "`d`" como primer carácter en la línea son directorios (carpetas) en lugar de archivos. 
    También pueden mostrarse en un color o fuente diferente; de ​​lo contrario, agregar el modificador :
    "`--color=auto`" debería hacer esto: 
    ```BASH
    ls -ltra --color=auto
    ```
***
## Manipulación básica de directorios
- Puede crear una nueva carpeta/directorio con el comando `mkdir`.
!!! example "Cree su primer directorio"
    Vaya a su directorio de inicio, escriba `pwd` para comprobar que está en el lugar correcto y luego cree un directorio, por ejemplo para crear uno llamado "prueba", simplemente escriba:

    ```BASH
    mkdir prueba
    ``` 
    Ahora use el comando `ls` para ver el resultado.
- Puede crear aún más directorios, anidarlos dentro de directorios y luego navegar entre ellos con el comando `cd`.
- Cuando desee mover ese directorio dentro de otro directorio, use `mv` y especifique la ruta para mover.
- Para eliminar un directorio, use `rmdir` si el directorio está vacío o `rm -r` si todavía hay archivos u otros directorios dentro de él.
***
## Manipulación básica de archivos
- Puedes crear nuevos archivos/ficheros vacíos con el comando `touch`, para que puedas explorar un poco más del comando `ls`.
- Cuando desee mover ese archivo a otro directorio, use `mv` y especifique la ruta a mover.
- Para eliminar un archivo, use `rm`.
***

## Ejercicios recomendados
!!! question "Creación de directorios"
    Crea el siguiente árbol de carpetas: 
    `~/Tu_Nombre/Semana_01/Practica_01`

!!! question "Creación de ficheros"
    Crea los siguientes ficheros: 
    
    - `~/Tu_Nombre/Semana_01/Practica_01/Tu_nombre.txt`
    - `~/Tu_Nombre/Semana_01/Practica_01/Tu_comida_favorita.txt`

!!! question "Eliminación de ficheros"
    Elimina el fichero: 
    `~/Tu_Nombre/Semana_01/Practica_01/Tu_nombre.txt`

!!! question "Cambiar ficheros de carpeta"
    Cambia el fichero: 
    `~/Tu_Nombre/Semana_01/Practica_01/Tu_comida_favorita.txt`
    a la ruta 
    `~/Tu_Nombre/Semana_01/Practica_01/`

!!! question "Mover carpetas"
    Cambia la carpeta: 
    `~/Tu_Nombre/Semana_01/Practica_01/.txt`
    a la ruta 
    `~/Tu_Nombre/`

!!! question "Eliminar carpetas"
    Elimina la carpeta: 
    `~/.eliminame`

!!! example "Visualiza el contenido de un archivo"
    Ejecuta el comando 
    ```BASH
    cat ~/LEEME.txt
    ```

!!! question "Pregunta RETO 1"
    Lee el contenido del archivo llamado "-" que está en tu directorio HOME

!!! question "Pregunta RETO 2"
    Lee el contenido del archivo llamado "nombre con espacios" que está en tu directorio HOME

!!! question "Pregunta RETO 3"
    Lee el contenido del archivo oculto en tu directorio HOME

***

## Conclusión
Tener la capacidad de moverte con confianza por la estructura de directorios en la línea de comandos es importante, ¡así que no pienses que puedes pasarlo por alto! Sin embargo, estas habilidades son algo que utilizarás constantemente a lo largo de todas las lecciones del taller, así que no te desesperes si esto no "hace clic" de inmediato.
***
## Referencias
-  [linuxupskillchallenge](https://github.com/livialima/linuxupskillchallenge/tree/master)
-  [Difference between help, info and man command](https://unix.stackexchange.com/questions/19451/difference-between-help-info-and-man-command)
- [GNU Texinfo](https://www.gnu.org/software/texinfo/)
- [Explore the Linux file system](https://www.digitalocean.com/community/tutorials/how-to-use-cd-pwd-and-ls-to-explore-the-file-system-on-a-linux-server)
- [Linux File System](https://www.youtube.com/watch?v=2qQTXp4rBEE)
- [Simple Terminal Commands on Ubuntu](http://www.youtube.com/watch?v=CGBsurVdLGY)
- [Solaris Unix Commands](http://www.gsp.com/support/virtual/admin/unix/solaris/commands.html)
***
