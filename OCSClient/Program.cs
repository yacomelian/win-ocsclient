using System;
using System.IO;
using System.Net;
using System.Reflection.Metadata.Ecma335;
using System.Runtime.InteropServices.ComTypes;


// https://github.com/vvvv/vvvv-sdk/blob/develop/common/src/core/Utils/OSC/OSCMessage.cs
namespace OCSClient
{
    class Program
    {

        static void printUsage() {
            Console.WriteLine("");
            Console.WriteLine("Uso: OCSClient [host:port] <path> [option]");
            Console.WriteLine("");
            Console.WriteLine("Examples: OCSClient");
            Console.WriteLine(" OCSClient 127.0.0.1:8181 /h2r-graphics/lower-third \"Title 1\"");
            Console.WriteLine(" OCSClient 192.168.5.3:8181 /h2r-graphics/lower-third \"Title 1\"");
            Console.WriteLine(" OCSClient /h2r-graphics/lower-third \"Title 1\"");

            Console.WriteLine("");
        }
        static string[] validateInput (string[] args) {
            //Console.WriteLine("Validating input of {0} args", args.Length);
            string [] errorString = new string[] { };
            if (args.Length == 0)
            {
                printUsage();
                return errorString;
            }

            /*for (int i = 0; i < args.Length; i++) { 
                Console.WriteLine("Validating input {0}: {1} ", i, args[i]);
            }*/

            string host = "127.0.0.1";
            string port = "8181";
            string path = "";
            string action = "";
            // Si envian host y puerto
            if (args[0].Contains(":"))
            {
                string[] subs = args[0].Split(":");
                host = subs[0];
                port = subs[1];
            }
            else if (args[0].Contains("/"))
            {
                path = args[0];
                if (args.Length == 2)
                {
                    action = args[1];
                }
            }
            else {
                Console.WriteLine("Opcion 1");
                printUsage();
                return errorString;
            }

            if (args.Length > 1) { 
                if (args[0].Contains("/"))
                {
                    path = args[0];
                    if (args.Length == 2) {
                        action = args[1];
                    }
                }
                else
                {
                    Console.WriteLine("Opcion 2");
                    printUsage();
                    return errorString;
                }
            }
            //string[] ret = new string[] { "127.0.0.1", "8181", "uri", "action" };
            string[] ret = new string[] { host, port, path, action };


            return ret;
        }

        static void Udpsend(string host, int port, string uri, string action) {
            var client = new System.Net.Sockets.UdpClient();
            IPEndPoint ep = new IPEndPoint(IPAddress.Parse(host), port); // endpoint where server is listening
            client.Connect(ep);

            // send data
            client.Send(new byte[] { 1, 2, 3, 4, 5 }, 5);

            // then receive data
            try
            {
                var receivedData = client.Receive(ref ep);
            }
            catch (System.Net.Sockets.SocketException e) {
                Console.WriteLine("Exception: {0}", e.Source);
            }
            Console.Write("receive data from " + ep.ToString());

            Console.Read();

        }
        static int Main(string[] args)
        {
            string[] param = new string[] { };
            param = validateInput(args);
            if (param.Length == 4) {
                //Console.WriteLine("Send  to {0}:{1}, with path {2}  and action {3}", param[0], param[1], param[2], param[3]);
                var host = param[0];
                var port = int.Parse(param[1]);
                var path = param[2];
                var action = param[3];

                //var message = new SharpOSC.OscMessage("/h2r-graphics/clear", 23, 42.01f, "hello world");
                //var sender = new SharpOSC.UDPSender("127.0.0.1", 8181);
                

                var message = new SharpOSC.OscMessage(path, action);
                var sender = new SharpOSC.UDPSender(host, port);
                sender.Send(message);
                Console.WriteLine("Envío to {0}:{1}, with path {2}  and action {3}", param[0], param[1], param[2], param[3]);
                Console.WriteLine("");
                return 0;
            }
            return 1;
        }
    }
}
