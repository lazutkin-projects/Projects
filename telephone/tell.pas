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

var
 i: telefone;
 f: telFile;
 n: integer;
begin
 clrscr;

 {i:= formRecord;
 showRecord(i)};
 assign(f,'z.db');
 {$I-}
 Reset(f);
 {$I+}
 {if IOResult <> 0 then
  rewrite(f)
 else
   begin
     n := fileSize(f);
     seek(f, n);
   end;
 write(f,i);}
  readFile(f);
 close(f);
 readkey;
//����� �����������
 end.