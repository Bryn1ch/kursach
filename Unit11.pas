unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Timer1: TTimer;
    Label3: TLabel;
    Bevel1: TBevel;
    Button11: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit1;
var
Counter: Integer = 0;



procedure TForm11.Button11Click(Sender: TObject);
begin
form8.show;
form11.hide;
end;

procedure TForm11.Timer1Timer(Sender: TObject);
begin
  Timer1.Interval := 400; // установить интервал таймера в 500 мс
  Timer1.Enabled := True; // включить т
  Inc(Counter);
  if Counter = 1 then
    button1.Visible:=true;
  if Counter = 2 then
  begin
    button2.Visible:=true;
    button1.Caption:='2';
  end;
  if Counter = 3 then
  begin
    button5.Visible:=true;
    button1.Caption:='2+';
  end;
  if Counter = 4 then
  begin
    button8.Visible:=true;
    button1.Caption:='2+6';
  end;
  if Counter = 5 then
  begin
    button9.Visible:=true;
  button1.Caption:='=';
  end;
  if Counter = 6 then
  begin
    button10.Visible:=true;
  button1.Caption:='8';
  end;
  if Counter = 7 then
  begin
    button7.Visible:=true;
    button1.Caption:='8-';
  end;
  if Counter = 8 then
  begin
    button4.Visible:=true;
    button1.Caption:='8-5';
  end;
  if Counter = 9 then
  begin
    button3.Visible:=true;
    button1.Caption:='=';
  end;
  if Counter = 10 then
  begin
    button6.Visible:=true;
    button1.Caption:='3';
  end;
  if Counter = 11 then
    button11.Visible:=true;

end;

end.
