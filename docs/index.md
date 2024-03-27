# Home

!!! tip "Importante"

    Te sugiero leer está página antes de iniciar el curso. 


## Bienvenida

¡Gracias por visitar nuestro sitio! Aquí encontrarás el contenido que utilizaremos a lo largo del taller.

El propósito de este taller es ofrecer un primer acercamiento a la administración de servidores Linux. No pretendemos que sea un curso exhaustivo en ningún sentido.

### ¿Qué objetivos buscamos alcanzar al final del taller?

1. Que adquieras suficiente conocimiento sobre Linux para administrar un servidor doméstico.
2. Que superes el temor a interactuar con tu terminal.
3. Que conozcas algunas tecnologías relacionadas con la administración de servidores.

Este contenido está inspirado en el curso [Linux Upskill Challenge](https://linuxupskillchallenge.org/) y fue adaptado para impartirse durante el semestre 2024/2 en el grupo 2NV21 de la UPIICSA del IPN, bajo la tutoría del profesor Gilberto Ortíz. Si perteneces a otra secuencia o institución, siéntete libre de utilizar los recursos que aquí compartimos. ¡Los comentarios para mejorarlo son bienvenidos! Puedes contactarme a través de LinkedIn, cuyo enlace se encuentra en el footer de este sitio web.
## Contenidos

### [Módulo 1 - Introducción](./Curso/Módulo_01_Introducción.md)
- Breve reseña sobre qué es Linux y por qué es útil.
- Configuración del laboratorio en plataforma Cloud o en un servidor local (virtualización).

### [Módulo 2 - Conoce tu servidor](./Curso/Módulo_02_Conoce_tu_servidor.md)
- Conexión por `SSH` y comandos básicos como: `ls`, `uptime`, `free`, `df -h`, `uname -a`.
- Configuración de login sin contraseña mediante claves públicas y archivo de configuración `SSH`.

### [Módulo 3 - Navegación básica](./Curso/Módulo_03_Navegación_básica.md)
- Navegación básica y uso de las páginas "man".
- Jerarquía de archivos.

### [Módulo 4 - Ejecución como administrador](./Curso/Módulo_04_Ejecución_como_administrador.md)
- Uso de `sudo`, administración de `uptime`, zonas horarias y cambio de nombre de host.

### [Módulo 5 - Instalación de software y exploración del sistema de archivos](./Curso/Módulo_05_Instalación_de_software_y_exploración_del_sistema_de_archivos.md)
- Uso de 'apt' para encontrar e instalar software.
- Exploración del sistema de archivos con `mc`.
- Revisión de `/etc/passwd`, `/etc/ssh/sshd_config` y `/var/log/auth.log`.

### [Módulo 6 - Herramientas de visualización](./Curso/Módulo_06_Herramientas_de_visualización.md)
- Uso de `more` y `less`.
- Consulta del historial y uso del autocompletado de pestañas.
- Introducción al editor de texto `nano`.

### [Módulo 7 - Edición con "vim"](./Curso/Módulo_07_Edición_con_"vim".md)
- Fundamentos de `vim` con ayuda de `vimtutor`.

### [Módulo 8 - Servidores y sus servicios](./Curso/Módulo_08_Servidores_y_sus_servicios.md)
- Instalación de Apache2.
- Gestión de servicios, modificación de contenido del sitio y lectura de registros.

### [Módulo 9 - Procesamiento de texto](./Curso/Módulo_09_Procesamiento_de_texto.md)
- Práctica con herramientas como `grep`, `cat`, `more`, `less`, `cut`, `awk` y `tail`.
- Breve introducción a `awk` y `sed`.

### [Módulo 10 - Redes](./Curso/Módulo_10_Redes.md)
- Identificación de puertos abiertos con `ss` y `netstat`.
- Instalación y uso de `nmap`.
- Configuración y prueba de `ufw`.
- Responsabilidades de seguridad como administrador de sistemas.

### [Módulo 11 - Automatización de tareas](./Curso/Módulo_11_Automatización_de_tareas.md)
- Uso de `cron`, `at` y temporizadores de systemd.

### [Módulo 12 - Búsqueda de archivos](./Curso/Módulo_12_Búsqueda_de_archivos.md)
- Uso de herramientas como `locate`, `find`, `grep` y `which`.

### [Módulo 13 - Transferencia de archivos](./Curso/Módulo_13_Transferencia_de_archivos.md)
- Uso del protocolo SFTP y herramientas como `FileZilla` y `rsync`.

### [Módulo 14 - Gestión de usuarios y grupos](./Curso/Módulo_14_Gestión_de_usuarios_y_grupos.md)
- Uso de `adduser` y configuración de permisos con `visudo`.

### [Módulo 15 - Gestión de permisos](./Curso/Módulo_15_Gestión_de_permisos.md)
- Estudio de permisos, usuarios y grupos.
- Introducción a ACLs y SELinux (opcional).

### [Módulo 16 - Repositorios](./Curso/Módulo_16_Repositorios.md)
- Repaso de repositorios, habilitación de "Multiverse" y uso de PPAs en Ubuntu.

### [Módulo 17 - Archivado y compresión](./Curso/Módulo_17_Archivado_y_compresión.md)
- Uso de `tar` y `gzip` para archivar y comprimir.

### [Módulo 18 - Compilación desde código fuente](./Curso/Módulo_18_Compilación_desde_código_fuente.md)
- Instalación desde código fuente utilizando `wget`, `tar`, `make` e `install`.
- Discusión sobre seguridad y problemas de mantenimiento.

### [Módulo 19 - Rotación de registros](./Curso/Módulo_19_Rotación_de_registros.md)
- Gestión y rotación de registros con `logrotate`.

### [Módulo 20 - Gestión avanzada de archivos](./Curso/Módulo_20_Gestión_avanzada_de_archivos.md)
- Conceptos de inodes, hard links, simlinks y uso de `stat`.

### [Módulo 21 - Scripting](./Curso/Módulo_21_Scripting.md)
- Fundamentos del scripting en Linux, uso del shebang, permisos y `$PATH`.
- Ejemplos simples de scripts basados en la filtración de registros.

### [Módulo 22 - Conclusiones y próximos pasos](./Curso/Módulo_22_Conclusiones_y_próximos_pasos.md)
- Cierre del curso con recomendaciones y recursos para seguir explorando.