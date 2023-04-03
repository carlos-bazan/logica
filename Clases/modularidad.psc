SubProceso saludar(nombre)
	Mostrar "Bienvenido al Sistema"
	Mostrar "Como te llamas? "
	Leer nombre
	Mostrar "Hola " nombre " Bienvenido "
	Mostrar ""
	//Esperar 2 Segundos
	Limpiar Pantalla
	
FinSubProceso



SubProceso calcular(prome Por Referencia)
	Mostrar "Ingrese nota 1"
	Leer nota1
	Mostrar "Ingrese nota 2"
	Leer nota2
	Mostrar "Ingrese nota 3"
	Leer nota3
	prome = (nota1 + nota2 + nota3) / 3
	Mostrar "El promedio es: " prome
FinSubProceso


SubProceso despedir(nombre, prome)
	Mostrar "Hasta Luego!!!"
	si	prome >= 15 Entonces
		Mostrar "felicidades Aprobaste con: " prome
	SiNo
		Mostrar "Lo siento reporbaste"
	FinSi
	Mostrar "Tu nota promedio fue: " prome
	
FinSubProceso

Algoritmo modularidad
	
	saludar(nombre)
	calcular(prome)
	despedir(nombre, prome)
	
	//
	saludar(name)
	calcular(average)
	despedir(name, average)
FinAlgoritmo
