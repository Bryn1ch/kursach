unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a,b,c,V:real;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
begin
a:=strtofloat(edit1.text);
b:=strtofloat(edit2.text);
c:=strtofloat(edit3.text);
V:=(4/3)*PI*a*b*c;
edit4.text:=FloatToStrF(V, ffGeneral, 3,3);
end;

procedure TForm4.N1Click(Sender: TObject);
begin
form8.show;
form4.hide;
end;

end.
