unit view.fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.baseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, service.conexao, service.cadastro, Vcl.Mask, Vcl.DBCtrls;

type
  TViewFornecedores = class(TViewBaseListas)
    lblNomeFornecedor: TLabel;
    edtNomeFornecedor: TDBEdit;
    lblNomeFantasia: TLabel;
    edtNomeFantasia: TDBEdit;
    lblCPF: TLabel;
    edtCPF: TDBEdit;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    lblRG: TLabel;
    edtRG: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

end.
