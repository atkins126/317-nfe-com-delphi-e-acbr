unit uFrmStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, Buttons,
  ACBrNFe, pcnConversao;

type
  TFrmStatus = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    RetornoWS: TMemo;
    WebBrowser1: TWebBrowser;
    Dados: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatus: TFrmStatus;

implementation

uses uDmNfe;

{$R *.dfm}

procedure TFrmStatus.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
  
end;

procedure TFrmStatus.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DmNFe.ACBrNFe1.WebServices.StatusServico.Executar;
  RetornoWS.Lines.Clear;
  RetornoWS.Lines.Text := UTF8Encode(DmNFe.ACBrNFe1.WebServices.StatusServico.RetWS);
  //
  RetornoWS.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'retornoexe.xml');
  WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'retornoexe.xml');
  //
  Dados.Lines.Clear;
  Dados.Lines.Add('Tipo Ambiente: '+ TpAmbToStr(DmNFe.ACBrNFe1.WebServices.StatusServico.tpAmb));
  Dados.Lines.Add('Versão Aplicativo: '+DmNFe.ACBrNFe1.WebServices.StatusServico.verAplic);
  Dados.Lines.Add('Status: '+IntToStr(DmNFe.ACBrNFe1.WebServices.StatusServico.cStat));
  Dados.Lines.Add('Motivo: '+DmNFe.ACBrNFe1.WebServices.StatusServico.xMotivo);
  Dados.Lines.Add('UF'+IntToStr(DmNFe.ACBrNFe1.WebServices.StatusServico.cUF));
  Dados.Lines.Add('Data Hora Recebimento: '+DateTimeToStr(DmNFe.ACBrNFe1.WebServices.StatusServico.dhRecbto));
  Dados.Lines.Add('Data Hora Reterno: '+DateTimeToStr(DmNFe.ACBrNFe1.WebServices.StatusServico.dhRetorno));
  Dados.Lines.Add('Observação: '+DmNFe.ACBrNFe1.WebServices.StatusServico.xObs);

end;

procedure TFrmStatus.FormShow(Sender: TObject);
begin
  inherited;
  DmNFe.AtualizaConfigAcBr;
  
end;

end.
