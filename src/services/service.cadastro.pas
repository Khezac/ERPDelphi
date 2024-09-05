unit service.cadastro;

interface

uses
  System.SysUtils, System.Classes, service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmCadastro = class(TDataModule)
    qryPessoas: TFDQuery;
    qryPessoaspes_id: TIntegerField;
    qryPessoaspes_razao: TWideStringField;
    qryPessoaspes_fantasia: TWideStringField;
    qryPessoaspes_cpf_cnpj: TWideStringField;
    qryPessoaspes_telefone: TWideStringField;
    qryPessoaspes_rg: TWideStringField;
    qryPessoaspes_tipo: TIntegerField;
    qryEnderecos: TFDQuery;
    qryEnderecosend_id: TIntegerField;
    qryEnderecosend_pessoa: TIntegerField;
    qryEnderecosend_cep: TWideStringField;
    qryEnderecosend_cidade: TWideStringField;
    qryEnderecosend_endereco: TWideStringField;
    qryEnderecosend_bairro: TWideStringField;
    qryProduto1: TFDQuery;
    qryProduto2: TFDQuery;
    qryProduto1prod_id: TIntegerField;
    qryProduto1prod_nomecompleto: TWideStringField;
    qryProduto1prod_nomepopular: TWideStringField;
    qryProduto1prod_codigobarra: TWideStringField;
    qryProduto1prod_referencia: TWideStringField;
    qryProduto1prod_grupo: TIntegerField;
    qryProduto1prod_subgrupo: TIntegerField;
    qryProduto2prod2_id: TIntegerField;
    qryProduto2prod2_prod1fk: TIntegerField;
    qryProduto2prod2_filial: TIntegerField;
    qryProduto2prod2_custo: TBCDField;
    qryProduto2prod2_vendavista: TBCDField;
    qryProduto2prod2_vendaprazo: TBCDField;
    qryProduto2prod2_sitributaria: TIntegerField;
    qryProduto1prod_ncm: TWideStringField;
    qryProduto2prod2_estoque: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadastro: TdmCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
