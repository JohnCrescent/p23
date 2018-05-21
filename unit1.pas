unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var cislo:integer;
function madelitela(var cisslo:integer):boolean;
var i:integer;
begin
  madelitela:=false;
  for i:=2 to (cisslo-1) do if cisslo mod i=0 then madelitela:=true;
end;

begin
  cislo:=strTOint(edit1.text);
  if madelitela(cislo)=true then showmessage('Číslo '+intTOstr(cislo)+' nie je prvočíslo')
     else  showmessage('Číslo '+intTOstr(cislo)+' je prvočíslo');
end;

end.

