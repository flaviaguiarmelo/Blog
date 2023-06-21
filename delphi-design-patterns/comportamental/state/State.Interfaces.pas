unit State.Interfaces;

interface

type
  IUsuario = interface
    ['{4C4C19DD-8F3B-4601-82B8-4130D4C0A87F}']
  end;

  IState = interface
    ['{8134807D-CB69-4797-8673-E88629943AFB}']
    function AsString: string;
    function Publicar: IState;
  end;

implementation

end.
