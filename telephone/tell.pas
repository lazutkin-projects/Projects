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
 writeln('������ ��� : ');
 readln(a.FUO);
 writeln('������ ������� :');
 readln(a.mobil);
 writeln('������ ����譨� ⥫. :');
 readln(a.domashnie);
 writeln('������ E-mail :');
 readln(a.Email);
 writeln('������ ���� ��');
 readln(a.day);
 writeln('������ ����� ��');
 readln(a.mesex);
 writeln('������ ��� ��');
 readln(a.god);
 formRecord := a;
end;

procedure showRecord (var a: telefone);
 Begin
  writeln('���: ',a.FUO);
  writeln('�������: ',a.mobil);
  writeln('����譨� ⥫.: ',a.domashnie);
  writeln('E-mail: ',a.Email);
  writeln('���� ��: ',a.day);
  writeln('����� ��: ',a.mesex);
  writeln('��� ��: ',a.god);
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
 writeln('1-������');
 writeln('2-��������');
 readln(z);
 assign(f, 'z.db');
 case z of
  1: begin
      x:= openfail(f);
      if x then
       readFile(f)
      else
       writeln('�訡��');
      end;
  2: begin
     end;
 end;

  {readFile(f);
 close(f);}
 readkey;
 end.
