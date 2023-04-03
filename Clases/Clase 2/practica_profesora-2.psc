subproceso leer_datos(nombre por referencia, cant por referencia, monto_ventas por referencia)
	mostrar "Ingrese su nombre"
	leer nombre
	mostrar "Cuántos autos vendió este mes ?"
	leer cant
	mostrar "Cuál fue su monto de ventas del mes?"
	leer monto_ventas
FinSubProceso

subproceso calcular(salario_neto Por Referencia, cant por valor, monto_ventas por valor)
	definir comision_autos, comision_ventas como real 
	comision_autos=cant*300
	comision_ventas=monto_ventas*0.18
	salario_neto=120+comision_autos+comision_ventas
	
	
	
FinSubProceso

subproceso mostrar_inf(nombre por valor, salario_neto por valor )
	mostrar "*****Recibo de pago******"
	mostrar "-------------------------"
	mostrar "Empleado: " nombre
	mostrar "Salario a percibir: " salario_neto	
FinSubProceso
Algoritmo sin_titulo
	mostrar "Empleado 1"
	leer_datos(nombre,cant,monto_ventas)
	calcular(salario_neto,cant, monto_ventas)
	mostrar_inf(nombre,salario_neto)
	mostrar ""
	mostrar "Empleado 2"
	leer_datos(nombre2,cant2,monto_ventas2)
	calcular(salario_neto2,cant2,monto_ventas2)
	mostrar_inf(nombre2, salario_neto2)

	
FinAlgoritmo 