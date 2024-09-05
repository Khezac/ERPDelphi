inherited ViewProdutos: TViewProdutos
  Caption = '+'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -41
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
          Height = 309
          Columns = <
            item
              Expanded = False
              FieldName = 'prod_id'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prod_nomecompleto'
              Title.Caption = 'Nome Completo'
              Width = 416
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prod_nomepopular'
              Title.Caption = 'Nome Popular'
              Width = 306
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prod_codigobarra'
              Title.Caption = 'Codigo de Barra'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prod_referencia'
              Title.Caption = 'Referencia'
              Width = 109
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 440
          Width = 1127
          Height = 210
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Detalhes: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1117
            Height = 200
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsDados2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'prod2_filial'
                Title.Caption = 'Filial'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prod2_custo'
                Title.Caption = 'Custo Ini.'
                Width = 347
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prod2_vendavista'
                Title.Caption = 'Venda a Vista'
                Width = 311
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prod2_vendaprazo'
                Title.Caption = 'Venda a Prazo'
                Width = 231
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prod2_estoque'
                Visible = True
              end>
          end
        end
      end
      inherited card_cadastro: TCard
        Font.Charset = ANSI_CHARSET
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seFont, seClient, seBorder]
        ExplicitTop = -3
        object Label1: TLabel [0]
          Left = 35
          Top = 114
          Width = 210
          Height = 21
          Caption = 'Nome Completo do Produto'
          FocusControl = DBEdit1
        end
        object Label2: TLabel [1]
          Left = 563
          Top = 114
          Width = 192
          Height = 21
          Caption = 'Nome Popular do Produto'
          FocusControl = DBEdit2
        end
        object Label3: TLabel [2]
          Left = 35
          Top = 191
          Width = 119
          Height = 21
          Caption = 'C'#243'digo de Barra'
          FocusControl = DBEdit3
        end
        object Label4: TLabel [3]
          Left = 563
          Top = 191
          Width = 78
          Height = 21
          Caption = 'Referencia'
          FocusControl = DBEdit4
        end
        object Label5: TLabel [4]
          Left = 35
          Top = 270
          Width = 46
          Height = 21
          Caption = 'Grupo'
          FocusControl = DBEdit5
        end
        object Label6: TLabel [5]
          Left = 219
          Top = 269
          Width = 73
          Height = 21
          Caption = 'Subgrupo'
          FocusControl = DBEdit6
        end
        object Label7: TLabel [6]
          Left = 823
          Top = 191
          Width = 37
          Height = 21
          Caption = 'NCM'
          FocusControl = DBEdit7
        end
        object Label8: TLabel [7]
          Left = 35
          Top = 389
          Width = 32
          Height = 21
          Caption = 'Filial'
          FocusControl = DBEdit8
        end
        object Label9: TLabel [8]
          Left = 405
          Top = 389
          Width = 42
          Height = 21
          Caption = 'Custo'
          FocusControl = DBEdit9
        end
        object Label10: TLabel [9]
          Left = 35
          Top = 482
          Width = 96
          Height = 21
          Caption = 'Venda '#225' Vista'
          FocusControl = DBEdit10
        end
        object Label11: TLabel [10]
          Left = 219
          Top = 482
          Width = 101
          Height = 21
          Caption = 'Venda '#224' Prazo'
          FocusControl = DBEdit11
        end
        object Label12: TLabel [11]
          Left = 219
          Top = 389
          Width = 92
          Height = 21
          Caption = 'Sit.Tribut'#225'ria'
          FocusControl = DBEdit12
        end
        object Label13: TLabel [12]
          Left = 405
          Top = 482
          Width = 59
          Height = 21
          Caption = 'Estoque'
          FocusControl = DBEdit13
        end
        inherited pnlCadastro: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblCadastro: TLabel
            Caption = 'Cadastro de Produtos'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 265
          end
        end
        object DBEdit1: TDBEdit
          Left = 35
          Top = 141
          Width = 500
          Height = 29
          DataField = 'prod_nomecompleto'
          DataSource = dsDados
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 563
          Top = 141
          Width = 500
          Height = 29
          DataField = 'prod_nomepopular'
          DataSource = dsDados
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 35
          Top = 218
          Width = 500
          Height = 29
          DataField = 'prod_codigobarra'
          DataSource = dsDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 563
          Top = 218
          Width = 250
          Height = 29
          DataField = 'prod_referencia'
          DataSource = dsDados
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 35
          Top = 297
          Width = 154
          Height = 29
          DataField = 'prod_grupo'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 219
          Top = 296
          Width = 154
          Height = 29
          DataField = 'prod_subgrupo'
          DataSource = dsDados
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 823
          Top = 218
          Width = 240
          Height = 29
          DataField = 'prod_ncm'
          DataSource = dsDados
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 35
          Top = 416
          Width = 154
          Height = 29
          DataField = 'prod2_filial'
          DataSource = dsDados2
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 405
          Top = 416
          Width = 154
          Height = 29
          DataField = 'prod2_custo'
          DataSource = dsDados2
          TabOrder = 10
        end
        object DBEdit10: TDBEdit
          Left = 35
          Top = 509
          Width = 154
          Height = 29
          DataField = 'prod2_vendavista'
          DataSource = dsDados2
          TabOrder = 11
        end
        object DBEdit11: TDBEdit
          Left = 219
          Top = 509
          Width = 154
          Height = 29
          DataField = 'prod2_vendaprazo'
          DataSource = dsDados2
          TabOrder = 12
        end
        object DBEdit12: TDBEdit
          Left = 219
          Top = 416
          Width = 154
          Height = 29
          DataField = 'prod2_sitributaria'
          DataSource = dsDados2
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 405
          Top = 509
          Width = 154
          Height = 29
          DataField = 'prod2_estoque'
          DataSource = dsDados2
          TabOrder = 13
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmCadastro.qryProduto1
    OnDataChange = dsDadosDataChange
  end
  object dsDados2: TDataSource
    DataSet = dmCadastro.qryProduto2
    Left = 1072
    Top = 96
  end
end
