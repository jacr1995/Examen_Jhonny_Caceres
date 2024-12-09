Funcion men = menu
	Escribir "=========================================="
	Escribir "========== REGISTRO ESTUDIANTES =========="
	Escribir "=========================================="
	Escribir ""
	Escribir "  1. Codigo Estudiante"
	Escribir "  2. Listado Estudiantes"
	Escribir "  0. Salir"
	
FinFuncion

Funcion x = registro(base, estu, cod, nom, nota1, nota2, nota3, asis)
	base(estu, 1) = cod
	base(estu, 2) = nom
	base(estu, 3) = nota1
	base(estu, 4) = nota2
	base(estu, 5) = nota3
	base(estu, 6) = asis
	x = estu + 1
FinFuncion

Funcion info = codigo
	Dimensionar listado (f, 6)
	Repetir
	Escribir "Que desea hacer?"
	Leer dato
	Si dato = 1 Entonces
	Escribir "ingrese codigo del estudiante"
	Leer cod
	Escribir "ingrese nombre del estudiante"
	Leer nom
	Escribir "ingrese nota1 del estudiate"
	Leer nota1
	Escribir "ingrese nota2 del estudiate"
	Leer nota2
	Escribir "ingrese nota3 del estudiate"
	Leer nota3
	Escribir "ingrese total de asistencias del estudiate"
	Leer asis
	f = registro(base, estu, cod, nom, nota1, nota2, nota3, asis)
	Redimensionar listado (f, 6)
	i=info + 1
FinSi
Hasta Que SioNo = N
FinFuncion

Funcion Lista (Listado, f)
	Escribir "Digite el codigo de los estudiantes"
	Leer cod
	ind = 0
	Para i = 1 Hasta estu - 1
		Si cod = Listado(i, 1)Entonces
			ind = i
		FinSi
	FinPara
	si ind = 0 Entonces
		Escribir "Codigo no existe"
	SiNo
		Escribir "Codigo estudiante", Listado(ind, 1)
		Escribir "Nombre estudiante", Listado(ind, 2)
		Escribir "Nota 1 del estudiante", Listado(ind, 3)
		Escribir "Nota 2 del estudiante", Listado(ind, 4)
		Escribir "Nota 3 del estudiante", Listado(ind, 5)
		Escribir "Asistencias del estudiante", Listado(ind, 6)
	FinSi
FinFuncion

Algoritmo Resgistroestudiantes
	terminar = Falso
	Repetir
		op = menu
		i=codigo
	Segun menu Hacer
		0: Escribir "Programa terminado!"
			terminar = no terminar
		1: i = info
		2: Lista (Listado, f)
		FinSegun
	Hasta Que terminar
FinAlgoritmo