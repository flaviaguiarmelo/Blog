unit Usuario.Model;

interface

uses
  State.Interfaces;

type
  TFuncaoUsuario = (fuLeitor, fuComentarista, fuModerador, fuAdministrador);

  TUsuario = class(TInterfacedObject, IUsuario)
  private
    FFuncao: TFuncaoUsuario;
  public
    property Funcao: TFuncaoUsuario read FFuncao write FFuncao;
  end;

implementation

end.
