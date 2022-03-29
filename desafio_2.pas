Program desafio_2 ;
uses crt;
var n, i, i2, resto, resto2, cont, cont2, x: integer;

Begin
	cont:=0;
	cont2:=0;
	
	writeln('Esse algoritmo mostra todos os números n menores que 10.000, onde n e n + 1 possuem o mesmo número de divisores.');
	writeln;
	
	writeln('Pressione [enter] para prosseguir');
	readkey;
	writeln; 

		for n:=1 to 10000 do
		begin
				for i:= 1 to (n + 1) do
				begin
		
					resto:= n mod i;
					if(resto=0)then
					cont:= cont + 1;
					
					resto2:= (n+1) mod i;   
					if (resto2=0)then         
					cont2:=cont2 + 1;

          if (cont=cont2) then
					writeln(n);
				end;
			
		end;
	
	writeln;	
	writeln('Pressione [enter] para prosseguir');
	readkey;
	writeln;
			
		
		
		

End.