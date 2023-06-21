unit State.Models;

interface

uses
  State.Interfaces;

type
  TRascunho = class(TInterfacedObject, IState)
  private
    FUsuario: IUsuario;
  public
    function AsString: string;
    function Publicar: IState;
    class function New(Usuario: IUsuario): IState;
  end;

  TModeracao = class(TInterfacedObject, IState)
  private
    FUsuario: IUsuario;
  public
    function AsString: string;
    function Publicar: IState;
    class function New(Usuario: IUsuario): IState;
  end;

  TPublicado = class(TInterfacedObject, IState)
  private
    FUsuario: IUsuario;
  public
    function AsString: string;
    function Publicar: IState;
    class function New(Usuario: IUsuario): IState;
  end;

implementation

{ TRascunho }

function TRascunho.AsString: string;
begin
  Result := 'Rascunho';
end;

class function TRascunho.New(Usuario: IUsuario): IState;
begin
  Result := Self.Create;
  (Result as TRascunho).FUsuario := Usuario;
end;

function TRascunho.Publicar: IState;
var
  lNewState: IState;
begin
  lNewState := TModeracao.Create;
  Result := lNewState;
end;

{ TPublicado }

function TPublicado.AsString: string;
begin
  Result := 'Publicado';
end;

class function TPublicado.New(Usuario: IUsuario): IState;
begin
  Result := Self.Create;
  (Result as TPublicado).FUsuario := Usuario;
end;

function TPublicado.Publicar: IState;
begin
  Result := Self;
end;

{ TModeracao }

function TModeracao.AsString: string;
begin
  Result := 'Moderação';
end;

class function TModeracao.New(Usuario: IUsuario): IState;
begin
  Result := Self.Create;
  (Result as TModeracao).FUsuario := Usuario;
end;

function TModeracao.Publicar: IState;
var
  lNewState: IState;
begin
  lNewState := TPublicado.Create;
  Result := lNewState;
end;

end.
