program TesteAssert;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {frmTesteAssert},
  OutroTeste in 'OutroTeste.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTesteAssert, frmTesteAssert);
  Application.Run;
end.


