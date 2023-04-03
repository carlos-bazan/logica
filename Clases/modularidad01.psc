//ENTRADAS
SubProceso cargar_datos (nombre Por Referencia, cant Por Referencia, monto_ventas Por Referencia)
	Mostrar "Cual es su nombre?"
	Leer nombre
	Mostrar "Cuantos autos"
	Leer cant
	Mostrar "Montop de Ventas"
	Leer monto_ventas
FinSubProceso



//CALCULOS

SubProceso calcular (comision_autos Por Referencia, comision_ventas Por Referencia,cant, monto_ventas, salario_total Por Referencia)
	
	comision_autos = cant * 300000
	comision_ventas = 0.18 * monto_ventas
	salario_total = comision_autos + comision_ventas + 12000
	
FinSubProceso

SubProceso salidas (nombre, comision_autos, comision_ventas, salario_total )
	Mostrar "Empleado: " nombre
	Mostrar "Salario BAse: " 12000
	Mostrar "Comision Autos" comision_autos
	Mostrar "Comision VEntas" comision_ventas
	Mostrar "Salario Total" salario_total
FinSubProceso


//SALIDAS


Algoritmo sin_titulo
	cargar_datos(nombre, cant, monto_ventas )
	//calcular (comision_autos, comision_ventas,cant, monto_ventas, salario_total)
	
	
FinAlgoritmo
