unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit5: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;


implementation

{$R *.dfm}

uses Unit1;


procedure TForm10.Button1Click(Sender: TObject);
var
  a,  c1, a1, c2,a3,hex11,hex22,HH,jj3,jj: integer;
  a11,b,b1,a2,a4,a5,a6,hex1,hex2,bb,bb2,jj1,jj2,Str, Part1, Part2,str2:string;
begin
  Str := edit6.text;
  edit2.text := Copy(Str, 1, 1);
  edit5.text := Copy(Str, 2, 1);
  Str2 := edit7.text;
  edit3.text := Copy(Str2, 1, 4);
  edit4.text := Copy(Str2, 4 + 1, 4);
  a :=strtoint( Edit1.Text);
  if (a = 0) then
  begin
    b :=Edit2.Text;
    b1:=edit5.text;
    if (b = '') and (b1='') then
    begin
      bb := Edit3.Text;
      bb2 := Edit4.Text;
      if (bb2 = '') and (bb = '') then
      begin
      label4.Visible:=true;
      end
      else
      begin
        bb:=edit3.Text;
        if bb = '0001' then
          begin
          jj := 1;
          jj1:= '1';
        end
        else if bb = '0010' then
        begin
          jj := 2;
          jj1:= '2';
        end
        else if bb = '0011' then
          begin
          jj := 3;
          jj1:= '3';
        end
        else if bb = '0100' then
          begin
          jj := 4;
          jj1:= '4';
        end
        else if bb = '0101' then
          begin
          jj := 5;
          jj1:= '5';
        end
        else if bb = '0110' then
          begin
          jj := 6;
          jj1:= '6';
        end
        else if bb = '0111' then
          begin
          jj := 7;
          jj1:= '7';
        end
        else if bb = '1000' then
          begin
          jj := 8;
          jj1:= '8';
        end
        else if bb = '1001' then
          begin
          jj := 9;
          jj1:= '9';
        end
        else if bb = '1010' then
          begin
          jj := 10;
          jj1:= 'A';
        end
        else if bb = '1011' then
          begin
          jj := 11;
          jj1:= 'B';
        end
        else if bb = '1100' then
          begin
          jj := 12;
          jj1:= 'C';
        end
        else if bb = '1101' then
          begin
          jj := 13;
          jj1:= 'D';
        end
        else if bb = '1110' then
          begin
          jj := 14;
          jj1:= 'E';
        end
        else if bb = '1111' then
        begin
        jj := 15;
          jj1:= 'F';
        end;

        bb2:=edit4.Text;
        if bb2 = '0001' then
        begin
        jj3 := 1;
        jj2:= '1';
        end
        else if bb2 = '0010' then
        begin
          jj3 := 2;
          jj2:= '2';
        end
        else if bb2 = '0011' then
          begin
          jj3 := 3;
          jj2:= '3';
        end
        else if bb2 = '0100' then
          begin
          jj3 := 4;
          jj2:= '4';
        end
        else if bb2 = '0101' then
          begin
          jj3 := 5;
          jj2:= '5';
        end
        else if bb2 = '0110' then
          begin
          jj3 := 6;
          jj2:= '6';
        end
        else if bb2 = '0111' then
          begin
          jj3 := 7;
          jj2:= '7';
        end
        else if bb2 = '1000' then
          begin
          jj3 := 8;
          jj2:= '8';
        end
        else if bb2 = '1001' then
          begin
          jj3 := 9;
          jj2:= '9';
        end
        else if bb2 = '1010' then
          begin
          jj3 := 10;
          jj2:= 'A';
        end
        else if bb2 = '1011' then
          begin
          jj3 := 11;
          jj2:= 'B';
        end
        else if bb2 = '1100' then
          begin
          jj3 := 12;
          jj2:= 'C';
        end
        else if bb2 = '1101' then
          begin
          jj3 := 13;
          jj2:= 'D';
        end
        else if bb2 = '1110' then
          begin
          jj3 := 14;
          jj2:= 'E';
        end
        else if bb2 = '1111' then
          begin
          jj3 := 15;
          jj2:= 'F';
        end;
      edit5.text:=jj2;
      edit2.text:=jj1;
      edit6.text:=jj1+jj2;
      HH:=jj*16+jj3;
      edit1.text:=inttostr(hh);
      end;
    end
    else
    begin
    hex1:=edit2.Text;
    hex2:=edit5.Text;
    if hex1 = '1' then
      hex11 := 1
    else if hex1 = '2' then
      hex11 := 2
    else if hex1 = '3' then
      hex11 := 3
    else if hex1 = '4' then
      hex11 := 4
    else if hex1 = '5' then
      hex11 := 5
    else if hex1 = '6' then
      hex11 := 6
    else if hex1 = '7' then
      hex11 := 7
    else if hex1 = '8' then
      hex11 := 8
    else if hex1 = '9' then
      hex11 := 9
    else if hex1 = 'A' then
      hex11 := 10
    else if hex1 = 'B' then
      hex11 := 11
    else if hex1 = 'C' then
      hex11 := 12
    else if hex1 = 'D' then
      hex11 := 13
    else if hex1 = 'E' then
      hex11 := 14
    else if hex1 = 'F' then
      hex11 := 15;
    if hex2 = '1' then
      hex22 := 1
    else if hex2 = '2' then
      hex22 := 2
    else if hex2 = '3' then
      hex22 := 3
    else if hex2 = '4' then
      hex22 := 4
    else if hex2 = '5' then
      hex22 := 5
    else if hex2 = '6' then
      hex22 := 6
    else if hex2 = '7' then
      hex22 := 7
    else if hex2 = '8' then
      hex22 := 8
    else if hex2 = '9' then
      hex22 := 9
    else if hex2 = 'A' then
      hex22 := 10
    else if hex2 = 'B' then
      hex22 := 11
    else if hex2 = 'C' then
      hex22 := 12
    else if hex2 = 'D' then
      hex22 := 13
    else if hex2 = 'E' then
      hex22 := 14
    else if hex2 = 'F' then
      hex22 := 15;
    HH:=hex11*16+hex22;
    edit1.text:=inttostr(HH);
    case hex11 of
          0: a6 := '0000';
          1: a6 := '0001';
          2: a6 := '0010';
          3: a6 := '0011';
          4: a6 := '0100';
          5: a6 := '0101';
          6: a6 := '0110';
          7: a6 := '0111';
          8: a6 := '1000';
          9: a6 := '1001';
          10: a6 := '1010';
          11: a6 := '1011';
          12: a6 := '1100';
          13: a6 := '1101';
          14: a6 := '1110';
          15: a6 := '1111';
          end;
          case hex22 of
          0: a5 := '0000';
          1: a5 := '0001';
          2: a5 := '0010';
          3: a5 := '0011';
          4: a5 := '0100';
          5: a5 := '0101';
          6: a5 := '0110';
          7: a5 := '0111';
          8: a5:= '1000';
          9: a5 := '1001';
          10: a5 := '1010';
          11: a5 := '1011';
          12: a5 := '1100';
          13: a5 := '1101';
          14: a5 := '1110';
          15: a5 := '1111';
          end;
    edit3.text:=a6;
    edit4.text:=a5;
    edit7.text:=a6+a5;
    end;
  end
  else
  begin
  if a>=16 then
  begin
    a1 := a div 16;
    if a>=16 then
      begin
        a3:= a mod 16;
        if a3=0 then
        begin
          a4:='0';
          a5:='0000';
        end;
        if True then
        begin
          case a3 of
          1: a4 := '1';
          2: a4 := '2';
          3: a4 := '3';
          4: a4 := '4';
          5: a4 := '5';
          6: a4 := '6';
          7: a4 := '7';
          8: a4 := '8';
          9: a4 := '9';
          10: a4 := 'A';
          11: a4 := 'B';
          12: a4 := 'C';
          13: a4 := 'D';
          14: a4 := 'E';
          15: a4 := 'F';
          end;
          case a3 of
          0: a6 := '0000';
          1: a6 := '0001';
          2: a6 := '0010';
          3: a6 := '0011';
          4: a6 := '0100';
          5: a6 := '0101';
          6: a6 := '0110';
          7: a6 := '0111';
          8: a6 := '1000';
          9: a6 := '1001';
          10: a6 := '1010';
          11: a6 := '1011';
          12: a6 := '1100';
          13: a6 := '1101';
          14: a6 := '1110';
          15: a6 := '1111';
          end;

      end;

      end;



    begin
      case a1 of
        1: a2 := '1';
        2: a2 := '2';
        3: a2 := '3';
        4: a2 := '4';
        5: a2 := '5';
        6: a2 := '6';
        7: a2 := '7';
        8: a2 := '8';
        9: a2 := '9';
        10: a2 := 'A';
        11: a2 := 'B';
        12: a2 := 'C';
        13: a2 := 'D';
        14: a2 := 'E';
        15: a2 := 'F';
      end;
      case a1 of
        0: a5 := '0000';
        1: a5 := '0001';
        2: a5 := '0010';
        3: a5 := '0011';
        4: a5 := '0100';
        5: a5 := '0101';
        6: a5 := '0110';
        7: a5 := '0111';
        8: a5 := '1000';
        9: a5 := '1001';
        10: a5 := '1010';
        11: a5 := '1011';
        12: a5 := '1100';
        13: a5 := '1101';
        14: a5 := '1110';
        15: a5 := '1111';
      end;

      edit5.text:=a4;
      edit2.text:=a2;
      edit3.text:=a5;
      edit4.text:=a6;
      edit6.text:=a2+a4;
      edit7.text:=a5+a6;
    end;
  end
    else
    begin
      case a of

        1: a2 := '1';
        2: a2 := '2';
        3: a2:= '3';
        4: a2:= '4';
        5: a2 := '5';
        6: a2 := '6';
        7: a2 := '7';
        8: a2 := '8';
        9: a2 := '9';
        10: a2 := 'A';
        11: a2 := 'B';
        12: a2 := 'C';
        13: a2 := 'D';
        14: a2 := 'E';
        15: a2 := 'F';
    end;
    case a of
          0: a6 := '0000';
          1: a6 := '0001';
          2: a6 := '0010';
          3: a6:= '0011';
          4: a6:= '0100';
          5: a6 := '0101';
          6: a6 := '0110';
          7: a6 := '0111';
          8: a6 := '1000';
          9: a6 := '1001';
          10: a6 := '1010';
          11: a6 := '1011';
          12: a6 := '1100';
          13: a6 := '1101';
          14: a6 := '1110';
          15: a6 := '1111';
    end;

    edit3.text:=a6;
    edit2.text:=a2;
    edit6.text:=a2;
    edit7.text:=a6;
  end;
end;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin

label4.Visible:=false;
edit1.text:='0';
edit2.text:='';
edit3.text:='';
edit4.text:='';
edit5.text:='';
edit6.text:='';
edit7.text:='';
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
edit7.Visible:=true;
end;



procedure TForm10.N1Click(Sender: TObject);
begin
form8.show;
form10.hide;
end;

end.
