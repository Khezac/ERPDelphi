unit view.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.baseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, service.cadastro, Vcl.Mask, Vcl.DBCtrls;

type
  TViewClientes = class(TViewBaseListas)
    lblNomeCliente: TLabel;
    edtNomeCliente: TDBEdit;
    lblPFantasia_Social: TLabel;
    edtPFantasia_Social: TDBEdit;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    lblRG: TLabel;
    edtRG: TDBEdit;
    lblCPF: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public

  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

end.
