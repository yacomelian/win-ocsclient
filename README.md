# OCSclient

## Spanish

Cliente para Open Sound Control

Este simple programa se realizó de forma rápida en C# para comunicar un software de gestión de comandos táctil denominado  Touch Portal <https://www.touch-portal.com/> y que se usa a través de un dispositivo como tablet o móvil, con la aplicación H2R Graphics <https://heretorecord.com/graphics/>, para así permitir interactuar desde un dispositivo móvil con esta interfaz para el streaming en vivo de eventos.

La solución viene a complementar la configuración indicada en https://heretorecord.com/blog/atem-mini-h2r-graphics para el streaming de eventos a través de ATEM <https://www.blackmagicdesign.com/es/products/atemmini>, con este programa, se pueden configurar los botones en el Touch portal que interactuan con el H2R graphics y producen cambios en la salida, como aparición de logos o cambios en un marcador.

El software H2R Graphics tiene una interfaz de comunicación que utiliza el protocolo Open Sound Control (OCS) documentada en <https://heretorecord.com/graphics/docs#osc-control>. Este protocolo realiza una comunicación UDP para el envío de comandos y parámetros. Con OCSClient, se pueden enviar esos comandos para la modificación


### Uso: 
```sh
OCSClient.exe [host: port] <path> [option]
```

Ejemplos:
 ```sh
 OCSClient.exe 127.0.0.1:8181 /h2r-graphics/lower-third "Title 1"
 OCSClient.exe 192.168.1.33:8181 /h2r-graphics/lower-third "Title 1"
 OCSClient.exe /h2r-graphics/lower-third "Title 1"
 OCSClient.exe /h2r-graphics/clear
 OCSClient.exe /h2r-graphics/logo show
 OCSClient.exe /h2r-graphics/logo hide
 ```

Gracias a https://github.com/ValdemarOrn/SharpOSC por sus librerías de OSC.

## English

Client for Open Sound Control

This simple program was made quickly in C # to communicate a touch command management software called Touch Portal <https://www.touch-portal.com/> and that is used through a device such as tablet or mobile, with the H2R Graphics application <https://heretorecord.com/graphics/>, in order to allow interaction from a mobile device with this interface for live streaming of events.

The solution complements the configuration indicated at https://heretorecord.com/blog/atem-mini-h2r-graphics for streaming events through ATEM <https://www.blackmagicdesign.com/es/products/ atemmini>, with this program, you can configure the buttons on the Touch portal that interact with the H2R graphics and produce changes in the output, such as the appearance of logos or changes in a marker.

H2R Graphics software has a communication interface that uses the Open Sound Control (OCS) protocol documented at <https://heretorecord.com/graphics/docs#osc-control>. This protocol performs UDP communication to send commands and parameters. With OCSClient, you can send those commands for modification


### Usage
```sh
OCSClient.exe [host: port] <path> [option]
```
Examples:
 ```sh
 OCSClient.exe 127.0.0.1:8181 /h2r-graphics/lower-third "Title 1"
 OCSClient.exe 192.168.1.33:8181 /h2r-graphics/lower-third "Title 1"
 OCSClient.exe /h2r-graphic /lower-third "Title 1"
 OCSClient.exe /h2r-graphics/clear
 OCSClient.exe /h2r-graphics/logo show
 OCSClient.exe /h2r-graphics/logo hide
```

 Thanks to https://github.com/ValdemarOrn/SharpOSC for his OSC libraries.