object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object ServiceConexao: TFDConnection
    Params.Strings = (
      'Database=pdvdelphi'
      'User_Name=postgres'
      'Password=1234'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 56
  end
  object PgDriver: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\Khezac\Documents\Estudos de Programa'#231#227'o\Delphi\Estudo 8' +
      ' ( Delphi + BD )\install\dlls\bin\libpq.dll'
    Left = 64
    Top = 120
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 184
  end
  object qryFilial: TFDQuery
    Connection = ServiceConexao
    SQL.Strings = (
      'select * from filial '
      'where fil_id = :id;'
      '')
    Left = 240
    Top = 56
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object qryFilialfil_id: TIntegerField
      FieldName = 'fil_id'
      Origin = 'fil_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilialfil_razao: TWideStringField
      FieldName = 'fil_razao'
      Origin = 'fil_razao'
      Size = 100
    end
    object qryFilialfil_fantasia: TWideStringField
      FieldName = 'fil_fantasia'
      Origin = 'fil_fantasia'
      Size = 100
    end
    object qryFilialfil_cnpj: TWideStringField
      FieldName = 'fil_cnpj'
      Origin = 'fil_cnpj'
    end
    object qryFilialfil_telefone: TWideStringField
      FieldName = 'fil_telefone'
      Origin = 'fil_telefone'
      Size = 15
    end
  end
end
