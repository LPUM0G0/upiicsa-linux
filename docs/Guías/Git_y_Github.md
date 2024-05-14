## ¿Qué es Git?

Git es un **sistema de control de versiones** que se utiliza para rastrear cambios en archivos de código fuente durante el desarrollo de software. Fue creado por Linus Torvalds en 2005 y se ha convertido en una herramienta fundamental para los desarrolladores en la gestión de proyectos de código abierto y privado.

## ¿Qué es Github?

Es una plataforma en línea que permite a los desarrolladores colaborar en proyectos, alojar repositorios de código fuente, realizar un seguimiento de problemas, realizar revisiones de código y mucho más. GitHub se ha convertido en un lugar central para el desarrollo de software colaborativo y el intercambio de código entre equipos de desarrollo en todo el mundo.

## Creación de cuenta de Github
1. Ingresa al sitio de [Github](https://github.com)

    ![IMG-01](../assets/ggit_01.png)

2. Da click en el botón "Sign Up"
    ![IMG-02](../assets/ggit_02.png)

    - Ingresa tu correo y da click en "Continue"
        ![IMG-03](../assets/ggit_03.png)
    - Ingresa una contraseña y da click en "Continue"
        ![IMG-04](../assets/ggit_04.png)
    - Elige un nombre de usuario y da click en "Continue"
        ![IMG-05](../assets/ggit_05.png)
    - Si quieres suscribirte al newsletter habilita la casilla, de lo contrario déjala en blanco, y da click en "Continue".
        ![IMG-06](../assets/ggit_06.png)    
    - Resuelve el CAPTCHA y da click en "Submit"   
        ![IMG-07](../assets/ggit_07.png)
    - Ingresa a tu correo electrónico y copia el código de autenticación
        ![IMG-08](../assets/ggit_08.png)

        ![IMG-09](../assets/ggit_09.png)

3. Serás redirigido a la página de "Login" donde podrás ingresar por primera vez a tu cuenta
    ![IMG-10](../assets/ggit_10.png)

4. Personaliza tu cuenta respondiendo a las preguntas que se muestran a continuación.
    ![IMG-11](../assets/ggit_11.png)

    ![IMG-12](../assets/ggit_12.png)

5. Selecciona la cuenta gratuita dando click en "Continue for free"
    ![IMG-13](../assets/ggit_13.png)
    ![IMG-14](../assets/ggit_14.png)

6. Si has podido seguir la guía hasta este punto, habrás ingresado al dashboard de tu cuenta.
    ![IMG-15](../assets/ggit_15.png)
***

## Guía de Instalación de Git

1. Accede al sitio oficial de [Git](https://git-scm.com).
    ![Descargar Git](../assets/ggit_16.png)

2. Selecciona tu sistema operativo en el botón "Download for OS" y serás redirigido a la página con los instaladores correspondientes.

    **Página de Windows**
    ![Instalación en Windows](../assets/ggit_17.png)

    **Página de Mac**
    ![Instalación en Mac](../assets/ggit_18.png)

    ??? note "Instalación en Mac"
        La instalación en Mac se puede realizar fácilmente a través de gestores de paquetes como `homebrew`. Sin embargo, esta opción no está cubierta en esta guía.

3. Descarga el instalador adecuado para tu sistema desde [esta página](https://support.microsoft.com/es-es/windows/-qué-versión-del-sistema-operativo-windows-tengo-628bec99-476a-2c13-5296-9dd081cdd808#:~:text=Selecciona%20Inicio%20%3E%20Configuración%3E%20Sistema%20%3E%20Acerca%20de%20.).

4. Busca el instalador en tu explorador de archivos.
    ![Buscando el instalador](../assets/ggit_19.png)

5. Ejecuta el instalador como administrador.
    ![Ejecutando el instalador](../assets/ggit_20.png)  

6. Acepta el acuerdo de licencia.
    
    ![Acuerdo de licencia](../assets/ggit_21.png)

7. Elige la ruta de instalación.
    
    ![Ruta de instalación](../assets/ggit_22.png)

8. Deja seleccionados los componentes por defecto.
    
    ![Componentes por defecto](../assets/ggit_23.png)

9. Mantén la configuración predeterminada para los accesos directos.
    
    ![Accesos directos](../assets/ggit_24.png)

10. Selecciona tu editor de texto preferido; se sugiere Vim.
    
    ![Editor de texto](../assets/ggit_25.png)

11. Para la configuración inicial, selecciona "Let Git Decide".
    
    ![Configuración inicial](../assets/ggit_26.png)

12. Utiliza la línea de comandos y el software de terceros como ámbito de uso para Git.
    
    ![Ámbito de uso](../assets/ggit_27.png)

13. Usa el ssh.exe incluido con Git seleccionando "Use bundled OpenSSH".
    
    ![SSH](../assets/ggit_28.png)

14. Para conexiones HTTPS, elige "OpenSSL library".
    
    ![OpenSSL](../assets/ggit_29.png)

15. Deja la opción por defecto para los finales de línea en los archivos de texto.
    
    ![Finales de línea](../assets/ggit_30.png)

16. Selecciona "MinTTY" como el emulador de terminal para trabajar con Git.
    
    ![Emulador de terminal](../assets/ggit_31.png)

17. Configura la conducta por defecto para `git pull` como `Fast-forward on merge`.
    
    ![Configuración de pull](../assets/ggit_32.png)

18. Usa el `Git Credential Manager`.
    
    ![Credential Manager](../assets/ggit_33.png)

19. Habilita el `file system caching`.
    
    ![File System Caching](../assets/ggit_34.png)

20. No actives las opciones experimentales y haz clic en "Install".
    
    ![Opciones experimentales](../assets/ggit_35.png)

21. Espera a que finalice la instalación.
    
    ![Esperando instalación](../assets/ggit_36.png)

22. Al terminar, activa la opción "Launch Git Bash" y desactiva "View Release Notes".
    
    ![Finalización de instalación](../assets/ggit_37.png)

23. Se abrirá una terminal (MinTTY) que será referida como `Git Bash`.
    
    ![Terminal Git Bash](../assets/ggit_38.png)

## Vincular Git con Github

### Verificar nuestras claves ssh
Para verificar que claves ssh tenemos en nuestro equipo ejecutemos el siguiente comando dentro de nuestra `Git Bash`.

```BASH
ls -al ~/.ssh
```

- En caso de que no exista el directorio recibirás el mensaje de error `No such file or directory`, para crear el directorio ejecuta el siguiente comando:

    ```BASH
    mkdir $HOME/.ssh
    ```

- En caso de que el directorio exista pero no tengas claves ssh la salida del comando será similar a esta:
    ![IMG-39](../assets/ggit_39.png)

- En caso de que sí cuentes con claves ssh previas la salida del comando será similar a esta:
    ![IMG-41](../assets/ggit_46.png)

    Y podrás saltar a la sección copia tu clave pública de SSH.

### Creación de nuevo conjunto de claves
Las claves SSH siempre se generan como un par de claves, una pública (id_rsa.pub) y una privada (id_rsa). 

!!! warning "Clave Privada"
    Es extremadamente importante que nunca reveles tu clave privada, y que sólo uses tu clave pública para cosas como la autenticación de GitHub. 

Generemos un nuevo par de claves con el comando:

```BASH
ssh-keygen -t rsa -b 4096 -C <tu@correo.com>
```

Ejemplo:

```BASH
ssh-keygen -t rsa -b 4096 -C lpumogo@proton.me
```

- Nos preguntará si queremos personalizar el nombre del fichero que almacene la clave privada, nosotros lo dejaremos con el nombre por defecto, entonces solo damos `ENTER`.
    ![IMG-42](../assets/ggit_42.png)
- A continuación preguntará si queremos proteger nuestra clave ssh con una frase, nosotros la dejaremos sin esa protección y daremos en `ENTER` sin escribir nada. 

    ![IMG-43](../assets/ggit_43.png)

- Confirmamos volviendo a dar `ENTER`

    ![IMG-44](../assets/ggit_44.png)

- Veremos el siguiente mensaje que confirma la generación exitosa de nuestras claves. 

    ![IMG-45](../assets/ggit_45.png)

Confirmemos que existan nuestras claves con el comando
```BASH
ls -al ~/.ssh
```
![IMG-46](../assets/ggit_46.png)

### Agrega tu clave SSH a ssh-agent
`SSH-Agent` permite autenticar conexiones ssh recordando las claves privadas del usuario.

Primero, asegúrate de que ssh-agent se está ejecutando con:

**MAC/Linux**

```BASH
eval "$(ssh-agent -s)"
```
![IMG-48](../assets/ggit_48.png)

**Windows**
```BASH
eval `ssh-agent -s`
```

```BASH
ssh-agent -s
```

![IMG-47](../assets/ggit_47.png)

Una vez hayas visto que el proceso está funcionando, agrega tu clave privada a ssh-agent con el comando:

```BASH
ssh-add ~/.ssh/id_rsa
```

![IMG-49](../assets/ggit_49.png)

### Copia tu clave pública de SSH

A continuación, tienes que copiar tu clave pública de SSH en el portapapeles.

Imprime el contenido de tu clave pública en la consola con:

```BASH
cat ~/.ssh/id_rsa.pub
```
![IMG-51](../assets/ggit_51.png)

Luego resalta y copia la salida.

![IMG-50](../assets/ggit_50.png)

### Agrega tu clave SSH pública a GitHub
Ve a la [página de configuración de tu GitHub](https://github.com/settings/keys)

![IMG-52](../assets/ggit_52.png)

Haz clic en el botón "New SSH key"

![IMG-53](../assets/ggit_53.png)

Crea una nueva clave de tipo `Authentication Key`, coloca el título con el que identifiques a tu clave, en este caso nosotros solo usaremos esa clave en nuestra `Windows-PC`, así que la identificaremos de esa manera y en `key` pegaremos el contenido de la clave que copiamos en el paso anterior.

![IMG-54](../assets/ggit_54.png)

Después de dar click en "Add SSH key", nos pedirá confirmar nuestra contraseña

![IMG-55](../assets/ggit_55.png)

Si todo se realizó correctamente veremos que la clave se añadió exitosamente y la veremos en el listado de claves. 

![IMG-56](../assets/ggit_56.png)

### Prueba la autenticación

Para probar que nuestra configuración sea correcta establecemos una conexión SSH con el servidor de GitHub mediante el comando:

```BASH
ssh -T git@github.com
```

Nos pedirá añadir a los servidores de github al listado de hosts conocidos, escribimos `yes`y damos `ENTER`.

![IMG-56](../assets/ggit_57.png)

Si la conexión se estableció correctamente veremos un mensaje como el siguiente

![IMG-58](../assets/ggit_58.png)
