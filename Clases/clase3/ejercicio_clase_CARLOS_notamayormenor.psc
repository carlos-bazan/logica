SubProceso entradas (cant, nom_mayor Por Referencia, nom_menor Por Referencia, nota_mayor Por Referencia, nota_menor Por Referencia)
	Definir nombre Como Caracter
	Definir nota Como Entero
	nota_mayor = -1
	nota_menor = 101
	para i = 1 Hasta cant
		Mostrar "Nombre del estudiante " i
		Leer nombre // variable local
		Mostrar "Cual fue la calificacion de: " nombre " ?"
		Leer nota
		si nota > nota_mayor Entonces
			nota_mayor = nota
			nom_mayor = nombre
		FinSi
		
		
		si nota < nota_mayor Entonces
			nota_menor = nota
			nom_menor = nombre
		FinSi
		
		
	FinPara
FinSubProceso

Algoritmo sin_titulo
	Definir cant como entero
	Mostrar "Cuanto estudisantes va a procesar? "
	Leer cant
	entradas(cant, nom_mayor, nom_menor, nota_mayor, nota_menor)
	Mostrar "La nota mayor es: " nota_mayor
	Mostrar "La obtuvo: " nom_mayor
	Mostrar "La nota menor es: " nota_menor
	Mostrar "La obtuvo: " nom_menor
	
FinAlgoritmo
