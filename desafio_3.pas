Program desafio_3 ;
uses crt;
var n, x, i, cont, y,  maiorprimo:integer;
 primo: array [1..10000] of integer;
 teste, teste2: boolean;
  
Begin
writeln('Esse programa recebe um número e retorna o maior número primo abaixo desse número que é obtido através da soma consecutiva de números primos'); 
writeln;
writeln('Pressione [enter] para continuar');
readkey;	
writeln('Digite um número natural');
read(n);
writeln;

if n < 0 then
begin

	writeln('Valor inválido, por favor, digite um número natural');
	writeln;
	writeln('Pressione [enter] para continuar');
	readkey;
	 
end
else

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
  		
  		if maiorprimo mod i=0 then
			 cont:=cont+1;
			
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

writeln('O maior número primo abaixo de ',n,' que é obtido através da soma consecutiva de números primos é o ',maiorprimo,'.'
);
writeln;
writeln('Pressione [enter] para continuar');
readkey;
	
End.