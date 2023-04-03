SubProceso totales(total_ventas Por Referencia) // Modulo para solicitar los totales de ventas
	Mostrar "Ingrese el total de ventas de la sucursal 1: "
	Leer ventas_sucu1
	Mostrar "Ingrese el total de ventas de la sucursal 2: "
	Leer ventas_sucu2
	Mostrar "Ingrese el total de ventas de la sucursal 3: "
	Leer ventas_sucu3
	Mostrar "Ingrese el total de ventas de la sucursal 4: "
	Leer ventas_sucu4
	
	total_ventas = ventas_sucu1 + ventas_sucu2 + ventas_sucu3 + ventas_sucu4
	Mostrar "Sub Tiotatles"
	
	
FinSubProceso


SubProceso calcular_promedio(total_ventas) //Modulo Calcular Promedio
	promedio = (total_ventas) / 4
	Mostrar "El promedio es: " promedio
	Mostrar "Sub promedio"
FinSubProceso


SubProceso calcular_ganancia(ganancia Por Referencia, promedio) // Modulo Calcular Ganancia
	ganancia = promedio * proc_ganancia
	Mostrar "Sub Ganancia"
	
FinSubProceso



SubProceso salidas() //Modulo de Salidas - Mostrado
	Mostrar "Sub Salidas"
	
FinSubProceso






Algoritmo sin_titulo
	porc_ganancia = promedio * 0.30
	
	Mostrar "ss" porc_ganancia
	Mostrar "ss" promedio
	totales(total_ventas)	
	calcular_promedio(total_ventas)
	
	calcular_ganancia(ganancia, proemdio)
	salidas()
	
FinAlgoritmo
