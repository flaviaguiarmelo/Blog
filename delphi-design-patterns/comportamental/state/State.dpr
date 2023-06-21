program State;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  Documento.Model in 'Documento.Model.pas',
  Usuario.Model in 'Usuario.Model.pas',
  State.Interfaces in 'State.Interfaces.pas',
  State.Models in 'State.Models.pas',
  DocumentoState.Model in 'DocumentoState.Model.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
