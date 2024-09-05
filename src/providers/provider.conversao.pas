unit provider.conversao;

interface

type
  TPCPessoas = (tpCliente, tpFuncionario, tpFornecedor);

  function pessoasToInt(t: TPCPessoas): integer;

implementation

function pessoasToInt(t : TPCPessoas) :integer;
begin
  case t of
    tpCliente: Result := 1;
    tpFornecedor: Result := 2;
    tpFuncionario: Result := 3;
  end;
end;

end.
