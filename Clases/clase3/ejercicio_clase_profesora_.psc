funcion monto_porc=calcular_porc(num,porc)
	monto_porc=num*porc
FinFuncion
subproceso entradas(precio_f por referencia)
	mostrar "Cuál es el precio de fabrica?"
	leer precio_f
FinSubProceso
SubProceso calcular(precio_f, ganancia por referencia, comision por referencia, pbase por referencia)
	comision=calcular_porc(precio_f,0.20)
	ganancia=calcular_porc(precio_f,0.25)
	pbase=precio_f+ganancia+comision
	//iva sobre el precio base
	//total pbase+iva
FinSubProceso
SubProceso salidas(precio_f, ganancia, comision, pbase)
	mostrar "Precio de fábrica: " precio_f
	mostrar "Ganancia: " ganancia
	mostrar "Comisión: " comision
	mostrar "Precio Base: " pbase 
FinSubProceso

Algoritmo sin_titulo
	//precio_f=aleatorio(5,25)
	entradas(precio_f)
	calcular(precio_f,ganancia,comision,pbase)
	salidas(precio_f, ganancia, comision, pbase)
FinAlgoritmo 