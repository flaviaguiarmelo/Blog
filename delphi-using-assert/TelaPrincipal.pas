unit TelaPrincipal;

interface

//{$ASSERTIONS OFF}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, OutroTeste;

type
  TfrmTesteAssert = class(TForm)
    btnTestarAssert2: TButton;
    btnTestarAssert1: TButton;
    btnTestarAssert3: TButton;
    btnTestarAssert4: TButton;
    procedure btnTestarAssert1Click(Sender: TObject);
    procedure btnTestarAssert2Click(Sender: TObject);
    procedure btnTestarAssert3Click(Sender: TObject);
    procedure btnTestarAssert4Click(Sender: TObject);
  private
  public
  end;

var
  frmTesteAssert: TfrmTesteAssert;

implementation

{$R *.dfm}

procedure TfrmTesteAssert.btnTestarAssert1Click(Sender: TObject);
var
  l: Integer;
begin
  l := 10;
  Assert(l = 0);
  Inc(l);
  ShowMessage(l.ToString);
end;

procedure TfrmTesteAssert.btnTestarAssert2Click(Sender: TObject);
var
  l: Integer;
begin
  l := 10;
  Assert(l = 0, 'Número precisa ser igual a 0 (zero), mas foi informado: ' + l.ToString);
  Inc(l);
end;

procedure TfrmTesteAssert.btnTestarAssert3Click(Sender: TObject);
var
  l: Integer;
begin
  l := 10;
//  {$ASSERTIONS OFF}
  Assert(l = 0, 'Número precisa ser igual a 0 (zero), mas foi informado: ' + l.ToString);
//  {$ASSERTIONS ON}
  l := 0;
  Assert(l = 10, 'Número precisa ser igual a 10 (zero), mas foi informado: ' + l.ToString);
end;

procedure TfrmTesteAssert.btnTestarAssert4Click(Sender: TObject);
begin
  OutroTeste.TestaAssert;
end;

end.
