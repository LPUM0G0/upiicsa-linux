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

### Módulo 1 - Introducción
- Breve reseña sobre qué es Linux y por qué es útil.
- Configuración del laboratorio en plataforma Cloud o en un servidor local (virtualización).

### Módulo 2 - Conoce tu servidor
- Conexión por `SSH` y comandos básicos como: `ls`, `uptime`, `free`, `df -h`, `uname -a`.
- Configuración de login sin contraseña mediante claves públicas y archivo de configuración `SSH`.

### Módulo 3 - Navegación básica
- Navegación básica y uso de las páginas "man".
- Jerarquía de archivos.

### Módulo 4 - Ejecución como administrador
- Uso de `sudo`, administración de `uptime`, zonas horarias y cambio de nombre de host.

### Módulo 5 - Instalación de software y exploración del sistema de archivos
- Uso de 'apt' para encontrar e instalar software.
- Exploración del sistema de archivos con `mc`.
- Revisión de `/etc/passwd`, `/etc/ssh/sshd_config` y `/var/log/auth.log`.

### Módulo 6 - Herramientas de visualización
- Uso de `more` y `less`.
- Consulta del historial y uso del autocompletado de pestañas.
- Introducción al editor de texto `nano`.

### Módulo 7 - Edición con "vim"
- Fundamentos de `vim` con ayuda de `vimtutor`.

### Módulo 8 - Servidores y sus servicios
- Instalación de Apache2.
- Gestión de servicios, modificación de contenido del sitio y lectura de registros.

### Módulo 9 - Procesamiento de texto
- Práctica con herramientas como `grep`, `cat`, `more`, `less`, `cut`, `awk` y `tail`.
- Breve introducción a `awk` y `sed`.

### Módulo 10 - Redes
- Identificación de puertos abiertos con `ss` y `netstat`.
- Instalación y uso de `nmap`.
- Configuración y prueba de `ufw`.
- Responsabilidades de seguridad como administrador de sistemas.

### Módulo 11 - Automatización de tareas
- Uso de `cron`, `at` y temporizadores de systemd.

### Módulo 12 - Búsqueda de archivos
- Uso de herramientas como `locate`, `find`, `grep` y `which`.

### Módulo 13 - Transferencia de archivos
- Uso del protocolo SFTP y herramientas como `FileZilla` y `rsync`.

### Módulo 14 - Gestión de usuarios y grupos
- Uso de `adduser` y configuración de permisos con `visudo`.

### Módulo 15 - Gestión de permisos
- Estudio de permisos, usuarios y grupos.
- Introducción a ACLs y SELinux (opcional).

### Módulo 16 - Repositorios
- Repaso de repositorios, habilitación de "Multiverse" y uso de PPAs en Ubuntu.

### Módulo 17 - Archivado y compresión
- Uso de `tar` y `gzip` para archivar y comprimir.

### Módulo 18 - Compilación desde código fuente
- Instalación desde código fuente utilizando `wget`, `tar`, `make` e `install`.
- Discusión sobre seguridad y problemas de mantenimiento.

### Módulo 19 - Rotación de registros
- Gestión y rotación de registros con `logrotate`.

### Módulo 20 - Gestión avanzada de archivos
- Conceptos de inodes, hard links, simlinks y uso de `stat`.

### Módulo 21 - Scripting
- Fundamentos del scripting en Linux, uso del shebang, permisos y `$PATH`.
- Ejemplos simples de scripts basados en la filtración de registros.

### Módulo 22 - Conclusiones y próximos pasos
- Cierre del curso con recomendaciones y recursos para seguir explorando.