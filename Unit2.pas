unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
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
  Form2: TForm2;
  z,r,c:real;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
r:=strtofloat(edit1.text);
z:=pi*sqr(r);
c:=2*pi*r;
  edit2.text:=FloatToStrF(z, ffGeneral, 3,3);
  edit3.text:=FloatToStrF(c, ffGeneral, 3,3);
end;



procedure TForm2.N1Click(Sender: TObject);
begin
form8.show;
form2.hide;
end;

end.
