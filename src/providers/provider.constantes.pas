unit provider.constantes;

interface
  procedure get_Pessoas(iTIPO: integer);
  procedure get_Produtos;
  procedure get_ProdutoDetalhe(prodId: integer);

var
  iCOD_FILIAL: integer;
  sRAZAO_FILIAL: string;

implementation

uses
  service.cadastro;

procedure get_Pessoas(iTIPO: integer);
begin
  dmCadastro.qryPessoas.Close;
  dmCadastro.qryPessoas.SQL.Clear;
  dmCadastro.qryPessoas.SQL.ADD('select * from pessoas where pes_tipo = :tPessoa ');
  dmCadastro.qryPessoas.SQL.ADD('order by pes_id desc');
  dmCadastro.qryPessoas.ParamByName('tPessoa').AsInteger := iTIPO;
  dmCadastro.qryPessoas.Open();
end;

procedure get_Produtos();
begin
  dmCadastro.qryProduto1.Close;
  dmCadastro.qryProduto1.SQL.Clear;
  dmCadastro.qryProduto1.SQL.ADD('select * from produtos');
  dmCadastro.qryProduto1.Open();
end;

procedure get_ProdutoDetalhe(prodId: integer);
begin
  dmCadastro.qryProduto2.Close;
  dmCadastro.qryProduto2.SQL.Clear;
  dmCadastro.qryProduto2.SQL.ADD('select * from produtos2 where prod2_prod1FK = :prodId ');
  dmCadastro.qryProduto2.ParamByName('prodId').AsInteger := prodId;
  dmCadastro.qryProduto2.Open();
end;

end.

