unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  StringGrid1.Hide;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if(ComboBox1.ItemIndex = 0) then
  begin
    StringGrid1.Show;
    StringGrid1.Cells[0,0] := '¹';
    StringGrid1.Cells[1,0] := 'x';
    StringGrid1.Cells[2,0] := 'y1';
    StringGrid1.Cells[3,0] := 'y2';
    StringGrid1.Cells[4,0] := 'y3';
  end;
  
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, a, b, n, s: real;
  j : integer;

begin
  if(ComboBox1.ItemIndex = 1) then
    Form3.Show
  else if(ComboBox1.ItemIndex = 0) then
    begin
  j := 1;
  a := StrToFloat(Edit1.Text);
  b := StrToFloat(Edit2.Text);
  n := StrToFloat(Edit3.Text);
  s := a / n;
 StringGrid1.Cells[j,0] := FloatToStr(n);
  a := a - s;
  while(a <= b) do
    begin
     a := a + s;
     StringGrid1.Cells[0,j] := IntToStr(j);
     StringGrid1.Cells[1,j] := FloatToStr(a);
     if((a-1) <> 0) then
       StringGrid1.Cells[2,j] := FloatToStr((8*a +4)/(a-1))
     else
       StringGrid1.Cells[2,j] := 'net';
     StringGrid1.Cells[3,j] := FloatToStr(exp(a));
     StringGrid1.Cells[4,j] := FloatToStr(3*(a*a) + 7*a + 3);
     Inc(j);

     end;

       StringGrid1.RowCount := j;
     end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, a, b, n, s: real;
  j : integer;
begin
  j := 1;
  a := StrToFloat(Edit1.Text);
  b := StrToFloat(Edit2.Text);
  n := StrToFloat(Edit3.Text);
  s := a / n;
  a := a - s;
   while(a <= b) do
    begin
     a := a + s;
     StringGrid1.Cells[0,j] := '';
     StringGrid1.Cells[1,j] := '';
     StringGrid1.Cells[2,j] := '';
     StringGrid1.Cells[3,j] := '';
     StringGrid1.Cells[4,j] := '';
     Inc(j);

     end;
end;

end.
