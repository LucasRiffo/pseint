Algoritmo GATO 
	Escribir "*** Bienvenido ***"
	Escribir "Elige quien empieza"
	
	Repetir
		Escribir "[1] para Tu [2] para Computadora [3] para Salir"
		Leer empieza
		Si empieza <> 1 o empieza <> 2 o empieza <> 3
			Escribir ""
		FinSi
	Hasta Que empieza == 1 o empieza == 2 o empieza == 3
	
	
	Dimension posicion[9]
	posicion[1] = "1"
	posicion[2] = "2"
	posicion[3] = "3"
	posicion[4] = "4"
	posicion[5] = "5"
	posicion[6] = "6"
	posicion[7] = "7"
	posicion[8] = "8"
	posicion[9] = "9"
	
	Si empieza <> 3
	Escribir "Selecciona una casilla"
	Escribir ""
	Fin si
	ganador = 0
	si empieza ==2 o empieza == 1
	Mientras ganador == 0 Hacer
		
		Si empieza == 2 Entonces
			turnopc=azar(9)
			Si turnopc==0 Entonces
				turnopc=5
			FinSi
			Mientras posicion(turnopc) == "X" o posicion(turnopc) == "O" Hacer
				turnopc=azar(9)
				Si turnopc==0 Entonces
					turnopc=5
				FinSi
			Fin Mientras
		Fin Si
		
		Si turnopc==1 Entonces
			posicion[1]="X"
		Fin Si
		Si turnopc==2 Entonces
			posicion[2]="X"
		Fin Si
		Si turnopc==3 Entonces
			posicion[3]="X"
		Fin Si
		Si turnopc==4 Entonces
			posicion[4]="X"
		Fin Si
		Si turnopc==5 Entonces
			posicion[5]="X"
		Fin Si
		Si turnopc==6 Entonces
			posicion[6]="X"
		Fin Si
		Si turnopc==7 Entonces
			posicion[7]="X"
		Fin Si
		Si turnopc==8 Entonces
			posicion[8]="X"
		Fin Si
		Si turnopc==9 Entonces
			posicion[9]="X"
		Fin Si
		
		Escribir "Computadora juega: ", turnopc
		
		// INTERFAZ (TABLERO)
		
		//JUGADAS GANADORAS (JUGADOR)
		Si posicion[1]=="O" y posicion[2] =="O" y posicion[3] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		Si posicion[4]=="O" y posicion[5] =="O" y posicion[6] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		Si posicion[7]=="O" y posicion[8] =="O" y posicion[9] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		Si posicion[1]=="O" y posicion[5] =="O" y posicion[9] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		Si posicion[7]=="O" y posicion[5] =="O" y posicion[3] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		Si posicion[1]=="O" y posicion[4] =="O" y posicion[7] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		Si posicion[2]=="O" y posicion[5] =="O" y posicion[8] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		Si posicion[3]=="O" y posicion[6] =="O" y posicion[9] =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		//JUGADAS GANADORAS (JUGADOR) TERMINAL
		Escribir " ", posicion[1], " | ", posicion[2], " | ", posicion[3], " "
		Escribir "-------------"
		Escribir " ", posicion[4], " | ", posicion[5], " | ", posicion[6], " "
		Escribir "-------------"
		Escribir " ", posicion[7], " | ", posicion[8], " | ", posicion[9], " "
		
		//JUGADAS GANADORAS PC
		Si posicion[1]=="X" y posicion[2] =="X" y posicion[3] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Si posicion[4]=="X" y posicion[5] =="X" y posicion[6] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Si posicion[7]=="X" y posicion[8] =="X" y posicion[9] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Si posicion[1]=="X" y posicion[5] =="X" y posicion[9] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Si posicion[7]=="X" y posicion[5] =="X" y posicion[3] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Si posicion[1]=="X" y posicion[4] =="X" y posicion[7] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Si posicion[2]=="X" y posicion[5] =="X" y posicion[8] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Si posicion[3]=="X" y posicion[6] =="X" y posicion[9] =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		//TERMINE AQUI...
		
		Si ganador == 0 Entonces
			Escribir "Tu turno"
			Leer turno
		SiNo
			Escribir ""
			Escribir "*************"
			Escribir ""
		Fin Si
		
		Si ganador == 0 Entonces
			Mientras posicion(turno) == "X" o posicion(turno) == "O" Hacer
				Escribir "Jugada invalida, Intenta denuevo."
				Leer turno
			Fin Mientras
		Fin Si
		
		Si turno==1 Entonces
			posicion[1]="O"
		Fin Si
		Si turno==2 Entonces
			posicion[2]="O"
		Fin Si
		Si turno==3 Entonces
			posicion[3]="O"
		Fin Si
		Si turno==4 Entonces
			posicion[4]="O"
		Fin Si
		Si turno==5 Entonces
			posicion[5]="O"
		Fin Si
		Si turno==6 Entonces
			posicion[6]="O"
		Fin Si
		Si turno==7 Entonces
			posicion[7]="O"
		Fin Si
		Si turno==8 Entonces
			posicion[8]="O"
		Fin Si
		Si turno==9 Entonces
			posicion[9]="O"
		Fin Si
		
		Si empieza== 1 Entonces
			turnopc=azar(9)
			Si turnopc==0 Entonces
				turnopc=5
			FinSi
			Mientras posicion(turnopc) == "X" o posicion(turnopc) == "O" Hacer
				turnopc=azar(9)
				Si turnopc==0 Entonces
					turnopc=5
				FinSi
			Fin Mientras
		Fin Si
		
	Fin Mientras
	Fin Si
	Si empieza <> 3
	Escribir "El ganador es ", ganadorreal
	Fin si
FinAlgoritmo