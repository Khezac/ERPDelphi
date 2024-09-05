object dmCadastro: TdmCadastro
  Height = 480
  Width = 640
  object qryPessoas: TFDQuery
    Connection = dmConexao.ServiceConexao
    SQL.Strings = (
      'select * from pessoas;')
    Left = 56
    Top = 40
    object qryPessoaspes_id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'pes_id'
      Origin = 'pes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPessoaspes_razao: TWideStringField
      FieldName = 'pes_razao'
      Origin = 'pes_razao'
      Size = 100
    end
    object qryPessoaspes_fantasia: TWideStringField
      FieldName = 'pes_fantasia'
      Origin = 'pes_fantasia'
      Size = 100
    end
    object qryPessoaspes_cpf_cnpj: TWideStringField
      FieldName = 'pes_cpf_cnpj'
      Origin = 'pes_cpf_cnpj'
    end
    object qryPessoaspes_telefone: TWideStringField
      FieldName = 'pes_telefone'
      Origin = 'pes_telefone'
      Size = 15
    end
    object qryPessoaspes_rg: TWideStringField
      FieldName = 'pes_rg'
      Origin = 'pes_rg'
    end
    object qryPessoaspes_tipo: TIntegerField
      FieldName = 'pes_tipo'
      Origin = 'pes_tipo'
    end
  end
  object qryEnderecos: TFDQuery
    Connection = dmConexao.ServiceConexao
    SQL.Strings = (
      'select * from enderecos '
      'where end_id = :id;')
    Left = 56
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object qryEnderecosend_id: TIntegerField
      FieldName = 'end_id'
      Origin = 'end_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEnderecosend_pessoa: TIntegerField
      FieldName = 'end_pessoa'
      Origin = 'end_pessoa'
    end
    object qryEnderecosend_cep: TWideStringField
      FieldName = 'end_cep'
      Origin = 'end_cep'
      Size = 30
    end
    object qryEnderecosend_cidade: TWideStringField
      FieldName = 'end_cidade'
      Origin = 'end_cidade'
      Size = 30
    end
    object qryEnderecosend_endereco: TWideStringField
      FieldName = 'end_endereco'
      Origin = 'end_endereco'
      Size = 30
    end
    object qryEnderecosend_bairro: TWideStringField
      FieldName = 'end_bairro'
      Origin = 'end_bairro'
    end
  end
  object qryProduto1: TFDQuery
    Connection = dmConexao.ServiceConexao
    SQL.Strings = (
      'select * from produtos '
      'where prod_id = :id; ')
    Left = 56
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object qryProduto1prod_id: TIntegerField
      FieldName = 'prod_id'
      Origin = 'prod_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProduto1prod_nomecompleto: TWideStringField
      FieldName = 'prod_nomecompleto'
      Origin = 'prod_nomecompleto'
      Size = 100
    end
    object qryProduto1prod_nomepopular: TWideStringField
      FieldName = 'prod_nomepopular'
      Origin = 'prod_nomepopular'
      Size = 100
    end
    object qryProduto1prod_codigobarra: TWideStringField
      FieldName = 'prod_codigobarra'
      Origin = 'prod_codigobarra'
      Size = 200
    end
    object qryProduto1prod_referencia: TWideStringField
      FieldName = 'prod_referencia'
      Origin = 'prod_referencia'
    end
    object qryProduto1prod_grupo: TIntegerField
      FieldName = 'prod_grupo'
      Origin = 'prod_grupo'
    end
    object qryProduto1prod_subgrupo: TIntegerField
      FieldName = 'prod_subgrupo'
      Origin = 'prod_subgrupo'
    end
    object qryProduto1prod_ncm: TWideStringField
      FieldName = 'prod_ncm'
      Origin = 'prod_ncm'
      Size = 50
    end
  end
  object qryProduto2: TFDQuery
    Connection = dmConexao.ServiceConexao
    SQL.Strings = (
      'select * from produtos2  '
      'where prod2_id = :id;')
    Left = 56
    Top = 248
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object qryProduto2prod2_id: TIntegerField
      FieldName = 'prod2_id'
      Origin = 'prod2_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProduto2prod2_prod1fk: TIntegerField
      FieldName = 'prod2_prod1fk'
      Origin = 'prod2_prod1fk'
    end
    object qryProduto2prod2_filial: TIntegerField
      FieldName = 'prod2_filial'
      Origin = 'prod2_filial'
    end
    object qryProduto2prod2_custo: TBCDField
      FieldName = 'prod2_custo'
      Origin = 'prod2_custo'
      currency = True
      Precision = 15
      Size = 2
    end
    object qryProduto2prod2_vendavista: TBCDField
      FieldName = 'prod2_vendavista'
      Origin = 'prod2_vendavista'
      currency = True
      Precision = 15
      Size = 2
    end
    object qryProduto2prod2_vendaprazo: TBCDField
      FieldName = 'prod2_vendaprazo'
      Origin = 'prod2_vendaprazo'
      currency = True
      Precision = 15
      Size = 2
    end
    object qryProduto2prod2_sitributaria: TIntegerField
      FieldName = 'prod2_sitributaria'
      Origin = 'prod2_sitributaria'
    end
    object qryProduto2prod2_estoque: TBCDField
      FieldName = 'prod2_estoque'
      Origin = 'prod2_estoque'
      Precision = 15
      Size = 2
    end
  end
end
