unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, math,shellapi,
  Vcl.Menus;

type
  TForm8 = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  kod : char;
  x, y, z : real;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit10, Unit9;

procedure TForm8.BitBtn10Click(Sender: TObject);
begin
x:=strtofloat(edit1.Text);
     x:=(x*pi)/180;
     edit1.Clear;
     z:=cos(x)/sin(x);
     edit1.Text:=floattostr(z)
end;

procedure TForm8.BitBtn11Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'4'
end;

procedure TForm8.BitBtn12Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'5'
end;

procedure TForm8.BitBtn13Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'6'
end;

procedure TForm8.BitBtn14Click(Sender: TObject);
begin
if edit1.Text<>'' then x:=strtofloat(edit1.text);
kod := '*';
edit1.Clear;
end;

procedure TForm8.BitBtn15Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'2'
end;

procedure TForm8.BitBtn16Click(Sender: TObject);
begin
if edit1.Text<>'' then x:=strtofloat(edit1.text);
kod := '/';
edit1.Clear;
end;

procedure TForm8.BitBtn17Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'3'
end;

procedure TForm8.BitBtn18Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'1'
end;

procedure TForm8.BitBtn19Click(Sender: TObject);
begin
x:=strtofloat(edit1.Text);
     x:=(x*pi)/180;
     edit1.Clear;
     z:=sin(x)/cos(x);
     edit1.Text:=floattostr(z)
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
x:=strtofloat(edit1.Text);
     x:=(x*pi)/180;
     edit1.Clear;
     z:=cos(x);
     edit1.Text:=floattostr(z)
end;

procedure TForm8.BitBtn20Click(Sender: TObject);
begin
 if edit1.Text<>'' then  y:=strtofloat(edit1.text);
    case kod of
    '+': z:=x+y;
    '-': z:=x-y;
    '*': z:=x*y;
    '/': z:=x/y;
    '^': z:=exp(y*ln(x));
    end ;
edit1.Text:=floattostr(z)
end;

procedure TForm8.BitBtn21Click(Sender: TObject);
begin
if edit1.Text<>'' then x:=strtofloat(edit1.text);
kod := '-';
edit1.Clear;
end;

procedure TForm8.BitBtn22Click(Sender: TObject);
begin
if edit1.Text<>'' then x:=strtofloat(edit1.text);
kod := '+';
edit1.Clear;
end;

procedure TForm8.BitBtn23Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'0'
end;

procedure TForm8.BitBtn24Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+','
end;

procedure TForm8.BitBtn25Click(Sender: TObject);
begin
 x:=strtofloat(edit1.Text);
     x:=(x*pi)/180;
     edit1.Clear;
     z:=sin(x);
     edit1.Text:=floattostr(z)
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
x:= strtofloat(edit1.text);
kod := '^';
edit1.Clear;
end;

procedure TForm8.BitBtn3Click(Sender: TObject);
begin
edit1.clear
end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
halt;
end;

procedure TForm8.BitBtn5Click(Sender: TObject);
begin
 x:=strtofloat(edit1.Text);
     x:=(x*pi)/180;
     edit1.Clear;
     z:=sin(x);
     edit1.Text:=floattostr(z)
end;

procedure TForm8.BitBtn6Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'7'
end;

procedure TForm8.BitBtn7Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'8'
end;

procedure TForm8.BitBtn8Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'9'
end;

procedure TForm8.BitBtn9Click(Sender: TObject);
begin
 x:=strtofloat( edit1.Text);
     edit1.clear;
     z:=sqrt(x);
     edit1.Text:=floattostr(z)
end;



procedure TForm8.N11Click(Sender: TObject);
begin
halt;
end;

procedure TForm8.N12Click(Sender: TObject);
begin
ShellExecute(0,PChar('open'),PChar('Spravka.chm'),nil,nil,SW_SHOW);
end;

procedure TForm8.N1Click(Sender: TObject);
begin
form10.show;
form8.hide;
end;

procedure TForm8.N4Click(Sender: TObject);
begin
form2.show;
form8.hide;
end;

procedure TForm8.N5Click(Sender: TObject);
begin
form3.show;
form8.hide;
end;

procedure TForm8.N6Click(Sender: TObject);
begin
form8.hide;
form4.show;
end;

procedure TForm8.N7Click(Sender: TObject);
begin
form5.show;
form8.hide;
end;

procedure TForm8.N8Click(Sender: TObject);
begin
form6.show;
form8.hide;
end;

procedure TForm8.N9Click(Sender: TObject);
begin
form7.show;
form8.hide;
end;

end.
