unit uFrmEnviarNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, Buttons, StdCtrls, ActnList, ExtCtrls;

type
  TFrmEnviarNFe = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    EdtArquivo: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    ActEnviar: TAction;
    ActFechar: TAction;
    Label1: TLabel;
    EdtNumLote: TEdit;
    Label2: TLabel;
    EdtPedido: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActEnviarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEnviarNFe: TFrmEnviarNFe;

implementation

uses uDmNfe, uLibrary, ACBrNFe, ACBrNFeWebServices, pcnRetConsReciNFe;

{$R *.dfm}

procedure TFrmEnviarNFe.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtArquivo.Text := OpenDialog1.FileName;
  
end;

procedure TFrmEnviarNFe.ActFecharExecute(Sender: TObject);
begin
  inherited;
  Close;
  
end;

procedure TFrmEnviarNFe.ActEnviarExecute(Sender: TObject);
var aChaveNfe, aRecibo, aProcolo : String;
begin
  inherited;
  //
  if EdtArquivo.Text = '' then
  begin
    ShowMessage('É necessário selcionar o arquivo XML');
    Abort;
  end;
  EdtNumLote.Text := FiltraNumero(EdtNumLote.Text);
  if Trim(EdtNumLote.Text) = '' then
  begin
    ShowMessage('É necessário informar o numero do lote!');
    Abort;
  end;
  //
  try
    DmNFe.ACBrNFe1.NotasFiscais.Clear;
    DmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(EdtArquivo.Text);
    DmNFe.ACBrNFe1.Enviar(EdtNumLote.Text);
    //
    aChaveNfe := DmNFe.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
    aProcolo  := DmNFe.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
    aRecibo   := DmNFe.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
    // grava chave NFe
    if aChaveNfe <> '' then
    begin
      DmNFe.GravaChaveNFEPedido(aChaveNfe,EdtPedido.Text);

    end;
   except
     ShowMessage('Erro ao enviar a NFe.Verifique!!!');
   end;



end;

procedure TFrmEnviarNFe.FormShow(Sender: TObject);
begin
  inherited;
  DmNFe.AtualizaConfigAcBr;
  EdtArquivo.SetFocus;

end;

end.
