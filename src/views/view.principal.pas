unit view.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Skia,
  Vcl.Buttons,
  System.Actions,
  Vcl.ActnList,
  System.ImageList,
  Vcl.ImgList,
  provider.constantes,
  view.clientes,
  view.fornecedores,
  provider.conversao, view.produtos;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlLateral: TPanel;
    pnlContainer: TPanel;
    pnlInferior: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlYellowLine: TPanel;
    pnlConteudoLogo: TPanel;
    lblLogo: TLabel;
    lblSistema: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    imgUsuario: TImage;
    pnlUserInfo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlFooterRightInfo: TPanel;
    lblLicencaTitulo: TLabel;
    lblNomeEmpresa: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    shapeMenu: TShape;
    pnlBtns: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfig: TSpeedButton;
    SpeedButton1: TSpeedButton;
    imgUsuarioAmarela: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure lblLogoMouseEnter(Sender: TObject);
    procedure lblLogoMouseLeave(Sender: TObject);
    procedure imgUsuarioMouseEnter(Sender: TObject);
    procedure imgUsuarioAmarelaMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure get_lineMenu(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
  get_lineMenu(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  get_lineMenu(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try
    ViewClientes.Tag := pessoasToInt(tpCliente);
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnConfigClick(Sender: TObject);
begin
  get_lineMenu(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  get_lineMenu(Sender);
  ViewFornecedores := TViewFornecedores.Create(Self);
  try
    ViewFornecedores.Tag := pessoasToInt(tpFornecedor);
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  get_lineMenu(Sender);
  ViewProdutos := TViewProdutos.Create(Self);
  try
    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  lblNomeEmpresa.Caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.get_lineMenu(Sender: TObject);
begin
  shapeMenu.Left := 0;
  shapeMenu.Top := 0;
  shapeMenu.Visible := True;
  shapeMenu.Height := TSpeedButton(Sender).Height;
  shapeMenu.Top := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUsuarioAmarelaMouseLeave(Sender: TObject);
begin
  imgUsuarioAmarela.Enabled := False;
  imgUsuarioAmarela.Visible := False;
  imgUsuario.Enabled := True;
  imgUsuario.Visible := True;
end;

procedure TViewPrincipal.imgUsuarioMouseEnter(Sender: TObject);
begin
  imgUsuarioAmarela.Enabled := True;
  imgUsuarioAmarela.Visible := True;
  imgUsuario.Enabled := False;
  imgUsuario.Visible := False;
end;

procedure TViewPrincipal.lblLogoMouseEnter(Sender: TObject);
begin
  lblLogo.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblLogoMouseLeave(Sender: TObject);
begin
  lblLogo.Font.Color := clWhite;
end;

procedure TViewPrincipal.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
