Program desafio_1 ;
uses crt;

var p: string;
		point, i: integer;
		
Begin; 
	clrscr;
	point:=0;
	i := 0;
	
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
	
	writeln('A pontução de "',p,'" é ',point);
	
	writeln;
	writeln('pessione [enter] para prosseguir');
	readkey;
	


	
	 
		
	             
	
	

  
End.