Algoritmo GATO 
	Escribir "*** Bienvenido ***"
	Escribir "Elige quien empieza"
	Escribir "[1] para Tu [2] para Computadora"
	Leer empieza
	
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
	
	
	Escribir "Selecciona una casilla"
	Escribir ""
	
	
	ganador = 0
	
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
		
		Si posicion1=="O" y posicion2 =="O" y posicion3 =="O" Entonces
			ganador = ganador + 1
			ganadorreal = "Jugador"
		Fin Si
		
		
		Escribir " ", posicion[1], " | ", posicion[2], " | ", posicion[3], " "
		Escribir "-------------"
		Escribir " ", posicion[4], " | ", posicion[5], " | ", posicion[6], " "
		Escribir "-------------"
		Escribir " ", posicion[7], " | ", posicion[8], " | ", posicion[9], " "
		
		Si posicion1=="X" y posicion2 =="X" y posicion3 =="X" Entonces
			ganador = ganador + 1
			ganadorreal = "Computadora"
		Fin Si
		
		Escribir "Tu turno"
		Leer turno
		
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
	
	Escribir "El ganador es ", ganadorreal
	
	
	
FinAlgoritmo
