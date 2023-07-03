unit uFrmEnviaEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, StdCtrls, Buttons, ExtCtrls;

type
  TFrmEnviaEmail = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    EdtArquivo: TEdit;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EdtPara: TEdit;
    Label1: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEnviaEmail: TFrmEnviaEmail;

implementation

uses uDmNfe;

{$R *.dfm}

procedure TFrmEnviaEmail.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtArquivo.Text := OpenDialog1.FileName;
  
end;

procedure TFrmEnviaEmail.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
  
end;

procedure TFrmEnviaEmail.FormShow(Sender: TObject);
begin
  inherited;
  DmNFe.AtualizaConfigAcBr;
  EdtArquivo.SetFocus;
  
end;

procedure TFrmEnviaEmail.BitBtn1Click(Sender: TObject);
var Endereco,Mensagem : TStrings;
begin
  inherited;
  if EdtArquivo.Text = '' then
  begin
    ShowMessage('É necessário selecionar o arquivo XML!');
    Abort;
  end;
  //
  DmNFe.ACBrNFe1.NotasFiscais.Clear;
  DmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(EdtArquivo.Text);
  // carrega email do destinatario no strings
  Mensagem := TStrings.Create;
  Mensagem.Add('NFe'); 
  Endereco := TStrings.Create;
  Endereco.Add(EdtPara.Text);
  // enviar email
  DmNFe.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(DmNFe.sSMPTHost,
                                                   DmNFe.sSMTPPort,
                                                   DmNFe.sSMTPUsu,
                                                   DmNFe.sSMTPPass,
                                                   DmNFe.sEmailEmitente,
                                                   EdtPara.Text,
                                                   'NFe',
                                                   Mensagem,
                                                   true,
                                                   true,
                                                   Endereco,
                                                   nil,
                                                   false,
                                                   true,
                                                   'Nome do remetente');
  FreeAndNil(Endereco);

end;

end.
