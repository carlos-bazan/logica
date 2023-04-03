//***********************************************
//       MODULO PARA OBTENER LAS ENTRADAS
//***********************************************
SubProceso leer_datos(nombre Por Referencia, cant Por Referencia, tipo Por Referencia)
	Mostrar "Ingresa tu Nombre: "
	leer nombre
	Mostrar "Ingresa la cantidad a Comprar: "
	leer cant
	Mostrar "Ingresa el tipo de Franela: "
	Mostrar "[A] -> 25 Bs"
	Mostrar "[B] -> 150 Bs"
	Mostrar "[C] -> 168 Bs"
	leer tipo	
FinSubProceso //leer_datos

//***********************************************
//       MODULO PARA CALCULAR DESCUENTO
//***********************************************
SubProceso calc_dcto (cant, descuento Por Referencia)
	//Definir descuento como real
	si cant > 24 Entonces
		descuento = 0.15
	SiNo
		si cant >= 6 y cant <= 11 Entonces
			descuento = 0.05
		SiNo
			descuento = 0
		FinSi
	FinSi
//	Mostrar "El descuento es" descuento
FinSubProceso //calc_dcto

//******************************************************
// MODULO PARA DETERMINAR EL PRECIO POR TIPO DE FRANELA
//******************************************************
SubProceso tipo_franela(tipo, precio_tipo Por Referencia)
	
	//Definir precio_tipo Como Real
	
		si Mayusculas(tipo) = "A" Entonces
			precio_tipo = 25 
		Sino	
			si Mayusculas(tipo) = "B" Entonces
				precio_tipo = 150 
			sino
				si Mayusculas(tipo) = "C" Entonces
					precio_tipo = 168 
				FinSi
			FinSi
		FinSi
		//Mostrar "EL PRECIO POR TIPO ES: " precio_tipo
	
		//Mostrar "debes ingresar una opcion valida"
		

	
	
FinSubProceso //TIPO_FRANELA

//***********************************************
//      MODULO PARA CALCULAR MONTO DE COMPRA
//***********************************************
SubProceso calc_mto_compra(cant, precio_tipo, monto_compra Por Referencia)
	monto_compra = cant * precio_tipo	
FinSubProceso //calc_mto_compra

//***********************************************
//       MODULO PARA CALCULAR MONTO A PAGAR
//***********************************************
SubProceso calc_mto_pagar(monto_pagar Por Referencia, monto_compra, descuento )
	monto_pagar = monto_compra - (monto_compra * descuento)
FinSubProceso //calc_mto_pagar

//***********************************************
//       MODULO PARA LAS SALIDAS
//***********************************************

SubProceso salidas(nombre, cant, tipo, monto_compra, descuento, monto_pagar, precio_tipo)		
	//Mostrar "PRECIO TIPOOOOOOOO" precio_tipo
	//si precio_tipo <> 25 o precio_tipo <> 150 o precio_tipo <> 168 Entonces
		
		//Mostrar "**********FACTURA*********"
		//Mostrar "Nombre: " nombre
		//Mostrar "Cantidad Solicitada: " cant " Unds"
		//Mostrar "Monto de la Compra: " monto_compra " Bs"
		//Mostrar "Descuento: " descuento " %"
		//Mostrar "Monto a Pagar: " monto_pagar " Bs"
		
		
		
		//Mostrar "La opcion Sleeccionada NO es Valida"
		//Mostrar "Por favor seleccione una correcta"
		//Mostrar "A => (25Bs) - B => (150Bs) - C => (168Bs)"	
	//FinSi
	
	
	si cant > 0 Entonces
		si precio_tipo > 0 Entonces
			Mostrar "**********FACTURA*********"
			Mostrar "Nombre: " nombre
			Mostrar "Cantidad Solicitada: " cant " Unds"
			Mostrar "Monto de la Compra: " monto_compra " Bs"
			Mostrar "Descuento: " descuento " %"
			Mostrar "Monto a Pagar: " monto_pagar " Bs"
		FinSi
	SiNo
		Mostrar "**************************ATENCION****************************"
		Mostrar "La opcion Sleeccionada NO es Valida"
		Mostrar "Por favor seleccione una correcta"
		Mostrar "A => (25Bs) - B => (150Bs) - C => (168Bs)"	
	FinSi
	
	
	
	
	
	
	
	
FinSubProceso //Salidas

//***********************************************
//              CUERPO PRINCIPAL
//***********************************************
Algoritmo fabrica_franelas
	Mostrar "Cliente Numero 1: "
	leer_datos(nombre, cant, tipo)
	calc_dcto(cant, descuento)
	tipo_franela(tipo, precio_tipo)
	calc_mto_compra(cant, precio_tipo, monto_compra)
	calc_mto_pagar(monto_pagar, monto_compra, descuento)
	salidas(nombre, cant, tipo, monto_compra, descuento, monto_pagar, precio_tipo)
	Mostrar "PRESIONE UNA TECLA PARA CONTINUAR CON EL SIGUIENTE CLIENTE..."
	Esperar Tecla
	Limpiar Pantalla
	
	Mostrar "*************************"
	Mostrar "Cliente Numero 2: "
	leer_datos(nombre2, cant2, tipo2)
	calc_dcto(cant2, descuento2)
	tipo_franela(tipo2, precio_tipo2)
	calc_mto_compra(cant2, precio_tipo2, monto_compra2)
	calc_mto_pagar(monto_pagar2, monto_compra2, descuento2)
	salidas(nombre2, cant2, tipo2, monto_compra2, descuento2, monto_pagar2, precio_tipo)
	Mostrar "*************************"
	
FinAlgoritmo
