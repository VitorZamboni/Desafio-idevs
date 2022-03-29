Program desafio_1 ;
uses crt;

var p: string;
		point, i: integer;
		
Begin; 
	clrscr;
	point:=0;
	i := 0;
	
	writeln('Esse algoritmo calcula a pontuação de uma palavra de acordo com a pontuação abaixo:');
	writeln('A,  E, I, O, U, L, N, R, S, T : 1 ponto.');
	writeln('D, G : 2 pontos.');
	writeln('B, C, M, P : 3 pontos.');
	writeln('F, H, V, W, Y : 4 pontos.');
	writeln('K : 5 pontos.');
	writeln('J, X : 8 pontos.');
	writeln('Q, Z: 10 pontos.');
	writeln;
	
	writeln('Digite uma palavra ');
	readln(p);
	
	repeat
		i:= i + 1;  
  	case p[i] of
  	'A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u', 'L', 'l', 'N', 'n','R', 'r', 'S', 's', 'T', 't' : point := point+1; 
	  'D', 'd', 'G', 'g' : point := point+2; 
	  'B', 'b', 'C', 'c', 'M', 'm', 'P', 'p' : point := point+3; 
	  'F', 'f', 'H', 'h', 'V', 'v', 'W', 'w', 'Y', 'y'  : point := point+4;
	  'K', 'k'  : point := point+5;
	  'J', 'j', 'X', 'x' : point := point+8;
		'Q', 'q', 'Z', 'z' : point := point+10; 
		end;
	until i = length (p);	
	
	writeln('A pontuação de "',p,'" é ',point);
	writeln;
	
	writeln('Pressione [enter] para prosseguir');
	readkey;
	

End.