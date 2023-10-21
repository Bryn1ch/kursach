unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  l,h,r,so,sbp,spp,v:real;


implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
begin
l:=strtofloat(edit1.text);
h:=strtofloat(edit2.text);
r:=strtofloat(edit3.text);
so:=pi*sqr(r);
sbp:=pi*r*l;
spp:=pi*r*(l+r);
v:=(1/3)*pi*sqr(r)*h;
edit4.text:=FloatToStrF(so, ffGeneral, 3,3);
edit5.text:=FloatToStrF(sbp, ffGeneral, 3,3);
edit6.text:=FloatToStrF(spp, ffGeneral, 3,3);
edit7.text:=FloatToStrF(v, ffGeneral, 3,3);
end;

procedure TForm6.N1Click(Sender: TObject);
begin
form8.show;
form6.hide;
end;

end.
