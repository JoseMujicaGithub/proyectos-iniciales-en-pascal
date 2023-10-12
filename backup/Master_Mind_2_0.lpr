program Master_Mind_2_0;

const
  MAX_LETRAS=4;
  MAX_LETRA='H';
  MIN_LETRA='A';
  MAX_INTENTOS=10;

type
  arreglo=array[1..MAX_LETRAS] of char;
  arreglo_numerico=array[1..MAX_LETRAS] of byte;
  arreglo_buleano=array[1..MAX_LETRAS] of boolean;

var
  arreglo_pensador: arreglo;
  arreglo_adivinador:arreglo;
  letras:arreglo;
  arreglo_bn,arreglo_rg:arreglo_buleano;
  letra, letra1,letra2,letra3,letra4: char;
  frase:string;
  intento,i,j,cont_bn,cont_rg:byte;

begin
  write('Master Mind V2.0');
  writeln('');

  randomize;

  for i:=1 to MAX_LETRAS do
  begin
  letra:=chr(random(ord(MAX_LETRA)-ord(MIN_LETRA))+ord(MIN_LETRA));
  arreglo_pensador[i]:=letra;
  write(arreglo_pensador[i]);
  end;

  writeln('');  //borrar

  for intento:=1 to MAX_INTENTOS do
  begin
  writeln('Intento: ',intento);
  writeln('Ingrese ',MAX_LETRAS,' letras mayusculas de la A a la H: ');
  readln(frase);

  for i:=1 to MAX_LETRAS do
  begin
  arreglo_adivinador[i]:=frase[i];
  end; // crear arreglo adivinador

  for i:=1 to MAX_LETRAS do
  begin
  arreglo_bn[i]:=false;
  arreglo_rg[i]:=false;
  letras[i]:='a';
  //indice[i]:=0;
  end;  // resetear arrelo_bn ,arreglo_rg y letras

  cont_bn:=0;    // resetear cont_bn
  cont_rg:=0;    // resetear cont_rg

  for i:=1 to MAX_LETRAS do
  begin
  if arreglo_pensador[i]=arreglo_adivinador[i] then
  begin
  arreglo_bn[i]:=true;
  cont_bn:=cont_bn+1;
  letras[i]:=arreglo_pensador[i];
  end;
  end;

  for i:=1 to MAX_LETRAS do
  begin
  case i of
      1:
        begin
           letra1:=letras[i];
        end;
      2:
        begin
           letra2:=letras[i];
        end;

      3:
        begin
          letra3:=letras[i];
        end;

      4:
        begin
           letra4:=letras[i];
        end;
  end;
  end;

 for i:=1 to MAX_LETRAS do
 begin
  for j:=1 to MAX_LETRAS do
   begin
    if (arreglo_pensador[i]<>letra1) and (arreglo_pensador[i]<>letra2) and (arreglo_pensador[i]<>letra3) and (arreglo_pensador[i]<>letra4) and (arreglo_pensador[i]=arreglo_adivinador[j]) then
      begin
      arreglo_rg[i]:=true;
      end;
   end;
 end;

  for i:=1 to MAX_LETRAS do
  begin
  if arreglo_bn[i]=arreglo_rg[i] then
  arreglo_rg[i]:=false;
  end; // corregir cuando arrglo_rg=arreglo_bn

  cont_rg:=0;
  for i:=1 to MAX_LETRAS do
  begin
  if arreglo_rg[i]=true then
  begin
  cont_rg:=cont_rg+1;
  end; // fin del if
  end; // fin del for: cont_rg

  writeln('Buenos: ',cont_bn,' Regulares: ',cont_rg);


  if cont_bn=MAX_LETRAS then
  begin
  writeln('');
  writeln('Felicitaciones GANASTE!! adivinaste correctamente el codigo.');
  break;
  end; // fin del if: gano!!

  if (intento=MAX_INTENTOS) and (cont_bn<MAX_LETRAS) then
  begin
  writeln('');
  writeln('PERDISTE!! el codigo era: ',arreglo_pensador);
  end; // fin del if: perdio...

  end; // fin del for: intento


  writeln('');
  writeln('Presione ENTER para salir...');
  readln;
end.

