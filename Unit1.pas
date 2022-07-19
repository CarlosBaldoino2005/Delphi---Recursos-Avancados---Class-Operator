unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
var A,B,C : TProduto;
begin
  A.valor := 10;
  B.Valor := 30;

  C := a+b;
  showmessage(c.valor.ToString);
end;

procedure TForm1.Button2Click(Sender: TObject);
var a : TProduto;
begin
  a := '3';
  showmessage(a.valor.ToString);
end;

procedure TForm1.Button3Click(Sender: TObject);
var a : TProduto;
begin
  a := '3';
  a := +a;
  showmessage(a.valor.ToString);
end;

procedure TForm1.Button5Click(Sender: TObject);
var a : TProduto;
begin
  a := '11';
  a := -a;
  showmessage(a.valor.ToString);
end;

procedure TForm1.Button6Click(Sender: TObject);
var a : TProduto;
begin
  a := '1';
  Inc(a);
  showmessage(a.valor.ToString);

end;

procedure TForm1.Button7Click(Sender: TObject);
var A,B : TProduto;
begin
  a.Nome := 'A';
  a.Valor := 1;

  b.Nome := 'A';
  b.Valor := 1;

  if a=b then
    showmessage('vdd')
  else
    showmessage('falso');
end;

end.
