program Proyecto_MasterMind_1_0;

Const
  MAX_INTENTOS=10;
  MAX_LETRAS=4;
  LETRA_MAX='H';
  LETRA_MIN='A';

  Type
    arreglo=array[1..MAX_LETRAS] of char;
    arreglo_booleano=array[1..MAX_LETRAS] of boolean;


  var
    arreglo_pensador, arreglo_adivinador: arreglo;
    intentos,i,j,cont_bn,cont_rg: byte;
    arreglo_bn, arreglo_rg: arreglo_booleano;
    letra: char;
    letras, letras_2: string;
    bueno,regular: boolean;

    begin
      randomize;

      for i:=1 to MAX_LETRAS do
      begin
        letra:=chr(random(ord(LETRA_MAX)-ord(LETRA_MIN)+1)+ord(LETRA_MIN));
        j:=1;
        while (j<i) do
           begin
             if (arreglo_pensador[j]=letra) then
             begin
               letra:=chr(random(ord(LETRA_MAX)-ord(LETRA_MIN)+1)+ord(LETRA_MIN));
               j:=1;
             end else begin
               j:=j+1;
             end; // fin del if

           end; // fin del while
         arreglo_pensador[i]:=letra;
      end; // fin del for

      writeln('Master Mind v1.0');
      writeln('Dispones de ',MAX_INTENTOS,' intentos para adivinar el codigo.');
      writeln('');


      writeln('');

     for intentos:=1 to MAX_INTENTOS do
     begin
       write('Codigo ',intentos,' de ',MAX_INTENTOS,'>>');
       readln(letras);

       for i:=1 to MAX_LETRAS do
       begin
         arreglo_adivinador[i]:=letras[i];   // crear arreglo adivinador
       end;

       cont_bn:=0;
     for i:=1 to MAX_LETRAS do
     begin
       if arreglo_pensador[i]=arreglo_adivinador[i] then
       begin
         bueno:=true;
         arreglo_bn[i]:=bueno;
         cont_bn:=cont_bn+1;
       end else begin
         bueno:=false;
         arreglo_bn[i]:=bueno;
       end; // fin del if
     end;   // fin del for


     for i:=1 to MAX_LETRAS do
     begin
     j:=1;
     while (j<=MAX_LETRAS) do
        begin
        if (arreglo_pensador[i]=arreglo_adivinador[j]) then
        begin
          regular:=true;
          arreglo_rg[j]:=regular;
          j:=j+1;
        end else begin
        j:=j+1;
        end; // fin del if
     end; // fin del while
     end; //fin del for

     for i:=1 to MAX_LETRAS do
     begin
     if arreglo_bn[i]=arreglo_rg[i] then
     begin
     regular:=false;
     arreglo_rg[i]:=regular;
     end; //fin del if
     end; // fin del for

     cont_rg:=0;
     for i:=1 to MAX_LETRAS do
     begin
     if (arreglo_rg[i]=true) then
     begin
     cont_rg:=cont_rg+1;
     end;
     end;

     writeln('Buenos: ',cont_bn,' Regulares: ',cont_rg);

     for i:=1 to MAX_LETRAS do
     begin
     regular:=false;
     arreglo_rg[i]:=regular;
     end;

     if (cont_bn=MAX_LETRAS) then
     begin
     writeln('EXCELENTE!!! Ganaste');
     break;
     end;
     end;  // fin del for max intento

    if (cont_bn<MAX_LETRAS) then
    begin
    write('PERDISTE!!! el codigo era: ');
    for j:=1 to MAX_LETRAS do
    begin
     write(arreglo_pensador[j]);
    end;
    end;

    writeln(' ');
    writeln('Presiona ENTER para salir...');
    readln;

    end.
