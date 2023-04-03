subproceso entradas(cant, nombremayor por referencia, nombremenor por referencia, notamayor por referencia, notamenor por referencia)
	definir nombre Como Caracter
	definir nota como entero 
	notamayor=-1
	notamenor=101
	para i=1 hasta cant
		mostrar "Cómo se llama el estudiante " i 
		leer nombre
		mostrar "Cuál fue la calificación de " nombre "?"
		leer nota 
		si nota>notamayor entonces
			notamayor=nota
			nombremayor=nombre
		FinSi
	FinPara
FinSubProceso


Algoritmo sin_titulo
	definir cant como entero 
	mostrar "Cuántos estudiantes va a procesar?"
	leer cant
	entradas(cant, nombremayor, nombremenor,notamayor,notamenor )
	mostrar "La nota mayor es " notamayor
	mostrar "La obtuvo " nombremayor
	mostrar "La nota menor es " notamenor
	mostrar "la obtuvo " nombremenor
FinAlgoritmo 