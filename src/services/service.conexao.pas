unit service.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.Comp.UI, System.IniFiles, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, provider.constantes;

type
  TdmConexao = class(TDataModule)
    ServiceConexao: TFDConnection;
    PgDriver: TFDPhysPgDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    qryFilial: TFDQuery;
    qryFilialfil_id: TIntegerField;
    qryFilialfil_razao: TWideStringField;
    qryFilialfil_fantasia: TWideStringField;
    qryFilialfil_cnpj: TWideStringField;
    qryFilialfil_telefone: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
var
  config: TIniFile;
  LDatabase: string;
  LUser_Name: string;
  LPassword: string;
  LServer: string;
  LPort: string;
  LCaminho: string;
begin
  try
    ServiceConexao.Connected := false;

    LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.ini';
    config := TIniFile.Create(LCaminho);

    LDatabase := config.ReadString('Conexao','Database', LDatabase);
    LServer := config.ReadString('Conexao','Server', LServer);
    LPort := config.ReadString('Conexao','Port',LPort);

    LUser_Name := 'postgres';
    LPassword := '1234';

    ServiceConexao.Params.Values['Database'] := LDataBase;
    ServiceConexao.Params.Values['Server'] := LServer;
    ServiceConexao.Params.Values['Port'] := LPort;
    ServiceCOnexao.Params.Values['User_Name'] := LUser_Name;
    ServiceConexao.Params.Values['Password'] := LPassword;

    ServiceConexao.Connected := true;
  finally
    FreeAndNil(config);
  end;

  qryFilial.Close;
  qryFilial.Params[0].AsInteger := 2;
  qryFilial.Open();

  iCOD_FILIAL := qryFilialfil_id.AsInteger;
  sRAZAO_FILIAL := qryFilialfil_razao.AsString;

end;

end.
