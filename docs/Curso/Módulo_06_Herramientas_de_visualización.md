## Introducción

Este módulo dará la introducción a cinco temas diferentes. No es necesario dominarlo todo hoy. 

¡Practicarás mucho con todo esto en las próximas sesiones!

No te dejes engañar por lo simplistas que puedan parecer algunos de estos comandos todos tienen profundidades ocultas.

## Tus tareas para este módulo

- Usar el autocompletado por tabulación
- Buscar en el historial de comandos
- Leer un archivo de puntos usando más y menos
- Cambia/personaliza tu `prompt`

### More or Less

Familiarízate con el uso de `more` y `less` para ver archivos, incluida la posibilidad de llegar al principio o al final de un archivo en menos tiempo y buscar texto.

### Autocompletado

Pruebe cómo funciona el "autocompletado por tabulación": esta es una característica útil que le ayuda a ingresar comandos correctamente. Ayuda a encontrar tanto el comando como los parámetros de nombre de archivo, por lo que escribir archivos y luego presionar "Tab" completará menos el comando, pero también escribir menos /etc/serv y presionar "Tab" completará menos /etc/services. Intente escribir menos /etc/s y luego presione "Tab" y nuevamente para ver cómo la función maneja la ambigüedad.

### Historial

Ahora que ha escrito bastantes comandos, intente presionar la "flecha hacia arriba" para desplazarse hacia atrás a través de ellos. Lo que deberías notar es que no sólo puedes ver tus comandos más recientes, sino también los de la última vez que iniciaste sesión. Ahora prueba el comando de historial, que enumera todo tu historial de comandos almacenado en caché, a menudo 100 o más entradas. Hay varias cosas inteligentes que se pueden hacer con esto. La más sencilla es repetir un comando: elija una línea para repetir (por ejemplo, la número 20) y repítala escribiendo !20 y presionando "Entrar". Más adelante, cuando escriba comandos largos y complejos, esto puede resultar muy útil. También puedes presionar Ctrl + r y luego comenzar a escribir cualquier parte del comando que estés buscando. Verá una función de autocompletar de un comando anterior cuando se le solicite. Si continúas escribiendo, aparecerán opciones más específicas. Puede ejecutarlo presionando Intro o editarlo primero presionando las flechas u otras teclas de movimiento. También puedes seguir presionando Ctrl + r para ver otras instancias del mismo comando que usaste con diferentes opciones.

### Archivos ocultos

Busque archivos "ocultos" en su directorio de inicio. En Linux, la convención es simplemente que cualquier archivo que comience con "." El personaje está oculto. Entonces, escriba cd para regresar a su “directorio de inicio” y luego ls -l para mostrar qué archivos hay allí. Ahora escriba ls -la o ls -ltra (la "a" es para "todos") para mostrar todos los archivos, incluidos los que comienzan con un punto. Con diferencia, el uso más común de los “archivos punto” es mantener la configuración personal en un directorio de inicio. Así que usa tus nuevas habilidades con menos para mirar el contenido de .bashrc, .bash_history y otros.


### Edite ficheros de texto

Finalmente, use el editor nano para crear un archivo en su directorio de inicio y escriba un resumen de cómo le han funcionado los últimos cinco días.