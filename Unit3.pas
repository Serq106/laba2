unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;
{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
var
  i, a, b, n, s, x1, x2,x3: real;
  j : integer;
begin
   a := StrToFloat(Form1.Edit1.Text);
  b := StrToFloat(Form1.Edit2.Text);
  n := StrToFloat(Form1.Edit3.Text);
  s := a / n;
  j := 1;
  Memo1.Lines.Add('  �  ' + '  x  '+'  y1  '+'  y2  '+'  y3  ');
   while(a <= b) do
    begin
     a := a + s;

     x2 := (exp(a));
     x3 := (3*(a*a) + 7*a + 3);
     if((a-1) <> 0) then
        begin
         x1 := ((8*a +4)/(a-1));
         Memo1.Lines.Add('   ' + IntToStr(j) + '   ' + FloatToStrf(x1,fffixed,5,2) + '   ' + FloatToStrf(x2,fffixed,5,2) + '   ' + FloatToStrf(x3,fffixed,5,2));
       end
     else
       Memo1.Lines.Add('   ' + IntToStr(j) + '   ' + 'net' + '   ' + FloatToStrf(x2,fffixed,5,2) + '   ' + FloatToStrf(x3,fffixed,5,2));
     Inc(j);

     end;
  Memo1.Lines.Add('1');

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Show;
end;

end.
