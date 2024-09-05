unit view.baseListas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, provider.constantes, view.mensagens;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlInferior: TPanel;
    pnlIcon: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    cpListas: TCardPanel;
    card_pesquisa: TCard;
    pnlPesquisa: TPanel;
    lblPesquisa: TLabel;
    searchBox: TSearchBox;
    dbgDados: TDBGrid;
    dsDados: TDataSource;
    btnSalvar: TSpeedButton;
    card_cadastro: TCard;
    pnlCadastro: TPanel;
    lblCadastro: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure Panel1MouseLeave(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cpListasCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

uses service.cadastro;

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  begin
    dsDados.DataSet.Cancel;
    cpListas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin
  inherited;
  cpListas.ActiveCard := card_cadastro;
  dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin
  inherited;

  if dsDados.DataSet.RecordCount > 0 then
    begin

      if Self.Tag > 0 then
      begin

        case Self.Tag of

          1: begin
            if TViewMensagens.Mensagem('Deseja mesmo deletar o cliente?','Deletar cliente', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Cliente deletado com sucesso!','Cliente Deletado', 'I', [mbOk]);
              end;
          end;

          2: begin
            if TViewMensagens.Mensagem('Deseja mesmo deletar o fornecedor?','Deletar fornecedor', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Fornecedor deletado com sucesso!','Fornecedor Deletado', 'I', [mbOk]);
              end;
          end;

          3: begin
            if TViewMensagens.Mensagem('Deseja mesmo deletar o funcionário?','Deletar funcionário', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Funcionário deletado com sucesso!','Funcionário Deletado', 'I', [mbOk]);
              end;
          end;

        end;

      end
      else begin
        TViewMensagens.Mensagem('Registro deletado com sucesso!','Registro Deletado', 'I', [mbOk]);
      end;

      cpListas.ActiveCard := card_pesquisa;
    end;

end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin
  inherited;
  cpListas.ActiveCard := card_cadastro;
  dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  begin

    if Self.Tag > 0 then
    begin
      dmCadastro.qryPessoaspes_tipo.AsInteger := Self.Tag;
      dmCadastro.qryPessoas.Post;

      case Self.Tag of

        1: begin
          TViewMensagens.Mensagem('Cliente cadastrado com sucesso!','Cliente cadastrado', 'I', [mbOk]);
        end;

        2: begin
          TViewMensagens.Mensagem('Fornecedor cadastrado com sucesso!','Fornecedor cadastrado', 'I', [mbOk]);
        end;

        3: begin
          TViewMensagens.Mensagem('Funcionário cadastrado com sucesso!','Funcionário cadastrado', 'I', [mbOk]);
        end;

      end;

    end
    else begin

      dsDados.DataSet.Post;
      TViewMensagens.Mensagem('Registro cadastrado com sucesso!','Registro cadastrado', 'I', [mbOk]);

    end;

    cpListas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.cpListasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;
  if NextCard = card_cadastro then
  SelectFirst;

end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  cpListas.ActiveCard := card_pesquisa;
  if Self.Tag > 0 then
    get_Pessoas(Self.Tag);
end;

procedure TViewBaseListas.Panel1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  const
    sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove,0);
end;

procedure TViewBaseListas.Panel1MouseEnter(Sender: TObject);
begin
  inherited;
  Panel1.Font.Color := clRed;
end;

procedure TViewBaseListas.Panel1MouseLeave(Sender: TObject);
begin
  inherited;
  Panel1.Font.Color := clWhite;
end;

end.
