unit uFrmEmiteDanfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, Buttons, StdCtrls, ExtCtrls, pcnConversao;

type
  TFrmEmiteDanfe = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    EdtArquivo: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtArquivoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmiteDanfe: TFrmEmiteDanfe;

implementation

uses uDmNfe, ACBrNFeNotasFiscais, pcnNFe;

{$R *.dfm}

procedure TFrmEmiteDanfe.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtArquivo.Text := OpenDialog1.FileName;
  
end;

procedure TFrmEmiteDanfe.FormShow(Sender: TObject);
begin
  inherited;
  DmNFe.AtualizaConfigAcBr;
  EdtArquivo.SetFocus;
  
end;

procedure TFrmEmiteDanfe.EdtArquivoExit(Sender: TObject);
begin
  inherited;
  if EdtArquivo.Text = '' then
     SpeedButton1Click(Sender);
     
end;

procedure TFrmEmiteDanfe.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
  
end;

procedure TFrmEmiteDanfe.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if EdtArquivo.Text = '' then
  begin
    ShowMessage('É necessário selecionar o arquivo XML!');
    Abort;
  end;
  DmNFe.ACBrNFe1.NotasFiscais.Clear;
  DmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(EdtArquivo.Text);
  if DmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
  begin
    DmNFe.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := DmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
    DmNFe.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
    //
    DmNFe.ACBrNFe1.DANFE.ProtocoloNFe := DmNFe.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC+''+
                                         DateTimeToStr(DmNFe.ACBrNFe1.WebServices.ConsultaDPEC.retDPEC.dhRegDPEC);
  end;
  DmNFe.ACBrNFe1.NotasFiscais.Imprimir;

end;

end.
