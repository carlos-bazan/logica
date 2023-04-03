SubProceso entradas(nombre Por Referencia, area_curso Por Referencia)
	Mostrar "Ingres el Nombre: "
	Leer nombre
	Mostrar "Ingresa el area del curso: "
	Leer area_curso
	//Mostrar "Costo Curso: "
	//Leer costo_curso	
FinSubProceso

SubProceso calculos (costo_curso, inicial Por Referencia)
	costo = Aleatorio(20,50)
	inicial = costo * 0.20	
	cuotas = (costo - inicial) / 24
FinSubProceso

SubProceso salidas (nombre, area_curso, inicial, cuotas )

	
FinSubProceso

SubProceso factura (nombre, area_curso, inicial, cuotas )
	Mostrar "Nombre: " nombre
	Mostrar "El curso es: " area_curso
	Mostrar "LAs cuotas a pagar son: " cuotas
	
FinSubProceso


Algoritmo sin_titulo
	Definir opc Como Entero
	
	Repetir
		Mostrar "Bienvenido"
		Mostrar " 1.- Ingrese los Datos"
		Mostrar " 2.- Calcular Cuotas"
		Mostrar " 3.- Ver Factura"
		Mostrar " 4.- Salir"
		Leer opc
		
		segun opc Hacer
			1:entradas(nombre, area_curso)
			2:calculos(costo_curso, inicial)
			3:factura(nombre, area_curso, inicial, cuotas)
			4:salidas(nombre, area_curso, inicial, cuotas)
			5:mostrar"Ud ha seleccioando salir"
				Mostrar "hasta luego"
			De Otro Modo:
				Mostrar "Seleccione una opcion valida"
		FinSegun
		
		
	Hasta Que opc = 5
	
	
	
	
	
	
		
FinAlgoritmo
