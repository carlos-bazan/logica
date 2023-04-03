SubProceso leer_datos( nombre Por Referencia, cant Por Referencia, monto_venta Por Referencia)  
	Mostrar "Ingrese Nombre	"
	leer nombre
	Mostrar "Ingrese cuantos automoviles venduio"
	leer cant
	Mostrar "Cual fue el monto de ventas"
	Leer monto_venta
FinSubProceso

//******************************

SubProceso calcular(sneto Por Referencia, cant, monto_venta por valor)
	//Definir montoc, porc, sbase como real
	Definir comision_autos, comision_ventas como real
	//montoc = 300
	//porc = 0.18
	//sbase = 120
	// asi redundaria, se pudiera colocar el monto directamnente
	comision_autos =  cant * 300
	comision_ventas = monto_venta * 0.18
	
	sneto = 120 + comision_autos + comision_ventas
FinSubProceso


//******************************

SubProceso salidas(nombre, sneto)
	Mostrar "Nombre del Vendedor: " nombre
	Mostrar "El salario a percibir es de: " sneto
FinSubProceso




	
Algoritmo sin_titulo
	leer_datos(nombre, cant, monto_venta)
	calcular(sneto, cant, monto_venta)
	salidas(nombre, sneto)
	
FinAlgoritmo
