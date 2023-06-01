program ProceduresEFuncoes;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure OlaMundo;
begin
  Writeln('Olá Mundo!');
end;

// Exemplo com Result
function SomaValores(Valor1: Integer; Valor2: Integer): Integer;
begin
  Result := Valor1 + Valor2;
end;

// Exemplo com o nome da função
function MultiplicaValores(Valor1: Integer; Valor2: Integer): Integer;
begin
  MultiplicaValores := Valor1 * Valor2;
end;

var
  X: Integer;
  Y: Integer;

begin
  try
    // Chama o procedimento
    OlaMundo;
    Readln;
    // Chama as funções
    X := SomaValores(23, 15);
    Writeln('Soma 23 + 15: ' + X.ToString);

    Y := MultiplicaValores(3, 15);
    Writeln('Multiplica 3 * 15: ' + Y.ToString);

    Y := MultiplicaValores(X, 2);
    Writeln('Multiplica ' + X.ToString + ' * 2: ' + Y.ToString);

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
