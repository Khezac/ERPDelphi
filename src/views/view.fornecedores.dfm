inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitLeft = 2
  ExplicitTop = 2
  TextHeight = 15
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlIcon: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlInferior: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlLinhaFundo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited cpListas: TCardPanel
      ActiveCard = card_cadastro
      StyleElements = [seFont, seClient, seBorder]
      inherited card_pesquisa: TCard
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlPesquisa: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblPesquisa: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited searchBox: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited dbgDados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'pes_id'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pes_razao'
              Title.Caption = 'Nome do fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pes_cpf_cnpj'
              Title.Caption = 'CPF/CNPJ'
              Width = 186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pes_telefone'
              Title.Caption = 'Telefone'
              Width = 291
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        object lblNomeFornecedor: TLabel [0]
          Left = 35
          Top = 101
          Width = 158
          Height = 21
          Caption = 'Nome do Fornecedor'
          FocusControl = edtNomeFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNomeFantasia: TLabel [1]
          Left = 549
          Top = 101
          Width = 104
          Height = 21
          Caption = 'Nome Popular'
          FocusControl = edtNomeFantasia
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCPF: TLabel [2]
          Left = 35
          Top = 181
          Width = 90
          Height = 21
          Caption = 'CPF ou CNPJ'
          FocusControl = edtCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTelefone: TLabel [3]
          Left = 400
          Top = 181
          Width = 63
          Height = 21
          Caption = 'Telefone'
          FocusControl = edtTelefone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblRG: TLabel [4]
          Left = 788
          Top = 181
          Width = 21
          Height = 21
          Caption = 'RG'
          FocusControl = edtRG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlCadastro: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblCadastro: TLabel
            Caption = 'Cadastro de Fornecedores'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 318
          end
        end
        object edtNomeFornecedor: TDBEdit
          Left = 35
          Top = 133
          Width = 470
          Height = 23
          DataField = 'pes_razao'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtNomeFantasia: TDBEdit
          Left = 549
          Top = 133
          Width = 544
          Height = 22
          DataField = 'pes_fantasia'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtCPF: TDBEdit
          Left = 35
          Top = 208
          Width = 326
          Height = 23
          DataField = 'pes_cpf_cnpj'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtTelefone: TDBEdit
          Left = 400
          Top = 208
          Width = 353
          Height = 23
          DataField = 'pes_telefone'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtRG: TDBEdit
          Left = 789
          Top = 208
          Width = 304
          Height = 23
          DataField = 'pes_rg'
          DataSource = dsDados
          TabOrder = 5
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmCadastro.qryPessoas
  end
end
