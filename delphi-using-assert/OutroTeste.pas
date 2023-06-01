unit OutroTeste;

interface

//{$ASSERTIONS OFF}

uses
  Dialogs;

procedure TestaAssert;

implementation

procedure TestaAssert;
var
  x: Integer;
begin
  x := 15;
  Assert(x = 10);
  ShowMessage('Passou do assert');
end;

end.

