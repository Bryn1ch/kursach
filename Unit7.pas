unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm7.Button1Click(Sender: TObject);
var
  a,b,c,d,x1,x2,x : Real; // Коэффициенты квадратного трёхчлена
begin
a:=strtofloat(edit1.text);
b:=strtofloat(edit2.text);
c:=strtofloat(edit3.text);
d:=sqr(b)-4*a*c;
edit5.text:=FloatToStrF(d, ffGeneral, 3,3);
if d>0 then
  begin
    Label6.Visible:=true;
    Label7.Visible:=true;
    edit6.Visible:=true;
    edit7.Visible:=true;
    x1:=(-b+sqrt(d))/(2*a);
    x2:=(-b-sqrt(d))/(2*a);
    edit6.text:=FloatToStrF(x1, ffGeneral, 3,3);
    edit7.text:=FloatToStrF(x2, ffGeneral, 3,3);
  end
else
  begin
  if d<0 then
    Label8.Visible:=true
  else
    begin
      Label6.Caption:='x=';
      x:=-(b/(2*a));
      edit6.text:=FloatToStrF(x, ffGeneral, 3,3);
      Label6.Visible:=true;
      edit6.Visible:=true;
    end;
  end;
end;


procedure TForm7.Button2Click(Sender: TObject);
begin
Label8.Visible:=false;
Label6.Visible:=false;
Label7.Visible:=false;
edit6.Visible:=false;
edit7.Visible:=false;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';

end;

procedure TForm7.Button3Click(Sender: TObject);
var i : Integer; // Счётчик цикла.
var xc : Integer; // Координата центра графика по оси X.
var yc : Integer; // Координата центра графика по оси Y.
var A : Real; // Коэффициент квадратного трёхчлена при x^2.
var B : Real; // Коэффициент квадратного трёхчлена при x.
var C : Real; // Свободный член квадратного трёхчлена.
var y : Real; // Значение функции y = A * x^2 + B * x + C.
var x : Real; // Значение аргумента функции y = A * x^2 + B * x + C.
begin
// Укажем некоторые значения.
xc := Round(Image1.Width * 0.5);
yc := Round(Image1.Height * 0.5);
x := - Image1.Width * 0.5; // Начальное значение аргумента функции.
A := StrToFloat(Edit1.Text); // Считываем коэффициенты квадратного трёхчлена.
B := StrToFloat(Edit2.Text);
C := StrToFloat(Edit3.Text);

With Image1.Canvas Do
Begin
// Отрисовка координатных осей.
FillRect(ClientRect);
MoveTo(10, yc);
LineTo(Round(Image1.Width - 10), yc);
MoveTo(xc, 10);
LineTo(xc, Round(Image1.Height - 10));

// Построение графика.
Pen.Color := clBlue;
MoveTo(xc + Round(x), yc - Round(A * x * x + B * x + C));
For i := 1 To Image1.Width Do
Begin
x := x + 1;
y := A * x * x + B * x + C;
If (y < Image1.Height * 0.5) And (y > -Image1.Height * 0.5) Then
LineTo(Round(x) + xc, yc - Round(y));
End;
End;
end;


procedure TForm7.FormCreate(Sender: TObject);
begin
Label8.Visible:=false;
Label6.Visible:=false;
Label7.Visible:=false;
edit6.Visible:=false;
edit7.Visible:=false;

end;

procedure TForm7.N1Click(Sender: TObject);
begin
form8.show;
form7.hide;
end;

end.

