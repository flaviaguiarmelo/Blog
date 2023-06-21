unit Principal;

interface

uses
  Documento.Model, DocumentoState.Model,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Usuario.Model;

type
  TfrmPrincipal = class(TForm)
    btnPublicarDocumento: TButton;
    Label1: TLabel;
    edtEstadoDocumento: TEdit;
    btnPublicarDocumentoState: TButton;
    Label2: TLabel;
    edtEstadoDocumentoState: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPublicarDocumentoClick(Sender: TObject);
    procedure btnPublicarDocumentoStateClick(Sender: TObject);
  private
    FDocumento: TDocumento;
    FDocumentoState: TDocumentoState;
    FUsuarioAtual: TUsuario;
    procedure PreencherEstadoDocumento;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnPublicarDocumentoClick(Sender: TObject);
begin
  FDocumento.Publicar;
  PreencherEstadoDocumento;
end;

procedure TfrmPrincipal.btnPublicarDocumentoStateClick(Sender: TObject);
begin
  FDocumentoState.Publicar;
  PreencherEstadoDocumento;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FUsuarioAtual := TUsuario.Create;

  FDocumento := TDocumento.Create(FUsuarioAtual);
  FDocumentoState := TDocumentoState.Create(FUsuarioAtual);

  PreencherEstadoDocumento;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  FUsuarioAtual.Free;
  FDocumento.Free;

  FDocumentoState.Free;
end;

procedure TfrmPrincipal.PreencherEstadoDocumento;
begin
  Edit1.Text := FDocumentoState.Estado;
  edtEstadoDocumento.Text := FDocumento.Estado.AsString;
end;

end.
