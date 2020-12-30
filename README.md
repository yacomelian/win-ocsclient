# win-ocsclient



Este simple programa se realizó de forma rápida en C# para comunicar un software de gestión de comandos táctil denominado  Touch Control <> y que se usa a través de un dispositivo como tablet o móvil, con la aplicación H2R Graphics <https://heretorecord.com/graphics/>, para así permitir interactuar desde un dispositivo móvil con esta interfaz para el streaming en vivo de eventos.

La solución viene a complementar la configuración indicada en https://heretorecord.com/blog/atem-mini-h2r-graphics

El software H2R Graphics tiene una interfaz de comunicación que utiliza el protocolo Open Sound Control (OCS) documentada en <https://heretorecord.com/graphics/docs#osc-control>. Este protocolo realiza una comunicación UDP para el envío de comandos y parámetros.

El software



Uso: OCSClient [host:port] <path> [option]

Examples: OCSClient
 OCSClient 127.0.0.1:8181 /h2r-graphics/lower-third "Title 1"
 OCSClient 192.168.1.33:8181 /h2r-graphics/lower-third "Title 1"
 OCSClient /h2r-graphics/lower-third "Title 1"


 Thanks to https://github.com/ValdemarOrn/SharpOSC for his OSC libraries.
