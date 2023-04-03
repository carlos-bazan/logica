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
SubProceso calcular_dcto (cant, descuento Por Referencia, conver_dsc Por Referencia)
	Definir porc_dsc como real
	si cant <= 0 Entonces
		Mostrar "**********ATENCION**********"
		Mostrar "Debes Ingresar un Valor Correcto (> 0):"
	FinSi
	si cant > 24 Entonces
		descuento = 0.15
		
	SiNo
		si cant >= 6 y cant <= 11 Entonces
			descuento = 0.05
		SiNo
			descuento = 0
		FinSi		
	FinSi
	porc_dsc = descuento * 100 // se crea para convertir el descuento y mostrarlo, adicional para utilizar una variable local
	conver_dsc = porc_dsc // se crea para convertir el descuento y mostrarlo, adicional para utilizar una variable local
	//Mostrar "PROCENTAJE DE DECUETOOOO " porc_dsc
FinSubProceso //calc_dcto

//******************************************************
// MODULO PARA DETERMINAR EL PRECIO POR TIPO DE FRANELA
//******************************************************
SubProceso determinar_tipo_franela(tipo, precio_tipo Por Referencia)
	si Mayusculas(tipo) = "A" Entonces
		precio_tipo = 25 
	sino	
			si Mayusculas(tipo) = "B" Entonces
				precio_tipo = 150 
			sino
					si Mayusculas(tipo) = "C" Entonces
						precio_tipo = 168 
					sino
						//Mostrar "Debe seleccionar una Opcion Valida"
					FinSi
			FinSi
		FinSi	
			
FinSubProceso //TIPO_FRANELA

//***********************************************
//      MODULO PARA CALCULAR MONTO DE COMPRA
//***********************************************
SubProceso calcular_mto_compra(cant, precio_tipo, monto_compra Por Referencia)
	monto_compra = cant * precio_tipo	
FinSubProceso //calc_mto_compra

//***********************************************
//       MODULO PARA CALCULAR MONTO A PAGAR
//***********************************************
SubProceso calcular_mto_pagar(monto_pagar Por Referencia, monto_compra, descuento, monto_descuento Por Referencia)
	monto_pagar = monto_compra - (monto_compra * descuento)
	monto_descuento = monto_compra * descuento	
FinSubProceso //calc_mto_pagar

//***********************************************
//       MODULO PARA LAS SALIDAS
//***********************************************

SubProceso salidas(nombre, cant, tipo, monto_compra, descuento, monto_pagar, precio_tipo, conver_dsc, monto_descuento)
	
	si Mayusculas(tipo) = "A" o Mayusculas(tipo) = "B" o Mayusculas(tipo) = "C" Entonces
		si cant > 0 Entonces
			Mostrar "Procesando Factura..."
			Esperar 1 Segundos
			Mostrar "********** FACTURA *********"
			Mostrar "Nombre: " nombre
			Mostrar "Cantidad Solicitada: " cant " Unds"
			Mostrar "Precio por Tipo: " precio_tipo " Bs"
			Mostrar "Monto de la Compra: " monto_compra " Bs"
			Mostrar "Porcentaje de Descuento: " conver_dsc " %"
			Mostrar "Monto Descuento: " monto_descuento " Bs"
			Mostrar "----------------------------------------"
			Mostrar "MONTO TOTAL A PAGAR: " monto_pagar " Bs"
			Mostrar "----------------------------------------"
		FinSi	
	SiNo
		Mostrar "**********ATENCION**********"
		Mostrar "Debes Ingresar un Valor Correcto:"
		Mostrar "[A] -> 25 Bs"
		Mostrar "[B] -> 150 Bs"
		Mostrar "[C] -> 168 Bs"
	FinSi

FinSubProceso //Salidas

//***********************************************
//              CUERPO PRINCIPAL
//***********************************************
Algoritmo fabrica_franelas
	Mostrar "Cliente Numero 1: "
	leer_datos(nombre, cant, tipo)
	calcular_dcto(cant, descuento, conver_dsc)
	determinar_tipo_franela(tipo, precio_tipo)
	calcular_mto_compra(cant, precio_tipo, monto_compra)
	calcular_mto_pagar(monto_pagar, monto_compra, descuento, monto_descuento)
	salidas(nombre, cant, tipo, monto_compra, descuento, monto_pagar, precio_tipo, conver_dsc, monto_descuento)
	Mostrar ""
	Mostrar "PRESIONE UNA TECLA PARA CONTINUAR CON EL SIGUIENTE CLIENTE..."
	Esperar Tecla
	Limpiar Pantalla
	
	Mostrar "*************************"
	Mostrar "Cliente Numero 2: "
	leer_datos(nombre2, cant2, tipo2)
	calcular_dcto(cant2, descuento2, conver_dsc2)
	determinar_tipo_franela(tipo2, precio_tipo2)
	calcular_mto_compra(cant2, precio_tipo2, monto_compra2)
	calcular_mto_pagar(monto_pagar2, monto_compra2, descuento2, monto_descuento2)
	salidas(nombre2, cant2, tipo2, monto_compra2, descuento2, monto_pagar2, precio_tipo2, conver_dsc2, monto_descuento2)
	Mostrar "*************************"
	
FinAlgoritmo
