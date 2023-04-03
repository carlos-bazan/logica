Funcion monto_porcentaje = calcular_porcentaje(num, porc)
	monto_porcentaje = num * porc
FinFuncion

SubProceso entradas (precio_f Por Referencia)
	Mostrar "Caul es el precio de Fabrica: "
	leer precio_f
FinSubProceso

SubProceso calcular(precio_f, ganancia Por Referencia, comision Por Referencia pbase Por Referencia, iva Por Referencia, total Por Referencia)
	comision = calcular_porcentaje (precio_f, 0.20)
	ganancia = calcular_porcentaje (precio_f, 0.25)
	pbase = precio_f + ganancia + comision
	//iva = pbase * 0.15 // directo
	iva = calcular_porcentaje(pbase, 0.15) // ojo para reutilizar la funcion
	total = pbase + iva
FinSubProceso


SubProceso salidas(precio_f, ganancia, comision, pbase, iva, total)
	Mostrar "Precion Fabrica " precio_f
	Mostrar "Ganancia " ganancia
	Mostrar "Cominisiomn " comision
	Mostrar "Precio BAse " pbase
	Mostrar "El iva es: " iva
	Mostrar "Total a pagar: " total
	
FinSubProceso


Algoritmo sin_titulo
	//precio_f = Aleatorio(5,25)
	entradas(precio_f)
	calcular(precio_f, ganancia, comision, pbase, iva, total)
	salidas(precio_f, ganancia, comision, pbase , iva, total )
	
	
	
FinAlgoritmo
