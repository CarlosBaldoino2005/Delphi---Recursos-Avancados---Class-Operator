unit Unit2;

interface
type
TProduto = record
  Valor : Integer;
  Nome : String;

  class operator Add(a,b : TProduto) : TProduto;
  class operator Implicit (value : String) : TProduto;
  class operator Positive (a : TProduto) : TProduto;
  class operator Negative (a : TProduto) : TProduto;
  class operator Inc (a : TProduto) : TProduto;
  class operator Equal (a,b : TProduto) : Boolean;
end;

implementation

uses
  System.SysUtils;

{ TProduto }

class operator TProduto.Add(a, b: TProduto): TProduto;
begin
  result.Valor := a.Valor + b.Valor;
end;

class operator TProduto.Equal(a, b: TProduto): Boolean;
begin
  result := (a.Nome = b.Nome) and (a.Valor=b.Valor);
end;

class operator TProduto.Implicit(value: String): TProduto;
begin
  Result.Valor := StrToInt(Value);
end;

class operator TProduto.Inc(a: TProduto): TProduto;
begin
  Result.Valor := a.Valor+10;
end;

class operator TProduto.Negative(a: TProduto): TProduto;
begin
  Result.Valor := a.Valor-5;
end;

class operator TProduto.Positive(a: TProduto): TProduto;
begin
  Result.Valor := a.Valor+5;
end;

end.
