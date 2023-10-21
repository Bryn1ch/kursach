unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm9 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var
  num: Integer;
  bin, hex: string;

function IntToBin(num: Integer): string;
var
  bin: string;
begin
  bin := '';
  if num = 0 then
    bin := '0';
  while num > 0 do
  begin
    if (num mod 2) = 0 then
      bin := '0' + bin
    else
      bin := '1' + bin;
    num := num div 2;
  end;
  IntToBin := bin;
end;

begin
  num := StrToInt(Edit2.Text);
  bin := IntToBin(num);
  hex := IntToHex(num);
  Edit3.Text := bin;
  Edit1.Text := hex;
end;



end.
