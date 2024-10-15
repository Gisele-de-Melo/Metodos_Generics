//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure Trocar<T>(var A, B: T);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Trocar<T>(var A, B: T);
var
  Temp: T;
begin
  //troca o conteúdo do parâmetro A para o B e do B para o A
  Temp := A;
  A := B;
  B := Temp;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  X, Y: Integer;

begin
  X := 10;
  Y := 20;
  Memo1.Clear;
  Memo1.Lines.Add('Iniciando com');
  Memo1.Lines.Add('X = '+IntToStr(X));
  Memo1.Lines.Add('Y = '+IntToStr(Y));

  Memo1.Lines.Add('Trocando para');
  Trocar<Integer>(X, Y);
  Memo1.Lines.Add('X = '+ IntToStr(X));
  Memo1.Lines.Add('Y = '+ IntToStr(Y)); // Saída: X = 20, Y = 10

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Nome1, Nome2: String;

begin

  Nome1 := 'Blog';
  Nome2 := 'codedelphi';

  Memo2.Clear;
  Memo2.Lines.Add('Iniciando com');
  Memo2.Lines.Add('X = '+Nome1);
  Memo2.Lines.Add('Y = '+Nome2);

  Memo2.Lines.Add('Trocando para');
  Trocar<String>(Nome1, Nome2);
  Memo2.Lines.Add('X = '+ Nome1);
  Memo2.Lines.Add('Y = '+ Nome2); // Saída: Nome1 = codedelphi, Nome2 = Blog

end;

end.
