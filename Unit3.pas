unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a,b,c:real;
  V,S,L:real;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.Button1Click(Sender: TObject);
begin
a:=strtofloat(edit1.text);
b:=strtofloat(edit2.text);
c:=strtofloat(edit3.text);
V:=a*b*c;
S:=2*(a*b+a*c+b*c);
L:=4*(a+b+c);
edit4.text:=FloatToStrF(V, ffGeneral, 3,3);
edit5.text:=FloatToStrF(S, ffGeneral, 3,3);
edit6.text:=FloatToStrF(L, ffGeneral, 3,3);
end;

procedure TForm3.N1Click(Sender: TObject);
begin
form8.show;
form3.hide;
end;

end.
