Algoritmo ejercicio_1_9_febrero
	
	Escribir "Seleccione la asignatura(1.Matemáticas- 2.Literatura - 3.Ingles)"
	Leer var_asignaturaInt
	
	
	
	//Bucle mientras (para asegurarse de que empecemos con una opción válida)
	Mientras (var_asignaturaInt <1 o var_asignaturaInt >3) Hacer
		Escribir "Porfavor seleccione una opción válida(1.Matemáticas- 2.Literatura - 3.Ingles)"
		Leer var_asignaturaInt
	FinMientras
	
	//Pedir los datos
	Escribir "Porfavor rellene todos los datos a continuación: "
	Escribir "Año actual: "
	Leer var_añoActualInt
	Escribir  "Identificación: "
	Leer var_identificaciónStr
	Escribir "Nombre: "
	Leer var_nombreStr
	Escribir "Contacto: "
	Leer var_contactoStr
	Escribir "Correo: "
	Leer var_correoStr
	Escribir "Año de nacimiento: "
	Leer var_añoNacimientoInt
	edad = (var_añoActualint - var_añoNacimientoInt)
	
	Escribir "***************************"
	Escribir "Digite la cantidad de notas"
	Leer var_cantidadNotasInt

	// Lista con la cantidad de notas y con la calificación dentro
	Dimension notas[var_cantidadNotasInt]
	Para i <- 1 Hasta var_cantidadNotasInt Con Paso 1 Hacer
		Escribir "Escriba la calificación en su nota ", i 
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
	Escribir "Su edad es de." edad , "Años"
	
	
	//constantes para mostrar el texto de la asignatura
	cons_matematicasStr = "Matemáticas"
	cons_literaturaStr = "Literatura"
	cons_inglesStr = "Inglés"
	
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
