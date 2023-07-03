unit uFrmValidaXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, Buttons, StdCtrls, ActnList, ExtCtrls;

type
  TFrmValidaXML = class(TFrmPadrao)
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    EdtArquivo: TEdit;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    ActValidar: TAction;
    ActFechar: TAction;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActValidarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtArquivoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmValidaXML: TFrmValidaXML;

implementation

uses uDmNfe;

{$R *.dfm}

procedure TFrmValidaXML.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtArquivo.Text := OpenDialog1.FileName;

end;

procedure TFrmValidaXML.ActFecharExecute(Sender: TObject);
begin
  inherited;
  Close;
  
end;

procedure TFrmValidaXML.ActValidarExecute(Sender: TObject);
begin
  inherited;
  if EdtArquivo.Text = '' then
  begin
    ShowMessage('É necessário selecionar o arquivo!');
    Abort;
  end;
  // executa validação do arquivo
  try
    DmNFe.ACBrNFe1.NotasFiscais.Clear;
    DmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(EdtArquivo.Text);
    DmNFe.ACBrNFe1.NotasFiscais.Valida;
  finally
    ShowMessage('Arquivo Validado com sucesso!');
  end;

end;

procedure TFrmValidaXML.FormShow(Sender: TObject);
begin
  inherited;
  DmNFe.AtualizaConfigAcBr;
  EdtArquivo.SetFocus;
  
end;

procedure TFrmValidaXML.EdtArquivoExit(Sender: TObject);
begin
  inherited;
  if EdtArquivo.Text = '' then
     SpeedButton1Click(Sender);
     
end;

end.
