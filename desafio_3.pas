Program desafio_3 ;
uses crt;
var n, x, i, cont, y,  maiorprimo:integer;
 primo: array [1..10000] of integer;
 teste, teste2: boolean;
  
Begin

writeln('Digite um n�mero natural');
read(n);
writeln;

	for x := 1 to n do
	begin
		cont:=0;
		y:=y+1;
  	for i:=1 to x do
  	begin
  		if x mod i=0
    	then cont:=cont+1;
  	end;
  
   	if (cont=2) then
   	maiorprimo:= maiorprimo+x;
   	if (cont=2) or (cont=0) then
   	primo[y]:=x;
   	
	end;
	
y:=10000;
repeat

	y:=y-1;
	
	maiorprimo:=maiorprimo - primo[y]; 
	cont:=0;
			
  	for i:=1 to maiorprimo do
  	begin
  		
  		if maiorprimo mod i=0
			then cont:=cont+1;
			
  	end;
  		
  if (cont=2) then
   	teste:=true
	else
		teste:=false;
  if (maiorprimo<=n)then
   		teste2:=true
  else
   		teste2:=false
   	
		
until (teste=true) and (teste2=true);

writeln('o maior n�mero primo abaixo de ',n,' que � obtido atrav�s da soma consecutiva de n�meros primos � o ',maiorprimo,'.'
);
writeln;
writeln('Pressione [enter] para continuar');
readkey;
	
	

End.