unit view.mensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Skia, view.fundo;
type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TViewBase)
    pnlImgs: TPanel;
    pnlTitulo: TPanel;
    pnlConteudo: TPanel;
    pnlBotoes: TPanel;
    mmoTexto: TMemo;
    lblTitulo: TLabel;
    btnOK: TSpeedButton;
    btnNao: TSpeedButton;
    btnSim: TSpeedButton;
    imgAlert: TImage;
    imgInformation: TImage;
    imgError: TImage;
    pnlNao: TPanel;
    pnlSim: TPanel;
    pnlOK: TPanel;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    class function Mensagem(Texto: String; Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

{ TViewMensagens }

procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOKClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrYes;
end;

class function TViewMensagens.Mensagem(Texto: String; Titulo: String; Tipo: Char;
  Botoes: array of TMyButtons): Boolean;
  var
    i: integer;
    view: TViewMensagens;
begin

  view := TViewMensagens.Create(nil);

  try
    view.lblTitulo.Caption := Titulo;
    view.mmoTexto.Text := Texto;
    view.Caption := Titulo;

    for i := 0 to Length(Botoes)-1 do
    begin

      case (Botoes[i]) of
        mbOk: begin
                view.btnOK.Visible := True;
                view.btnOK.Align := alClient;
                view.pnlOK.Visible := True;
                view.pnlOK.Align := alRight;
              end;

        mbSim:begin
                view.btnSim.Visible := True;
                view.btnSim.Align := alClient;
                view.pnlSim.Visible := True;
                view.pnlSim.Align := alRight;
              end;

        mbNao:begin
                view.btnnao.Visible := True;
                view.btnnao.Align := alClient;
                view.pnlNao.Visible := True;
                view.pnlNao.Align := alRight;
              end;
        else begin
                view.btnOK.Visible := True;
                view.btnOK.Align := alClient;
                view.pnlOK.Visible := True;
                view.pnlOK.Align := alRight;
             end;

      end;

    end;

    case (Tipo) of
    'I': begin
          view.imgInformation.Visible := true;
        end;

    'E': begin
          view.imgError.Visible := true;
        end;

    'A': begin
          view.imgAlert.Visible := true;
        end;

    else begin
        view.imgInformation.Visible := true;
        end;

    end;

    ViewFundo.Show;
    view.ShowModal;

    case (view.ModalResult) of
      mrOk,mrYes: result := true;
      else
        result := false;
    end;

  finally
    if (view <> nil) then
      ViewFundo.Hide;
      FreeAndNil(view);
  end;
end;

end.
