# PROYECTO-FASTSNACK  
AppFastSnack-App para gestionar pedidos 
      
Es un sistema desarrollado en Java orientado a la gestión de pedidos de comida rápida, eEl proyecto aplica principios de Programación Orientada a Objetos (POO), utilizando conceptos como herencia, encapsulamiento, asociación, agregación y enumeraciones para modelar el proceso de administración de clientes, productos y pedidos.
El sistema permite registrar clientes, gestionar un catálogo de productos y crear pedidos compuestos por uno o varios productos. Cada pedido está asociado a un único cliente y cuenta con estados definidos mediante una enumeración, lo que facilita el seguimiento del proceso desde su creación hasta su entrega.

Contexto del problema
La problemática identificada en este proyecto surge a partir de la necesidad de una microempresa de comida rápida que no contaba con una base de datos para almacenar y gestionar de manera organizada la información de sus clientes, productos y pedidos. Anteriormente, gran parte de la información se manejaba de forma manual, lo que podía ocasionar pérdida de datos, errores en el registro de información y dificultades para llevar un control adecuado de los pedidos realizados. Como solución a esta problemática, se desarrolló FastSnack, una aplicación para la gestión de pedidos de comida rápida. El sistema permite administrar la información de los clientes y productos, así como registrar y gestionar los pedidos de manera organizada.

La aplicación fue desarrollada utilizando Java y Apache NetBeans, incorporando una interfaz gráfica que permite al usuario interactuar con el sistema.
Además, se implementó una base de datos en MySQL para almacenar de forma estructurada la información de los clientes, productos y pedidos. De esta manera, el sistema busca mejorar el control de la información, reducir errores, ahorrar tiempo en la gestión de pedidos y brindar una atención más rápida y eficiente a los clientes

Análisis de requerimientos
Para solucionar la problemática planteada, el sistema FastSnack debe permitir gestionar la información de clientes, productos y pedidos 
•	Registrar: permitir registrar clientes, productos , pedidos y opinions sobre Nuestro servicio. 
•	Consultar: permitir visualizar la información almacenada en el Sistema 
•	Buscar: permitir ubicar clientes y productos registrados por medio de un numero ID que te ofrece el Sistema despues de pedir.
•	Modificar: permitir modificar información registrada, principalmente el estado de los pedidos. 
•	Eliminar: permitir eliminar pedidos que ya no sean necesarios, solicitando una confirmación antes de realizar la eliminación. 
•	Gestionar pedidos: permitir asociar un pedido con un cliente y agregar uno o varios productos. 
•	Calcular el total: calcular automáticamente el valor total de los productos incluidos en un pedido. 
•	Controlar el estado: permitir manejar los estados del pedido: Pendiente, Revisión, Enviado y Entregado. 
•	Almacenar información: guardar la información de clientes, productos y pedidos en una base de datos MySQL. 

Principales Funcionalidades
•	Registro de productos.
•	Edicion de datos
•	Creación de pedidos.
•	Consulta de información.
•	Búsqueda de registros.
•	Eliminación de pedidos.
•	Cálculo automático del total del pedido.
•	Control del estado de los pedidos.
•	Almacenamiento de información mediante MySQL

Características principales
-Gestión de clientes con información personal y dirección. 
-Consulta, búsqueda, y eliminación de clientes registrados. 
-Registro y administración de productos con nombre y precio. 
-Consulta, búsqueda, y eliminación de productos registrados. 
-Creación de pedidos asociados a un cliente. 
- Agregación de uno o varios productos dentro de un pedido. 
- Cálculo automático del total del pedido. 
- Consulta de los pedidos realizados. 
- Control de estados del pedido mediante la enumeración EstadoPedido. 
 -Implementación de encapsulamiento mediante atributos privados y métodos de acceso (getters y setters). 
-Aplicación de relaciones UML como herencia, asociación, agregación y dependencia.

Operaciones CRUD
-create (registra nuevos clientes y pedidos)
-read (visualiza la informacion almacenada)
-Update (Se modifica los datos ya registrados, especificamente estado del pedido)
-Delete (Eliminar pedidos no deseados)

Estructura del modelo
Persona: Clase base que contiene nombre y teléfono.
Cliente: Hereda de Persona y agrega la dirección del cliente.
Producto: Representa los artículos disponibles para la venta.
Pedido: Gestiona los productos seleccionados por un cliente y su estado.
EstadoPedido: Enumeración que define los estados válidos de un pedido (Pendiente, Revición, Enviado, Entregado).
Este proyecto sirve como ejemplo práctico de modelado UML e implementación de sistemas orientados a objetos en Java, siguiendo buenas prácticas de diseño y organización del código.

E V I D E N C I A 

1-modelo lógico 
2-script del modelo fisico
3-Validaciones de entrada y salida 
•	Campos obligatorios vacíos.  (se debe llenar obligatoriamente con su nombre, numero de telefono y direccion para poder realizar un pedido y poder generar un ticket con un numero de ID, para poder tener una organizacion a la hora de ver el pedido)
•	Datos con formatos incorrectos. (numero de telefono/ no se permite letras)…(En la direccion no se permite palabras muy cortas)
•	Valores no permitidos. 
•	Intentos de registrar información incompleta. 
•	Confirmación antes de eliminar registros. (antes de eliminar un pedido no Deseado)
•	Mensajes apropiados para informar errores o resultados de las operaciones

4-conexion con MysQL
Establecida utilizando el patrón Singleton para la gestión eficiente de la conexión.
5-Registro de datos
Inserción sincronizada y transaccional entre las tablas relacionales (`Persona` y `Cliente`), utilizando recuperación de IDs autogenerados (`getGeneratedKeys`).
6-Consulta y visualizacion
Recuperación, despliegue de información completa mediante consultas combinadas (`INNER JOIN`).
7-Busqueda
Localización  de registros específicos dentro del sistema.
8-edicion
Actualización de los datos de los clientes y pedidos directamente desde la aplicación.
9-eliminacion segura

10-datos modificados directamente en la base de datos cuando sea necesario comprobar la operación. 
Si se puede modificar los datos directamente en MySQL
(˶ᵔ ᵕ ᵔ˶)
