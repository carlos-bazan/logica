	subproceso cargar_datos(nombre por referencia, cant Por Referencia, monto_ventas Por Referencia)
	mostrar "Cuál es su nombre?"
	leer nombre
	mostrar nombre " cuántos autos vendió?"
	leer cant
	mostrar "Cuál el fue el monto de ventas?"
	leer monto_ventas
FinSubProceso

subproceso calcular(sbase,cant, monto_ventas, comision_autos por referencia, comision_ventas por referencia, salario_total por referencia)
	comision_autos=cant*300000
	comision_ventas=monto_ventas*0.18
	salario_total=sbase+comision_autos+comision_ventas
FinSubProceso
//salidas
subproceso salidas(nombre,comision_autos, comision_ventas, salario_total)
	mostrar "Empleado: " nombre
	mostrar "Salario base " 12
	mostrar "Comisión autos: " comision_autos
	mostrar "Comision ventas: " comision_ventas
	mostrar "Salario total: " salario_total
FinSubProceso

Algoritmo sin_titulo
	sbase=10000000000
	cargar_datos(nombre, cant, monto_ventas)
	calcular(sbase,cant, monto_ventas,com_autos, com_ventas, salario_total)
	salidas(nombre, com_autos, com_ventas, salario_total)
FinAlgoritmo