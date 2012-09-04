program test;
uses
 crt;
type
 telefone  = record
  FUO :  string;
  mobil : string;
  domashnie : string;
  Email : string;
  day : integer;
  mesex : integer;
  god : integer;
end;
 telFile = file of telefone;

function formRecord: telefone;
var
 a: telefone;
begin
 writeln('Введите ФИО : ');
 readln(a.FUO);
 writeln('Введите Мобильный :');
 readln(a.mobil);
 writeln('Введите Домашний тел. :');
 readln(a.domashnie);
 writeln('Введите E-mail :');
 readln(a.Email);
 writeln('Введите день др');
 readln(a.day);
 writeln('Введите месяц др');
 readln(a.mesex);
 writeln('Введите год др');
 readln(a.god);
 formRecord := a;
end;

procedure showRecord (var a: telefone);
 Begin
  writeln('ФИО: ',a.FUO);
  writeln('Мобильный: ',a.mobil);
  writeln('Домашний тел.: ',a.domashnie);
  writeln('E-mail: ',a.Email);
  writeln('День др: ',a.day);
  writeln('Месяц др: ',a.mesex);
  writeln('Год др: ',a.god);
 end;

procedure readFile (var g: telFile);
 var
 j: telefone;
begin
 while not EoF(g) do
  begin
   read(g,j);
   showRecord(j);
  end;
end;

function openfail  (var g: telFile) : boolean ;
 begin
  {$I-}
  reset(g);
  {$I+}
  if IOResult <> 0 then
   openfail:= false
  else
   openfail:= true;
 end;

 var
 x: boolean;
 z: integer;
 i: telefone;
 f: telFile;
 n: integer;
begin
 clrscr;
 writeln('1-прочитать');
 writeln('2-добавить');
 readln(z);
 assign(f, 'z.db');
 case z of
  1: begin
      x:= openfail(f);
      if x then
       readFile(f)
      else
       writeln('Ошибка');
      end;
  2: begin
     end;
 end;

  {readFile(f);
 close(f);}
 readkey;
 end.
