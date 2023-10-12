program PoyectoDeLas21Cartas;

const
  MAX_TARJETAS_GRUPO= 7;
  MAX_GRUPOS= 3;
  MAX_TARJETAS= MAX_TARJETAS_GRUPO*MAX_GRUPOS;
  MIN_TARJETA_VALOR= 'A';
  MAX_TARJETA_VALOR= chr(MAX_TARJETAS+ord('A')-1); // "U"

type
  tarjetas= MIN_TARJETA_VALOR..MAX_TARJETA_VALOR;
  grupo= array[1..MAX_TARJETAS_GRUPO] of tarjetas;
  mazo= array[1..MAX_TARJETAS] of tarjetas;

  var
    grupo1, grupo2,grupo3: grupo;
    grupo4, grupo5,grupo6: grupo;
    grupo7, grupo8,grupo9: grupo;
    grupo10, grupo11,grupo12: grupo;
    deck: mazo;
    i,j,m,n,p,q,a,aa,b,bb,c,cc,d,dd,e,ee,f,ff,g,gg,h,hh,r,rr:byte;
    letra,opcion: char;
    indice: integer;
    validar_opcion: boolean;
begin

  writeln('Adivinare la letra que mires en tan solo 3 intentos!!');
  writeln(' ');

  randomize;


  for i:=1 to MAX_TARJETAS do
  begin
    indice:= random(ord(MAX_TARJETA_VALOR)-ord(MIN_TARJETA_VALOR)+1)+ord(MIN_TARJETA_VALOR);
    letra:=chr(indice);
    j:=1;
    while (j<i) do
    begin
      if deck[j]=letra then
      begin
         j:=1;
         indice:= random(ord(MAX_TARJETA_VALOR)-ord(MIN_TARJETA_VALOR)+1)+ord(MIN_TARJETA_VALOR);
         letra:=chr(indice);
      end else
      begin
      j:=j+1;
      end; // fin del if

    end;  // fin del while

    deck[i]:=letra;

  end;  // fin del for



   for m:=1 to MAX_TARJETAS_GRUPO do
   begin
   grupo1[m]:=deck[m];

   end;


   for n:=1 to MAX_TARJETAS_GRUPO do
   begin
   grupo2[n]:=deck[n+MAX_TARJETAS_GRUPO];

   end;


   for p:=1 to MAX_TARJETAS_GRUPO do
   begin
   grupo3[p]:=deck[p+(MAX_TARJETAS_GRUPO*(MAX_GRUPOS-1))];

   end;


   for q:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo1[q],']',' ','[',grupo2[q],']',' ','[',grupo3[q],']');
   end;

   writeln(' ');
   writeln('Los grupos estan enumerados de izquierda a derecha del 1 al 3');
   write('Elige una letra y indica en que grupo esta la letra [1,2,3]: ');
   readln(opcion);

   validar_opcion:=false;

   while not validar_opcion do
   begin
   if (opcion='1') or (opcion='2') or (opcion='3') then
   begin
      validar_opcion:=true;
   end else begin
   writeln('ERROR, ingreso un valor invalido, intente de nuevo...');
   write('Elige una letra y indica en que grupo esta la letra [1,2,3]: ');
   readln(opcion);

   end;

   end;

   case opcion of
      '1':
        begin


        for a:=1 to MAX_TARJETAS_GRUPO do
        begin
        case a of
           1:
            begin
           grupo4[a]:=grupo2[1];
           grupo5[a]:=grupo2[2];
           grupo6[a]:=grupo2[3];
            end;

           2:
            begin
           grupo4[a]:=grupo2[4];
           grupo5[a]:=grupo2[5];
           grupo6[a]:=grupo2[6];
            end;

           3:
            begin
           grupo4[a]:=grupo2[7];
           grupo5[a]:=grupo1[1];
           grupo6[a]:=grupo1[2];
            end;

           4:
            begin
           grupo4[a]:=grupo1[3];
           grupo5[a]:=grupo1[4];
           grupo6[a]:=grupo1[5];
            end;

           5:
            begin
           grupo4[a]:=grupo1[6];
           grupo5[a]:=grupo1[7];
           grupo6[a]:=grupo3[1];
            end;

           6:
            begin
           grupo4[a]:=grupo3[2];
           grupo5[a]:=grupo3[3];
           grupo6[a]:=grupo3[4];
            end;

           7:
            begin
           grupo4[a]:=grupo3[5];
           grupo5[a]:=grupo3[6];
           grupo6[a]:=grupo3[7];
            end;

        end;


        end;

   for aa:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo4[aa],']',' ','[',grupo5[aa],']',' ','[',grupo6[aa],']');
   end;

        end;

       '2':
        begin
        for b:=1 to MAX_TARJETAS_GRUPO do
        begin
        case b of
           1:
            begin
           grupo4[b]:=grupo3[1];
           grupo5[b]:=grupo3[2];
           grupo6[b]:=grupo3[3];
            end;

           2:
            begin
           grupo4[b]:=grupo3[4];
           grupo5[b]:=grupo3[5];
           grupo6[b]:=grupo3[6];
            end;

           3:
            begin
           grupo4[b]:=grupo3[7];
           grupo5[b]:=grupo2[1];
           grupo6[b]:=grupo2[2];
            end;

           4:
            begin
           grupo4[b]:=grupo2[3];
           grupo5[b]:=grupo2[4];
           grupo6[b]:=grupo2[5];
            end;

           5:
            begin
           grupo4[b]:=grupo2[6];
           grupo5[b]:=grupo2[7];
           grupo6[b]:=grupo1[1];
            end;

           6:
            begin
           grupo4[b]:=grupo1[2];
           grupo5[b]:=grupo1[3];
           grupo6[b]:=grupo1[4];
            end;

           7:
            begin
           grupo4[b]:=grupo1[5];
           grupo5[b]:=grupo1[6];
           grupo6[b]:=grupo1[7];
            end;

        end;


      end;

   for bb:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo4[bb],']',' ','[',grupo5[bb],']',' ','[',grupo6[bb],']');
   end;
        end;

       '3':
        begin

        for c:=1 to MAX_TARJETAS_GRUPO do
        begin
        case c of
           1:
            begin
           grupo4[c]:=grupo2[1];
           grupo5[c]:=grupo2[2];
           grupo6[c]:=grupo2[3];
            end;

           2:
            begin
           grupo4[c]:=grupo2[4];
           grupo5[c]:=grupo2[5];
           grupo6[c]:=grupo2[6];
            end;

           3:
            begin
           grupo4[c]:=grupo2[7];
           grupo5[c]:=grupo3[1];
           grupo6[c]:=grupo3[2];
            end;

           4:
            begin
           grupo4[c]:=grupo3[3];
           grupo5[c]:=grupo3[4];
           grupo6[c]:=grupo3[5];
            end;

           5:
            begin
           grupo4[c]:=grupo3[6];
           grupo5[c]:=grupo3[7];
           grupo6[c]:=grupo1[1];
            end;

           6:
            begin
           grupo4[c]:=grupo1[2];
           grupo5[c]:=grupo1[3];
           grupo6[c]:=grupo1[4];
            end;

           7:
            begin
           grupo4[c]:=grupo1[5];
           grupo5[c]:=grupo1[6];
           grupo6[c]:=grupo1[7];
            end;

        end;


        end;

   for cc:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo4[cc],']',' ','[',grupo5[cc],']',' ','[',grupo6[cc],']');
   end;


        end;

   end; // fin del case

 writeln(' ');
   write('Elige una letra y indica en que grupo esta la letra [1,2,3]: ');
   readln(opcion);

   validar_opcion:=false;

   while not validar_opcion do
   begin
   if (opcion='1') or (opcion='2') or (opcion='3') then
   begin
      validar_opcion:=true;
   end else begin
   writeln('ERROR, ingreso un valor invalido, intente de nuevo...');
   write('Elige una letra y indica en que grupo esta la letra [1,2,3]: ');
   readln(opcion);
   end;

   end; // fin del while

   case opcion of
      '1':
        begin


        for d:=1 to MAX_TARJETAS_GRUPO do
        begin
        case d of
           1:
            begin
           grupo7[d]:=grupo5[1];
           grupo8[d]:=grupo5[2];
           grupo9[d]:=grupo5[3];
            end;

           2:
            begin
           grupo7[d]:=grupo5[4];
           grupo8[d]:=grupo5[5];
           grupo9[d]:=grupo5[6];
            end;

           3:
            begin
           grupo7[d]:=grupo5[7];
           grupo8[d]:=grupo4[1];
           grupo9[d]:=grupo4[2];
            end;

           4:
            begin
           grupo7[d]:=grupo4[3];
           grupo8[d]:=grupo4[4];
           grupo9[d]:=grupo4[5];
            end;

           5:
            begin
           grupo7[d]:=grupo4[6];
           grupo8[d]:=grupo4[7];
           grupo9[d]:=grupo6[1];
            end;

           6:
            begin
           grupo7[d]:=grupo6[2];
           grupo8[d]:=grupo6[3];
           grupo9[d]:=grupo6[4];
            end;

           7:
            begin
           grupo7[d]:=grupo6[5];
           grupo8[d]:=grupo6[6];
           grupo9[d]:=grupo6[7];
            end;

        end;


        end;

   for dd:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo7[dd],']',' ','[',grupo8[dd],']',' ','[',grupo9[dd],']');
   end;

        end;

       '2':
        begin
        for e:=1 to MAX_TARJETAS_GRUPO do
        begin
        case e of
           1:
            begin
           grupo7[e]:=grupo6[1];
           grupo8[e]:=grupo6[2];
           grupo9[e]:=grupo6[3];
            end;

           2:
            begin
           grupo7[e]:=grupo6[4];
           grupo8[e]:=grupo6[5];
           grupo9[e]:=grupo6[6];
            end;

           3:
            begin
           grupo7[e]:=grupo6[7];
           grupo8[e]:=grupo5[1];
           grupo9[e]:=grupo5[2];
            end;

           4:
            begin
           grupo7[e]:=grupo5[3];
           grupo8[e]:=grupo5[4];
           grupo9[e]:=grupo5[5];
            end;

           5:
            begin
           grupo7[e]:=grupo5[6];
           grupo8[e]:=grupo5[7];
           grupo9[e]:=grupo4[1];
            end;

           6:
            begin
           grupo7[e]:=grupo4[2];
           grupo8[e]:=grupo4[3];
           grupo9[e]:=grupo4[4];
            end;

           7:
            begin
           grupo7[e]:=grupo4[5];
           grupo8[e]:=grupo4[6];
           grupo9[e]:=grupo4[7];
            end;

        end;


      end;

   for ee:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo7[ee],']',' ','[',grupo8[ee],']',' ','[',grupo9[ee],']');
   end;
        end;

       '3':
        begin

        for f:=1 to MAX_TARJETAS_GRUPO do
        begin
        case f of
           1:
            begin
           grupo7[f]:=grupo5[1];
           grupo8[f]:=grupo5[2];
           grupo9[f]:=grupo5[3];
            end;

           2:
            begin
           grupo7[f]:=grupo5[4];
           grupo8[f]:=grupo5[5];
           grupo9[f]:=grupo5[6];
            end;

           3:
            begin
           grupo7[f]:=grupo5[7];
           grupo8[f]:=grupo6[1];
           grupo9[f]:=grupo6[2];
            end;

           4:
            begin
           grupo7[f]:=grupo6[3];
           grupo8[f]:=grupo6[4];
           grupo9[f]:=grupo6[5];
            end;

           5:
            begin
           grupo7[f]:=grupo6[6];
           grupo8[f]:=grupo6[7];
           grupo9[f]:=grupo4[1];
            end;

           6:
            begin
           grupo7[f]:=grupo4[2];
           grupo8[f]:=grupo4[3];
           grupo9[f]:=grupo4[4];
            end;

           7:
            begin
           grupo7[f]:=grupo4[5];
           grupo8[f]:=grupo4[6];
           grupo9[f]:=grupo4[7];
            end;

        end;


        end;

   for ff:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo7[ff],']',' ','[',grupo8[ff],']',' ','[',grupo9[ff],']');
   end;


        end;

   end; // fin del case

   writeln(' ');
   write('Elige una letra y indica en que grupo esta la letra [1,2,3]: ');
   readln(opcion);

   validar_opcion:=false;

   while not validar_opcion do
   begin
   if (opcion='1') or (opcion='2') or (opcion='3') then
   begin
      validar_opcion:=true;
   end else begin
   writeln('ERROR, ingreso un valor invalido, intente de nuevo...');
   write('Elige una letra y indica en que grupo esta la letra [1,2,3]: ');
   readln(opcion);
   end;

   end; // fin del while

   case opcion of
      '1':
        begin


        for g:=1 to MAX_TARJETAS_GRUPO do
        begin
        case g of
           1:
            begin
           grupo10[g]:=grupo8[1];
           grupo11[g]:=grupo8[2];
           grupo12[g]:=grupo8[3];
            end;

           2:
            begin
           grupo10[g]:=grupo8[4];
           grupo11[g]:=grupo8[5];
           grupo12[g]:=grupo8[6];
            end;

           3:
            begin
           grupo10[g]:=grupo8[7];
           grupo11[g]:=grupo7[1];
           grupo12[g]:=grupo7[2];
            end;

           4:
            begin
           grupo10[g]:=grupo7[3];
           grupo11[g]:=grupo7[4];
           grupo12[g]:=grupo7[5];
            end;

           5:
            begin
           grupo10[g]:=grupo7[6];
           grupo11[g]:=grupo7[7];
           grupo12[g]:=grupo9[1];
            end;

           6:
            begin
           grupo10[g]:=grupo9[2];
           grupo11[g]:=grupo9[3];
           grupo12[g]:=grupo9[4];
            end;

           7:
            begin
           grupo10[g]:=grupo9[5];
           grupo11[g]:=grupo9[6];
           grupo12[g]:=grupo9[7];
            end;

        end;


        end;

   for gg:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo10[gg],']',' ','[',grupo11[gg],']',' ','[',grupo12[gg],']');
   end;

        end;

       '2':
        begin
        for h:=1 to MAX_TARJETAS_GRUPO do
        begin
        case h of
           1:
            begin
           grupo10[h]:=grupo9[1];
           grupo11[h]:=grupo9[2];
           grupo12[h]:=grupo9[3];
            end;

           2:
            begin
           grupo10[h]:=grupo9[4];
           grupo11[h]:=grupo9[5];
           grupo12[h]:=grupo9[6];
            end;

           3:
            begin
           grupo10[h]:=grupo9[7];
           grupo11[h]:=grupo8[1];
           grupo12[h]:=grupo8[2];
            end;

           4:
            begin
           grupo10[h]:=grupo8[3];
           grupo11[h]:=grupo8[4];
           grupo12[h]:=grupo8[5];
            end;

           5:
            begin
           grupo10[h]:=grupo8[6];
           grupo11[h]:=grupo8[7];
           grupo12[h]:=grupo7[1];
            end;

           6:
            begin
           grupo10[h]:=grupo7[2];
           grupo11[h]:=grupo7[3];
           grupo12[h]:=grupo7[4];
            end;

           7:
            begin
           grupo10[h]:=grupo7[5];
           grupo11[h]:=grupo7[6];
           grupo12[h]:=grupo7[7];
            end;

        end;


      end;

   for hh:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo10[hh],']',' ','[',grupo11[hh],']',' ','[',grupo12[hh],']');
   end;
        end;

       '3':
        begin

        for r:=1 to MAX_TARJETAS_GRUPO do
        begin
        case r of
           1:
            begin
           grupo10[r]:=grupo8[1];
           grupo11[r]:=grupo8[2];
           grupo12[r]:=grupo8[3];
            end;

           2:
            begin
           grupo10[r]:=grupo8[4];
           grupo11[r]:=grupo8[5];
           grupo12[r]:=grupo8[6];
            end;

           3:
            begin
           grupo10[r]:=grupo8[7];
           grupo11[r]:=grupo9[1];
           grupo12[r]:=grupo9[2];
            end;

           4:
            begin
           grupo10[r]:=grupo9[3];
           grupo11[r]:=grupo9[4];
           grupo12[r]:=grupo9[5];
            end;

           5:
            begin
           grupo10[r]:=grupo9[6];
           grupo11[r]:=grupo9[7];
           grupo12[r]:=grupo7[1];
            end;

           6:
            begin
           grupo10[r]:=grupo7[2];
           grupo11[r]:=grupo7[3];
           grupo12[r]:=grupo7[4];
            end;

           7:
            begin
           grupo10[r]:=grupo7[5];
           grupo11[r]:=grupo7[6];
           grupo12[r]:=grupo7[7];
            end;

        end;


        end;

   for rr:=1 to MAX_TARJETAS_GRUPO do
   begin
   writeln('[',grupo10[rr],']',' ','[',grupo11[rr],']',' ','[',grupo12[rr],']');
   end;


        end;

   end; // fin del case

   writeln(' ');
   writeln('Obiamente elegiste la ', grupo11[4],'!!');
   writeln('Presiona ENTER para salir...');

  readln;
end.

