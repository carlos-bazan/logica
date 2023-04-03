SubProceso entradas (nombre Por Referencia, nota1 Por Referencia, nota2 Por Referencia, nota3 Por Referencia)
	Mostrar "Ingrese el nombre "
	Leer nombre
	Mostrar "Cuales fueron las 3 notas de " nombre " ?"
	Leer nota1, nota2, nota3	
FinSubProceso 

SubProceso calcular_prom (nota1, nota2, nota3, prom Por Referencia)
prom = (nota1 + nota2 + nota3) / 3
FinSubProceso

SubProceso  boletin (prom, nombre)
	Mostrar "-------------------"
	Mostrar "Aprendez: " nombre
	Mostrar "Promedio: " prom
	Mostrar "-------------------"
FinSubProceso

	
Algoritmo sin_titulo
	Definir opc Como Entero
	
	Repetir
		Mostrar "Bienvenido"
		Mostrar " 1.- Registro de Datos"
		Mostrar " 2.- Calcular el promedio"
		Mostrar " 3.- Ver Boletin"
		Mostrar " 4.- Salir"
		Leer opc
		
		segun opc Hacer
			1:entradas(nombre, n1, n2, n3)
			2:calcular_prom(n1,n2,n3,promedio)
			3:boletin(promedio, nombre)
			4:mostrar"Ud ha seleccioando salir"
				Mostrar "hasta luego"
			De Otro Modo:
				Mostrar "Seleccione una opcion valida"
		FinSegun
		
		
	Hasta Que opc = 4
	
FinAlgoritmo
