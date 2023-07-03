unit uFrmCancelNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, StdCtrls, ComCtrls, Buttons, ActnList, ExtCtrls;

type
  TFrmCancelNFe = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    DataNFe: TDataSource;
    DBGrid1: TDBGrid;
    QryNFe: TSQLQuery;
    DspNFe: TDataSetProvider;
    CdsNFe: TClientDataSet;
    QryNFeID: TIntegerField;
    QryNFePEDIDO_NUM: TStringField;
    QryNFeIDCLIENTE: TIntegerField;
    QryNFeID_VENDEDOR: TIntegerField;
    QryNFeDATA_PEDIDO: TSQLTimeStampField;
    QryNFeHORA_PEDIDO: TSQLTimeStampField;
    QryNFeDATA_ENTREGA: TSQLTimeStampField;
    QryNFeHORA_ENTREGA: TSQLTimeStampField;
    QryNFeID_CLASSIFICACAO: TIntegerField;
    QryNFeCONFIRMADA: TStringField;
    QryNFeENTREGUE: TStringField;
    QryNFeVALOR: TFMTBCDField;
    QryNFeDESCONTO: TFMTBCDField;
    QryNFeACRESCIMO: TFMTBCDField;
    QryNFeOUTRAS_DESPESAS: TFMTBCDField;
    QryNFeVALOR_TOTAL: TFMTBCDField;
    QryNFeCANCELADO: TStringField;
    QryNFeID_FORMAPAG: TIntegerField;
    QryNFeEND_ENTREGA: TStringField;
    QryNFeNUM_END_ENTREGA: TStringField;
    QryNFeCOMPL_END_ENTREGA: TStringField;
    QryNFeBAIRRO_END_ENTREGA: TStringField;
    QryNFeCID_END_ENTREGA: TStringField;
    QryNFeUF_END_ENTREGA: TStringField;
    QryNFeCEP_END_ENTREGA: TStringField;
    QryNFeCLIENTE: TStringField;
    QryNFeTIPODOC: TIntegerField;
    QryNFeTIPO_PEDIDO: TIntegerField;
    QryNFeVALOR_REAL: TFMTBCDField;
    QryNFeMARGEM_VENDA: TBCDField;
    QryNFeVALOR_COMISSAO: TFMTBCDField;
    QryNFeTOTAL_GERAL: TFMTBCDField;
    QryNFeCOO: TIntegerField;
    QryNFeCCF: TIntegerField;
    QryNFeGNF: TIntegerField;
    QryNFeDAV: TStringField;
    QryNFeCNPJCPF: TStringField;
    QryNFeINSCEST: TStringField;
    QryNFeVALOR_TROCO: TFMTBCDField;
    QryNFeCAIXA: TStringField;
    QryNFeIDEMPRESA: TIntegerField;
    QryNFeCHEVE_NFE: TStringField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    EdtProtocolo: TEdit;
    EdtJustifica: TEdit;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ActionList1: TActionList;
    ActCancelar: TAction;
    ActFechar: TAction;
    CdsNFeID: TIntegerField;
    CdsNFePEDIDO_NUM: TStringField;
    CdsNFeIDCLIENTE: TIntegerField;
    CdsNFeID_VENDEDOR: TIntegerField;
    CdsNFeDATA_PEDIDO: TSQLTimeStampField;
    CdsNFeHORA_PEDIDO: TSQLTimeStampField;
    CdsNFeDATA_ENTREGA: TSQLTimeStampField;
    CdsNFeHORA_ENTREGA: TSQLTimeStampField;
    CdsNFeID_CLASSIFICACAO: TIntegerField;
    CdsNFeCONFIRMADA: TStringField;
    CdsNFeENTREGUE: TStringField;
    CdsNFeVALOR: TFMTBCDField;
    CdsNFeDESCONTO: TFMTBCDField;
    CdsNFeACRESCIMO: TFMTBCDField;
    CdsNFeOUTRAS_DESPESAS: TFMTBCDField;
    CdsNFeVALOR_TOTAL: TFMTBCDField;
    CdsNFeCANCELADO: TStringField;
    CdsNFeID_FORMAPAG: TIntegerField;
    CdsNFeEND_ENTREGA: TStringField;
    CdsNFeNUM_END_ENTREGA: TStringField;
    CdsNFeCOMPL_END_ENTREGA: TStringField;
    CdsNFeBAIRRO_END_ENTREGA: TStringField;
    CdsNFeCID_END_ENTREGA: TStringField;
    CdsNFeUF_END_ENTREGA: TStringField;
    CdsNFeCEP_END_ENTREGA: TStringField;
    CdsNFeCLIENTE: TStringField;
    CdsNFeTIPODOC: TIntegerField;
    CdsNFeTIPO_PEDIDO: TIntegerField;
    CdsNFeVALOR_REAL: TFMTBCDField;
    CdsNFeMARGEM_VENDA: TBCDField;
    CdsNFeVALOR_COMISSAO: TFMTBCDField;
    CdsNFeTOTAL_GERAL: TFMTBCDField;
    CdsNFeCOO: TIntegerField;
    CdsNFeCCF: TIntegerField;
    CdsNFeGNF: TIntegerField;
    CdsNFeDAV: TStringField;
    CdsNFeCNPJCPF: TStringField;
    CdsNFeINSCEST: TStringField;
    CdsNFeVALOR_TROCO: TFMTBCDField;
    CdsNFeCAIXA: TStringField;
    CdsNFeIDEMPRESA: TIntegerField;
    CdsNFeCHEVE_NFE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCancelNFe: TFrmCancelNFe;

implementation

uses uDmConexao, uLibrary, uDmNfe;

{$R *.dfm}

procedure TFrmCancelNFe.FormShow(Sender: TObject);
begin
  inherited;
  Datai.Date := PrimeiroDia(date());
  Dataf.Date := UltimoDia(Date());
  BitBtn1Click(Sender);
  DmNFe.AtualizaConfigAcBr;

end;

procedure TFrmCancelNFe.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CdsNFe.Close;
  CdsNFe.Params.ParamByName('pDatai').AsDateTime := Datai.Date;
  CdsNFe.Params.ParamByName('pDataf').AsDateTime := Dataf.Date;
  CdsNFe.Open;
  DBGrid1.SetFocus;
  
end;

procedure TFrmCancelNFe.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  //
  if CdsNFe.RecordCount = 0 then
  begin
    ShowMessage('É necessário seleciona NFe!');
    Abort;
  end;
  if (EdtProtocolo.Text = '') or (EdtJustifica.Text = '') then
  begin
    ShowMessage('É necessário informar o Protocolo e Justificativa!');
    Abort;
  end;
  //
  try
    DmNFe.ACBrNFe1.WebServices.Cancelamento.NFeChave      := CdsNFeCHEVE_NFE.AsString;
    DmNFe.ACBrNFe1.WebServices.Cancelamento.Protocolo     := EdtProtocolo.Text;
    DmNFe.ACBrNFe1.WebServices.Cancelamento.Justificativa := EdtJustifica.Text;
    DmNFe.ACBrNFe1.WebServices.Cancelamento.Executar;
  except
    ShowMessage('Erro ao cancelar NFe. Verifique!');
  end;
  
end;

procedure TFrmCancelNFe.ActFecharExecute(Sender: TObject);
begin
  inherited;
  Close;
  
end;

end.
