unit uFrmConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, IniFiles;

type
  TFrmConfig = class(TFrmPadrao)
    PageControl1: TPageControl;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    ActConfirmar: TAction;
    ActFechar: TAction;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    RadioFormas: TRadioGroup;
    GroupBox5: TGroupBox;
    EdtLogoMarca: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ChArquivos: TCheckBox;
    GroupBox6: TGroupBox;
    EdtArquivos: TEdit;
    SpeedButton2: TSpeedButton;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    EdtCertificado: TEdit;
    EdtSenha: TEdit;
    EdtSerial: TEdit;
    SpeedButton3: TSpeedButton;
    EdtRazao: TEdit;
    EdtFantasia: TEdit;
    EdtIE: TEdit;
    EdtCNPJ: TEdit;
    EdtEndereco: TEdit;
    EdtBairro: TEdit;
    EdtNum: TEdit;
    EdtCEP: TEdit;
    EdtCidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdtUF: TEdit;
    EdtTelefone: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    UF: TLabel;
    RadioAmbiente: TRadioGroup;
    GroupBox10: TGroupBox;
    EdtHost: TEdit;
    EdtPorta: TEdit;
    EdtUsuario: TEdit;
    EdtSenhaWS: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdtCodMun: TEdit;
    EdtUFWS: TEdit;
    TabSheet5: TTabSheet;
    GroupBox11: TGroupBox;
    EdtSMPTHost: TEdit;
    EdtSMPTPorta: TEdit;
    EdtSMPTUsuario: TEdit;
    EdtSMTPSenha: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EdtEmailEmitente: TEdit;
    Label21: TLabel;
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

uses uDmNfe;

{$R *.dfm}

procedure TFrmConfig.ActConfirmarExecute(Sender: TObject);
begin
  inherited;
  try
    // GERAL
    DmNFe.sFormas      := RadioFormas.ItemIndex;
    DmNFe.sLogoMarca   := EdtLogoMarca.Text;
    DmNFe.sSalvaArq    := ChArquivos.Checked;
    DmNFe.sPathArq     := EdtArquivos.Text;
    // CERTIFICADO
    DmNFe.sCertificado := EdtCertificado.Text;
    DmNFe.sSenha       := EdtSenha.Text;
    DmNFe.sSerial      := EdtSerial.Text;
    // emitente
    DmNFe.sRazao       := EdtRazao.Text;
    DmNFe.sFantasia    := EdtFantasia.Text;
    DmNFe.sCNPJ        := EdtCNPJ.Text;
    DmNFe.sIE          := EdtIE.Text;
    DmNFe.sEndereco    := EdtEndereco.Text;
    DmNFe.sNum         := EdtNum.Text;
    DmNFe.sBairro      := EdtBairro.Text;
    DmNFe.sCidade      := EdtCidade.Text;
    DmNFe.sCEP         := EdtCEP.Text;
    DmNFe.sUF          := EdtUF.Text;
    DmNFe.sCodMun      := EdtCodMun.Text;
    DmNFe.sFone        := EdtTelefone.Text;
    DmNFe.sEmailEmitente := EdtEmailEmitente.Text;
    // WebService
    DmNFe.sUFWS        := EdtUFWS.Text;
    DmNFe.sAmbiente    := RadioAmbiente.ItemIndex;
    DmNFe.sHost        := EdtHost.Text;
    DmNFe.sPorta       := EdtPorta.Text;
    DmNFe.sUsuario     := EdtUsuario.Text;
    DmNFe.sSenhaWS     := EdtSenhaWS.Text;
    // email
    DmNFe.sSMPTHost    := EdtSMPTHost.Text;
    DmNFe.sSMTPPort    := EdtSMPTPorta.Text;
    DmNFe.sSMTPUsu     := EdtSMPTUsuario.Text;
    DmNFe.sSMTPPass    := EdtSMTPSenha.Text;
    // grava dados no arquivo
    DmNFe.GravaArqIni;
    MessageDlg('Arquivo Gravado com sucesso!', mtInformation, [mbOK], 0);
    Close;
  except
    MessageDlg('Erro ao gravar arquivo de configuração!', mtError, [mbOK], 0);
  end;
  
end;

procedure TFrmConfig.ActFecharExecute(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TFrmConfig.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtLogoMarca.Text := OpenDialog1.FileName;

end;

procedure TFrmConfig.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtArquivos.Text := OpenDialog1.FileName;

end;

procedure TFrmConfig.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtCertificado.Text := OpenDialog1.FileName;

end;

procedure TFrmConfig.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
  DmNFe.LeArqIni;
  // GERAL
  RadioFormas.ItemIndex   := DmNFe.sFormas;
  EdtLogoMarca.Text       := DmNFe.sLogoMarca;
  ChArquivos.Checked      := DmNFe.sSalvaArq;
  EdtArquivos.Text        := DmNFe.sPathArq;
  // CERTIFICADO
  EdtCertificado.Text     := DmNFe.sCertificado;
  EdtSenha.Text           := DmNFe.sSenha;
  EdtSerial.Text          := DmNFe.sSerial;
  // emitente
  EdtRazao.Text           := DmNFe.sRazao;
  EdtFantasia.Text        := DmNFe.sFantasia;
  EdtCNPJ.Text            := DmNFe.sCNPJ;
  EdtIE.Text              := DmNFe.sIE;
  EdtEndereco.Text        := DmNFe.sEndereco;
  EdtNum.Text             := DmNFe.sNum;
  EdtBairro.Text          := DmNFe.sBairro;
  EdtCidade.Text          := DmNFe.sCidade;
  EdtCEP.Text             := DmNFe.sCEP;
  EdtUF.Text              := DmNFe.sUF;
  EdtCodMun.Text          := DmNFe.sCodMun;
  EdtTelefone.Text        := DmNFe.sFone;
  EdtEmailEmitente.Text   := DmNFe.sEmailEmitente;
  // WebService
  EdtUFWS.Text            := DmNFe.sUFWS;
  RadioAmbiente.ItemIndex := DmNFe.sAmbiente;
  EdtHost.Text            := DmNFe.sHost;
  EdtPorta.Text           := DmNFe.sPorta;
  EdtUsuario.Text         := DmNFe.sUsuario;
  EdtSenhaWS.Text         := DmNFe.sSenhaWS;
  // email
  EdtSMPTHost.Text        := DmNFe.sSMPTHost;
  EdtSMPTPorta.Text       := DmNFe.sSMTPPort;
  EdtSMPTUsuario.Text     := DmNFe.sSMTPUsu;
  EdtSMTPSenha.Text       := DmNFe.sSMTPPass;

end;

end.
