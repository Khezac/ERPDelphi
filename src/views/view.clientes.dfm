inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  StyleElements = [seFont, seClient, seBorder]
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
      StyleElements = [seFont, seClient, seBorder]
      inherited card_pesquisa: TCard
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlPesquisa: TPanel
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = -2
          ExplicitTop = -3
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
              Title.Caption = 'Nome dos Clientes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pes_cpf_cnpj'
              Title.Caption = 'CPF/CNPJ'
              Width = 232
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pes_telefone'
              Width = 184
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        object lblNomeCliente: TLabel [0]
          Left = 35
          Top = 117
          Width = 124
          Height = 21
          Caption = 'Nome do Cliente'
          FocusControl = edtNomeCliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPFantasia_Social: TLabel [1]
          Left = 435
          Top = 117
          Width = 90
          Height = 21
          Caption = 'Nome social'
          FocusControl = edtPFantasia_Social
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTelefone: TLabel [2]
          Left = 619
          Top = 192
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
        object lblRG: TLabel [3]
          Left = 324
          Top = 192
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
        object lblCPF: TLabel [4]
          Left = 35
          Top = 192
          Width = 90
          Height = 21
          Caption = 'CPF ou CNPJ'
          FocusControl = DBEdit1
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
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        object edtNomeCliente: TDBEdit
          Left = 35
          Top = 144
          Width = 350
          Height = 23
          DataField = 'pes_razao'
          DataSource = dsDados
          TabOrder = 1
          TextHint = 'Insira o nome do cliente'
        end
        object edtPFantasia_Social: TDBEdit
          Left = 435
          Top = 144
          Width = 382
          Height = 23
          DataField = 'pes_fantasia'
          DataSource = dsDados
          TabOrder = 2
          TextHint = 'Insira o nome social do cliente...'
        end
        object edtTelefone: TDBEdit
          Left = 619
          Top = 219
          Width = 198
          Height = 23
          DataField = 'pes_telefone'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'edtTelefone'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TextHint = 'Insira o Telefone do cliente com DDD...'
        end
        object edtRG: TDBEdit
          Left = 324
          Top = 219
          Width = 261
          Height = 23
          DataField = 'pes_rg'
          DataSource = dsDados
          TabOrder = 3
          TextHint = 'Insira o RG do cliente...'
        end
        object DBEdit1: TDBEdit
          Left = 35
          Top = 219
          Width = 254
          Height = 23
          DataField = 'pes_cpf_cnpj'
          DataSource = dsDados
          TabOrder = 5
          TextHint = 'Insira o CPF do Cliente...'
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmCadastro.qryPessoas
    Left = 1040
    Top = 216
  end
end
