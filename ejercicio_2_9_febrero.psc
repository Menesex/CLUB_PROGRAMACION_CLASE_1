Algoritmo ejercicio_2_9_febrero
	
	Escribir "Seleccione el plan de datos (1.Bronce - 2.Plata - 3.Oro)"
	Leer var_tipoDatosInt
	
	si var_tipoDatosInt = 1 Entonces
		Escribir "Ingrese la cantidad de mensajes enviados"
		Leer var_msgInt
		Escribir "Ingrese la cantidad de minutos consumidos en llamada"
		Leer var_minInt
		Escribir "Ingrese la cantidad de datos utilizados del plan (en GB)"
		Leer var_datosInt
		
		cons_msgBInt = 50
		cons_minBInt = 300
		cons_datosBInt = 1 //GB
		
		cons_msgExcedidosCobro = 200
		cons_minExcedidosCobro = 100
		cons_datosExcedidosCobro = 1000
		
		
		Si var_msgInt > cons_msgBInt Entonces
			var_msgexcedidosInt = (var_msgInt - cons_msgBInt)
			Escribir "********************************************************"
			Escribir "Usted se excedio por ", var_msgexcedidosInt , " mensajes"
			var_deudaMsgInt = (var_msgexcedidosInt * cons_msgExcedidosCobro)
			Escribir "Su deuda (por los mensajes) es de ", var_deudaMsgInt , "$"
			Escribir "********************************************************"
		SiNo
			var_msgDisponibles = (cons_msgBInt - var_msgInt)
			Escribir "Usted tiene " , var_msgDisponibles , " mensajes disponibles"
		Fin Si
		
		Si var_minInt > cons_minBInt Entonces
			var_minexcedidosInt = (var_minInt - cons_minBInt)
			Escribir "********************************************************"
			Escribir "Usted se excedio por ", var_minexcedidosInt , " minutos"
			var_deudaMinInt = (var_minexcedidosInt * cons_minExcedidosCobro)
			Escribir "Su deuda (por los minutos excedidos) es de ", var_deudaMinInt , "$"
			Escribir "********************************************************"
		SiNo
			var_minDisponibles = (cons_minBInt - var_minInt)
			Escribir "Usted tiene " , var_minDisponibles , " minutos disponibles"
			
		Fin Si
		
		Si var_datosInt > cons_datosBInt Entonces
			var_datosexcedidosInt = (var_datosInt - cons_datosBInt)
			Escribir "********************************************************"
			Escribir "Usted se excedió por ", var_datosexcedidosInt, "GB"
			var_deudaDatosInt= (var_datosexcedidosInt * cons_datosExcedidosCobro)
			Escribir "Su deuda (por los datos excedidos) es de: " , var_deudaDatosInt , "$"
			Escribir "********************************************************"
		SiNo
			var_datosDisponibles = (cons_datosBInt - var_datosInt)
			Escribir "Usted tiene " , var_datosDisponibles , " datos disponibles"
		Fin Si
	FinSi
	
	
	
	
FinAlgoritmo
