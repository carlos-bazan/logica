SubProceso totales(ventas_sucu1 Por Referencia, ventas_sucu2 Por Referencia, ventas_sucu3 Por Referencia ventas_sucu4 Por Referencia) // Modulo para solicitar los totales de ventas
	Mostrar "Ingrese el total de ventas de la sucursal 1: "
	Leer ventas_sucu1
	Mostrar "Ingrese el total de ventas de la sucursal 2: "
	Leer ventas_sucu2
	Mostrar "Ingrese el total de ventas de la sucursal 3: "
	Leer ventas_sucu3
	Mostrar "Ingrese el total de ventas de la sucursal 4: "
	Leer ventas_sucu4
	
	//total_ventas = ventas_sucu1 + ventas_sucu2 + ventas_sucu3 + ventas_sucu4
//	Mostrar "Sub-Totatles"
	
FinSubProceso

SubProceso calcular_promedio(total_ventas Por Referencia, ventas_sucu1, ventas_sucu2, ventas_sucu3, ventas_sucu4, promedio Por Referencia) //Modulo Calcular Promedio
	total_ventas = ventas_sucu1 + ventas_sucu2 + ventas_sucu3 + ventas_sucu4	
	promedio = (total_ventas) / 4
	//Mostrar "El promedio es:(en proemdio) " promedio 
	//Mostrar "Sub-promedio"
FinSubProceso

SubProceso calcular_ganancia(total_ventas, promedio, porc_ganancia Por Referencia, promedio, ganancia Por Referencia, ganan Por Referencia) // Modulo Calcular Ganancia
	//ganancia = promedio * proc_ganancia
	porc_ganancia =  promedio * 0.30	
	
	ganan = promedio + porc_ganancia
		
	Mostrar "La gananacia es en calcular ganancia: " ganan
//	Mostrar "promedio en calcular ganancia" promedio 
	//Mostrar "Sub-Ganancia" porc_ganancia 
	
FinSubProceso

SubProceso salidas(promedio, ganan) //Modulo de Salidas - Mostrado promedio y ganancia
	//Mostrar "Sub -alidas"
	Mostrar "El promedio en las SALIDAS es de: " promedio 
	Mostrar "Las Ganancias en Salidas es: " ganan
	
FinSubProceso

Algoritmo sin_titulo
	totales(ventas_sucu1, ventas_sucu2, ventas_sucu3, ventas_sucu4)	
	calcular_promedio(total_ventas, ventas_sucu1, ventas_sucu2, ventas_sucu3, ventas_sucu4, promedio )
	salidas(promedio, ganan)
	calcular_ganancia(total_ventas, promedio, porc_ganancia, promedio, ganancia, ganan)
	
	
FinAlgoritmo