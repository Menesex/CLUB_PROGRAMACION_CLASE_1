Algoritmo ejercicio_1_9_febrero
	
	Escribir "Seleccione la asignatura(1.Matem�ticas- 2.Literatura - 3.Ingles)"
	Leer var_asignaturaInt
	
	
	
	//Bucle mientras (para asegurarse de que empecemos con una opci�n v�lida)
	Mientras (var_asignaturaInt <1 o var_asignaturaInt >3) Hacer
		Escribir "Porfavor seleccione una opci�n v�lida(1.Matem�ticas- 2.Literatura - 3.Ingles)"
		Leer var_asignaturaInt
	FinMientras
	
	//Pedir los datos
	Escribir "Porfavor rellene todos los datos a continuaci�n: "
	Escribir "A�o actual: "
	Leer var_a�oActualInt
	Escribir  "Identificaci�n: "
	Leer var_identificaci�nStr
	Escribir "Nombre: "
	Leer var_nombreStr
	Escribir "Contacto: "
	Leer var_contactoStr
	Escribir "Correo: "
	Leer var_correoStr
	Escribir "A�o de nacimiento: "
	Leer var_a�oNacimientoInt
	edad = (var_a�oActualint - var_a�oNacimientoInt)
	
	Escribir "***************************"
	Escribir "Digite la cantidad de notas"
	Leer var_cantidadNotasInt

	// Lista con la cantidad de notas y con la calificaci�n dentro
	Dimension notas[var_cantidadNotasInt]
	Para i <- 1 Hasta var_cantidadNotasInt Con Paso 1 Hacer
		Escribir "Escriba la calificaci�n en su nota ", i 
		leer var_calificacionFlt
		
		notas[i] <- var_calificacionFlt
		
	FinPara
	
	//Calcular promedio ponderado de las notas
	suma = 0
	para p <- 1 Hasta var_cantidadNotasInt con paso 1 Hacer
		suma = suma + notas[p]
		promedio = suma  / var_cantidadNotasInt
		
	FinPara
	
	//Mostrar los resultado- promedio - edad-asignatura
	Escribir "***************************"
	Escribir "Su promedio es de: " promedio
	Escribir "Su edad es de." edad , "A�os"
	
	
	//constantes para mostrar el texto de la asignatura
	cons_matematicasStr = "Matem�ticas"
	cons_literaturaStr = "Literatura"
	cons_inglesStr = "Ingl�s"
	
	//SE PUEDE EN UN SOLO CONDICIONAL COMPLEJO?
	si var_asignaturaInt = 1 Entonces
		Escribir "Asignatura: ", cons_matematicasStr
	FinSi
	si var_asignaturaInt = 2 Entonces
		Escribir "Asignatura: ", cons_literaturaStr
	FinSi
	si var_asignaturaInt = 3 Entonces
		Escribir "Asignatura: ", cons_inglesStr
	FinSi
	
	

FinAlgoritmo
