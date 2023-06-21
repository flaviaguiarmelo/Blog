unit Documento.Model;

interface

uses
  Usuario.Model, State.Interfaces, State.Models;

type
  TEstadoDocumento = (sdRascunho, sdModeracao, sdPublicado);
  TEstadoDocumento_Helper = record Helper for TEstadoDocumento
  public
    function AsString: string;
  end;

  TDocumento = class
  private
    FEstado: TEstadoDocumento;
    FUsuarioAtual: TUsuario;
  public
    constructor Create(Usuario: TUsuario);
    procedure Publicar;
    property Estado: TEstadoDocumento read FEstado;
  end;

implementation

{ TDocumento }

constructor TDocumento.Create(Usuario: TUsuario);
begin
  FUsuarioAtual := Usuario;
  FUsuarioAtual.Funcao := TFuncaoUsuario.fuAdministrador;
  FEstado := sdRascunho;
end;

procedure TDocumento.Publicar;
begin
  case FEstado of
    sdRascunho: FEstado := TEstadoDocumento.sdModeracao;
    sdModeracao:
      begin
        if FUsuarioAtual.Funcao = TFuncaoUsuario.fuAdministrador then
          FEstado := TEstadoDocumento.sdPublicado
      end;
    sdPublicado:; // Não faz nada ;
  end;
end;

{ TEstadoDocumento_Helper }

function TEstadoDocumento_Helper.AsString: string;
begin
  case Self of
    sdRascunho: Result := 'Rascunho';
    sdModeracao: Result := 'Moderação';
    sdPublicado: Result := 'Publicado';
  end;
end;

end.
