unit DocumentoState.Model;

interface

uses
  Usuario.Model, State.Interfaces, State.Models;

type
  TDocumentoState = class
  private
    FState: IState;
    FUsuarioAtual: TUsuario;
    function GetEstado: string;
  public
    constructor Create(Usuario: TUsuario);
    procedure Publicar;
    property Estado: string read GetEstado;
  end;

implementation

{ TDocumentoState }

constructor TDocumentoState.Create(Usuario: TUsuario);
begin
  FUsuarioAtual := Usuario;
  FUsuarioAtual.Funcao := TFuncaoUsuario.fuAdministrador;

  FState := TRascunho.Create;
end;

function TDocumentoState.GetEstado: string;
begin
  Result := FState.AsString;
end;

procedure TDocumentoState.Publicar;
begin
  FState := FState.Publicar;
end;

end.
