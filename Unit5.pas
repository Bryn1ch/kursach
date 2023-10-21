unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  r,h,so,sb,sp,v:real;


implementation

{$R *.dfm}

uses Unit1;

procedure TForm5.Button1Click(Sender: TObject);
begin
r:=strtofloat(edit1.text);
h:=strtofloat(edit2.text);
so:=pi*sqr(r);
sb:=2*pi*r*h;
sp:=2*pi*r*(r+h);
v:=pi*sqr(r)*h;
edit3.text:=FloatToStrF(so, ffGeneral, 3,3);
edit4.text:=FloatToStrF(sb, ffGeneral, 3,3);
edit5.text:=FloatToStrF(sp, ffGeneral, 3,3);
edit6.text:=FloatToStrF(v, ffGeneral, 3,3);
end;

procedure TForm5.N1Click(Sender: TObject);
begin
form8.show;
form5.hide;
end;

end.
