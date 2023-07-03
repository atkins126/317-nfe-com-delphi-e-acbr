unit uDmNfe;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  Windows, Messages, Variants, Graphics, Controls, Forms, ExtCtrls,
  ComCtrls, ImgList, Dialogs, Menus, ACBrNFe, IniFiles, pcnConversao,
  ACBrNFeDANFEClass, ACBrNFeDANFERave, ACBrNFeDANFeQRClass;

type
  TDmNFe = class(TDataModule)
    QryPedidos: TSQLQuery;
    QryPedidoItens: TSQLQuery;
    DspPedidos: TDataSetProvider;
    DspPedidoItens: TDataSetProvider;
    CdsPedidos: TClientDataSet;
    CdsPedidoItens: TClientDataSet;
    QryContatos: TSQLQuery;
    DspContatos: TDataSetProvider;
    CdsContatos: TClientDataSet;
    QryProdutos: TSQLQuery;
    QryProdutosID: TIntegerField;
    QryProdutosDESCRICAO: TStringField;
    QryProdutosREFERENCIA: TStringField;
    QryProdutosEAN13: TStringField;
    QryProdutosDUN14: TStringField;
    QryProdutosGRUPO: TIntegerField;
    QryProdutosSUBGRUPO1: TIntegerField;
    QryProdutosSUBGRUPO2: TIntegerField;
    QryProdutosUNIDADE: TStringField;
    QryProdutosQUANT_CAIXA: TFMTBCDField;
    QryProdutosALIQUOTA_ICMS: TBCDField;
    QryProdutosALIQUOTA_IPI: TBCDField;
    QryProdutosCLASIFICACAO_FISCAL: TIntegerField;
    QryProdutosESTOQUE: TFMTBCDField;
    QryProdutosPRECO_COMPRA: TFMTBCDField;
    QryProdutosPRECO_VENDA: TFMTBCDField;
    DspProdutos: TDataSetProvider;
    CdsProdutos: TClientDataSet;
    CdsProdutosID: TIntegerField;
    CdsProdutosDESCRICAO: TStringField;
    CdsProdutosREFERENCIA: TStringField;
    CdsProdutosEAN13: TStringField;
    CdsProdutosDUN14: TStringField;
    CdsProdutosGRUPO: TIntegerField;
    CdsProdutosSUBGRUPO1: TIntegerField;
    CdsProdutosSUBGRUPO2: TIntegerField;
    CdsProdutosUNIDADE: TStringField;
    CdsProdutosQUANT_CAIXA: TFMTBCDField;
    CdsProdutosALIQUOTA_ICMS: TBCDField;
    CdsProdutosALIQUOTA_IPI: TBCDField;
    CdsProdutosCLASIFICACAO_FISCAL: TIntegerField;
    CdsProdutosESTOQUE: TFMTBCDField;
    CdsProdutosPRECO_COMPRA: TFMTBCDField;
    CdsProdutosPRECO_VENDA: TFMTBCDField;
    QryProdutosTIPOPROD: TIntegerField;
    CdsProdutosTIPOPROD: TIntegerField;
    QryProdutosPERC_DESC: TBCDField;
    QryProdutosPERC_COM: TBCDField;
    CdsProdutosPERC_DESC: TBCDField;
    CdsProdutosPERC_COM: TBCDField;
    QryProdutosATIVO: TStringField;
    CdsProdutosATIVO: TStringField;
    QryPedidoItensID: TIntegerField;
    QryPedidoItensIDPEDIDO: TIntegerField;
    QryPedidoItensIDPRODUTO: TIntegerField;
    QryPedidoItensQUANTIDADE: TFMTBCDField;
    QryPedidoItensVALOR: TFMTBCDField;
    QryPedidoItensDESCONTO: TFMTBCDField;
    QryPedidoItensACRESCIMO: TFMTBCDField;
    QryPedidoItensVALOR_TOTAL: TFMTBCDField;
    CdsPedidoItensID: TIntegerField;
    CdsPedidoItensIDPEDIDO: TIntegerField;
    CdsPedidoItensIDPRODUTO: TIntegerField;
    CdsPedidoItensQUANTIDADE: TFMTBCDField;
    CdsPedidoItensVALOR: TFMTBCDField;
    CdsPedidoItensDESCONTO: TFMTBCDField;
    CdsPedidoItensACRESCIMO: TFMTBCDField;
    CdsPedidoItensVALOR_TOTAL: TFMTBCDField;
    QryPedidoItensDESCRICAO: TStringField;
    CdsPedidoItensDESCRICAO: TStringField;
    QryContatosID: TIntegerField;
    QryContatosNOME: TStringField;
    QryContatosENDERECO: TStringField;
    QryContatosNUM_END: TStringField;
    QryContatosBAIRRO_END: TStringField;
    QryContatosCIDADE_END: TStringField;
    QryContatosCEP_END: TStringField;
    QryContatosTELEFONE: TStringField;
    QryContatosTELEFAX: TStringField;
    QryContatosCELULAR: TStringField;
    QryContatosCNPJ_CPF: TStringField;
    QryContatosINSC_RG: TStringField;
    QryContatosEND_ENTREGA: TStringField;
    QryContatosNUM_END_ENTREGA: TStringField;
    QryContatosBAIRRO_END_ENTREGA: TStringField;
    QryContatosCID_END_ENTREGA: TStringField;
    QryContatosCEP_END_ENTREGA: TStringField;
    QryContatosLOCAL_TRAB: TStringField;
    QryContatosEND_LOCAL_TRAB: TStringField;
    QryContatosTELEFONE_TRAB: TStringField;
    QryContatosFILIACAO_PAI: TStringField;
    QryContatosFILIACAO_MAE: TStringField;
    QryContatosDATA_CAD: TSQLTimeStampField;
    QryContatosDATA_NASC: TSQLTimeStampField;
    QryContatosLIMITE_CRED: TFMTBCDField;
    QryContatosCONTATO: TStringField;
    QryContatosTIPO_CONTATO: TStringField;
    QryContatosATIVO: TStringField;
    QryContatosOBSERVACOES: TMemoField;
    QryContatosCOMPLEMENTO: TStringField;
    QryContatosCOMPL_ENT: TStringField;
    QryContatosUF_END: TStringField;
    QryContatosUF_END_ENT: TStringField;
    QryContatosSITE: TStringField;
    QryContatosEMAIL: TStringField;
    CdsContatosID: TIntegerField;
    CdsContatosNOME: TStringField;
    CdsContatosENDERECO: TStringField;
    CdsContatosNUM_END: TStringField;
    CdsContatosBAIRRO_END: TStringField;
    CdsContatosCIDADE_END: TStringField;
    CdsContatosCEP_END: TStringField;
    CdsContatosTELEFONE: TStringField;
    CdsContatosTELEFAX: TStringField;
    CdsContatosCELULAR: TStringField;
    CdsContatosCNPJ_CPF: TStringField;
    CdsContatosINSC_RG: TStringField;
    CdsContatosEND_ENTREGA: TStringField;
    CdsContatosNUM_END_ENTREGA: TStringField;
    CdsContatosBAIRRO_END_ENTREGA: TStringField;
    CdsContatosCID_END_ENTREGA: TStringField;
    CdsContatosCEP_END_ENTREGA: TStringField;
    CdsContatosLOCAL_TRAB: TStringField;
    CdsContatosEND_LOCAL_TRAB: TStringField;
    CdsContatosTELEFONE_TRAB: TStringField;
    CdsContatosFILIACAO_PAI: TStringField;
    CdsContatosFILIACAO_MAE: TStringField;
    CdsContatosDATA_CAD: TSQLTimeStampField;
    CdsContatosDATA_NASC: TSQLTimeStampField;
    CdsContatosLIMITE_CRED: TFMTBCDField;
    CdsContatosCONTATO: TStringField;
    CdsContatosTIPO_CONTATO: TStringField;
    CdsContatosATIVO: TStringField;
    CdsContatosOBSERVACOES: TMemoField;
    CdsContatosCOMPLEMENTO: TStringField;
    CdsContatosCOMPL_ENT: TStringField;
    CdsContatosUF_END: TStringField;
    CdsContatosUF_END_ENT: TStringField;
    CdsContatosSITE: TStringField;
    CdsContatosEMAIL: TStringField;
    QryPedidosID: TIntegerField;
    QryPedidosPEDIDO_NUM: TStringField;
    QryPedidosIDCLIENTE: TIntegerField;
    QryPedidosID_VENDEDOR: TIntegerField;
    QryPedidosDATA_PEDIDO: TSQLTimeStampField;
    QryPedidosHORA_PEDIDO: TSQLTimeStampField;
    QryPedidosDATA_ENTREGA: TSQLTimeStampField;
    QryPedidosHORA_ENTREGA: TSQLTimeStampField;
    QryPedidosID_CLASSIFICACAO: TIntegerField;
    QryPedidosCONFIRMADA: TStringField;
    QryPedidosENTREGUE: TStringField;
    QryPedidosVALOR: TFMTBCDField;
    QryPedidosDESCONTO: TFMTBCDField;
    QryPedidosACRESCIMO: TFMTBCDField;
    QryPedidosOUTRAS_DESPESAS: TFMTBCDField;
    QryPedidosVALOR_TOTAL: TFMTBCDField;
    QryPedidosCANCELADO: TStringField;
    QryPedidosID_FORMAPAG: TIntegerField;
    QryPedidosEND_ENTREGA: TStringField;
    QryPedidosNUM_END_ENTREGA: TStringField;
    QryPedidosCOMPL_END_ENTREGA: TStringField;
    QryPedidosBAIRRO_END_ENTREGA: TStringField;
    QryPedidosCID_END_ENTREGA: TStringField;
    QryPedidosUF_END_ENTREGA: TStringField;
    QryPedidosCEP_END_ENTREGA: TStringField;
    QryPedidosCLIENTE: TStringField;
    QryPedidosTIPODOC: TIntegerField;
    QryPedidosTIPO_PEDIDO: TIntegerField;
    CdsPedidosID: TIntegerField;
    CdsPedidosPEDIDO_NUM: TStringField;
    CdsPedidosIDCLIENTE: TIntegerField;
    CdsPedidosID_VENDEDOR: TIntegerField;
    CdsPedidosDATA_PEDIDO: TSQLTimeStampField;
    CdsPedidosHORA_PEDIDO: TSQLTimeStampField;
    CdsPedidosDATA_ENTREGA: TSQLTimeStampField;
    CdsPedidosHORA_ENTREGA: TSQLTimeStampField;
    CdsPedidosID_CLASSIFICACAO: TIntegerField;
    CdsPedidosCONFIRMADA: TStringField;
    CdsPedidosENTREGUE: TStringField;
    CdsPedidosVALOR: TFMTBCDField;
    CdsPedidosDESCONTO: TFMTBCDField;
    CdsPedidosACRESCIMO: TFMTBCDField;
    CdsPedidosOUTRAS_DESPESAS: TFMTBCDField;
    CdsPedidosVALOR_TOTAL: TFMTBCDField;
    CdsPedidosCANCELADO: TStringField;
    CdsPedidosID_FORMAPAG: TIntegerField;
    CdsPedidosEND_ENTREGA: TStringField;
    CdsPedidosNUM_END_ENTREGA: TStringField;
    CdsPedidosCOMPL_END_ENTREGA: TStringField;
    CdsPedidosBAIRRO_END_ENTREGA: TStringField;
    CdsPedidosCID_END_ENTREGA: TStringField;
    CdsPedidosUF_END_ENTREGA: TStringField;
    CdsPedidosCEP_END_ENTREGA: TStringField;
    CdsPedidosCLIENTE: TStringField;
    CdsPedidosTIPODOC: TIntegerField;
    CdsPedidosTIPO_PEDIDO: TIntegerField;
    QryProdutosTIPO_PRODUTO: TIntegerField;
    CdsProdutosTIPO_PRODUTO: TIntegerField;
    QryProdutosMARGEM_LUCRO: TBCDField;
    CdsProdutosMARGEM_LUCRO: TBCDField;
    QryPedidosVALOR_REAL: TFMTBCDField;
    QryPedidosMARGEM_VENDA: TBCDField;
    CdsPedidosVALOR_REAL: TFMTBCDField;
    CdsPedidosMARGEM_VENDA: TBCDField;
    QryPedidoItensMARGEM: TBCDField;
    CdsPedidoItensMARGEM: TBCDField;
    QryPedidoItensVALOR_REAL: TFMTBCDField;
    CdsPedidoItensVALOR_REAL: TFMTBCDField;
    QryPedidoItensTIPOPROD: TIntegerField;
    CdsPedidoItensTIPOPROD: TIntegerField;
    QryProdutosCONTROLAR_ESTOQUE: TStringField;
    CdsProdutosCONTROLAR_ESTOQUE: TStringField;
    QryPedidosVALOR_COMISSAO: TFMTBCDField;
    QryPedidosTOTAL_GERAL: TFMTBCDField;
    QryPedidosCOO: TIntegerField;
    QryPedidosCCF: TIntegerField;
    QryPedidosGNF: TIntegerField;
    CdsPedidosVALOR_COMISSAO: TFMTBCDField;
    CdsPedidosTOTAL_GERAL: TFMTBCDField;
    CdsPedidosCOO: TIntegerField;
    CdsPedidosCCF: TIntegerField;
    CdsPedidosGNF: TIntegerField;
    QryPedidosDAV: TStringField;
    CdsPedidosDAV: TStringField;
    QryPedidosCNPJCPF: TStringField;
    QryPedidosINSCEST: TStringField;
    CdsPedidosCNPJCPF: TStringField;
    CdsPedidosINSCEST: TStringField;
    QryPedidoItensCANCELADO: TStringField;
    CdsPedidoItensCANCELADO: TStringField;
    QryProdutosTRIBUTACAO: TIntegerField;
    CdsProdutosTRIBUTACAO: TIntegerField;
    QryProdutosFRACIONADO: TStringField;
    CdsProdutosFRACIONADO: TStringField;
    QryPedidoItensNUM_ITEM: TIntegerField;
    CdsPedidoItensNUM_ITEM: TIntegerField;
    QryPedidoItensEAN13: TStringField;
    CdsPedidoItensEAN13: TStringField;
    QryPedidosVALOR_TROCO: TFMTBCDField;
    CdsPedidosVALOR_TROCO: TFMTBCDField;
    QryPedidosCAIXA: TStringField;
    CdsPedidosCAIXA: TStringField;
    QryProdutosCODIGO_NCM: TStringField;
    QryProdutosREDUCAO_BASE: TBCDField;
    QryProdutosBASE_ST: TFMTBCDField;
    CdsProdutosCODIGO_NCM: TStringField;
    CdsProdutosREDUCAO_BASE: TBCDField;
    CdsProdutosBASE_ST: TFMTBCDField;
    QryPedidosIDEMPRESA: TIntegerField;
    CdsPedidosIDEMPRESA: TIntegerField;
    QryConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    ACBrNFe1: TACBrNFe;
    QryProdutosMVA: TBCDField;
    CdsProdutosMVA: TBCDField;
    QryTributo: TSQLQuery;
    QryTributoTIPOPROD: TIntegerField;
    QryTributoALIQUOTA_ICMS: TBCDField;
    QryTributoBASE_ST: TFMTBCDField;
    QryTributoREDUCAO_BASE: TBCDField;
    QryTributoMVA: TBCDField;
    QryTributoALIQUOTA_IPI: TBCDField;
    QryTributoQUANT: TFMTBCDField;
    QryTributoVALOR: TFMTBCDField;
    DspTributo: TDataSetProvider;
    CdsTributo: TClientDataSet;
    CdsTributoTIPOPROD: TIntegerField;
    CdsTributoALIQUOTA_ICMS: TBCDField;
    CdsTributoBASE_ST: TFMTBCDField;
    CdsTributoREDUCAO_BASE: TBCDField;
    CdsTributoMVA: TBCDField;
    CdsTributoALIQUOTA_IPI: TBCDField;
    CdsTributoQUANT: TFMTBCDField;
    CdsTributoVALOR: TFMTBCDField;
    QryTributoVAL_ICMS: TFMTBCDField;
    CdsTributoVAL_ICMS: TFMTBCDField;
    QryPedidosCHEVE_NFE: TStringField;
    CdsPedidosCHEVE_NFE: TStringField;
    ACBrNFeDANFEQR1: TACBrNFeDANFEQR;
    procedure DataModuleCreate(Sender: TObject);
    procedure CdsContatosNewRecord(DataSet: TDataSet);
    procedure DspContatosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure CdsEnderecoNewRecord(DataSet: TDataSet);
    procedure CdsProdutosNewRecord(DataSet: TDataSet);
    procedure CdsPedidosNewRecord(DataSet: TDataSet);
    procedure CdsPedidoItensNewRecord(DataSet: TDataSet);
    procedure CdsProdutosBeforePost(DataSet: TDataSet);
    procedure CdsPedidosBeforePost(DataSet: TDataSet);
    procedure CdsPedidoItensBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    sControleReg : String;
    Procedure FormataCampos;
  public
    { Public declarations }
    sNumItem     : Integer;
    sTipoConta   : Integer;
    sProcessoQui : Integer;
    sArquivo     : TextFile;
    sTotalReg    : Integer;
    sLBloco,sLArquivo,sLRegistro : Integer;
    // configurações do AcBr
    sFormas, sAmbiente : Integer;
    sSalvaArq : Boolean;
    sLogoMarca, sPathArq, sCertificado, sSenha, sSerial,
    sRazao, sFantasia, sCNPJ, sIE, sEndereco, sNum,
    sBairro, sCidade, sCEP, sUF, sCodMun, sUFWS, sHost,
    sPorta, sUsuario, sSenhaWS, sFone, sEmailEmitente : String;
    sSMPTHost,sSMTPPort,sSMTPUsu,sSMTPPass : String;
    //
    function Dados_Contato(fID: Integer):Boolean; overload;
    function Dados_Contato(fTipoContato: String):Boolean; overload;
    function Dados_Produto(fID:Integer):Boolean;overload;
    function Dados_Produto(fEAN13:String):Boolean;overload;
    function Dados_Produto:Boolean;overload;
    function Dados_Pedido(fID:Integer):Boolean;overload;
    function Dados_Pedido(pDatai,pDataf:TDateTime):Boolean;overload;
    function Dados_PedidoItens(fID:Integer):boolean;
    function Dados_Tributos(fID:Integer):boolean;
    function VerificaCampos:Boolean;
    procedure PreencheDadosCliente(pTipo:Integer);
    function VerificaDadosProduto:Boolean;
    procedure LeArqIni;
    procedure GravaArqIni;
    procedure AtualizaConfigAcBr;
    procedure GravaChaveNFEPedido(pChaveNFe, pNumPed: String);

  end;

var
  DmNFe: TDmNFe;

implementation

uses uDmConexao, uLibrary;

{$R *.dfm}

procedure TDmNFe.DataModuleCreate(Sender: TObject);
begin
  // formata campos de data hora e valor
  FormataCampos;

end;

procedure TDmNFe.FormataCampos;
begin
  // Contatos
  CdsContatosDATA_CAD.DisplayFormat               := 'dd/mm/yyyy';
  CdsContatos.FieldByName('DATA_CAD').EditMask    := '!99/99/0000;1; ';
  CdsContatosDATA_NASC.DisplayFormat              := 'dd/mm/yyyy';
  CdsContatos.FieldByName('DATA_NASC').EditMask   := '!99/99/0000;1; ';
  CdsContatosLIMITE_CRED.DisplayFormat := '###,###,###,##0.00';
  CdsContatosLIMITE_CRED.EditFormat    := '###,###,###,##0.00';
  // Pedidos
  CdsPedidosDATA_PEDIDO.DisplayFormat             := 'dd/mm/yyyy';
  CdsPedidos.FieldByName('DATA_PEDIDO').EditMask  := '!99/99/0000;1; ';
  CdsPedidosDATA_ENTREGA.DisplayFormat            := 'dd/mm/yyyy';
  CdsPedidos.FieldByName('DATA_ENTREGA').EditMask := '!99/99/0000;1; ';
  CdsPedidosHORA_PEDIDO.DisplayFormat             := 'hh:mm';
  CdsPedidosHORA_PEDIDO.EditMask                  := '';
  CdsPedidosHORA_ENTREGA.DisplayFormat            := 'hh:mm';
  CdsPedidosHORA_ENTREGA.EditMask                 := '';
  CdsPedidosVALOR.DisplayFormat           := '###,###,###,##0.00';
  CdsPedidosVALOR.EditFormat              := '###,###,###,##0.00';
  CdsPedidosDESCONTO.DisplayFormat        := '###,###,###,##0.00';
  CdsPedidosDESCONTO.EditFormat           := '###,###,###,##0.00';
  CdsPedidosACRESCIMO.DisplayFormat       := '###,###,###,##0.00';
  CdsPedidosACRESCIMO.EditFormat          := '###,###,###,##0.00';
  CdsPedidosOUTRAS_DESPESAS.DisplayFormat := '###,###,###,##0.00';
  CdsPedidosOUTRAS_DESPESAS.EditFormat    := '###,###,###,##0.00';
  CdsPedidosVALOR_TOTAL.DisplayFormat     := '###,###,###,##0.00';
  CdsPedidosVALOR_TOTAL.EditFormat        := '###,###,###,##0.00';
  // Itens de pedido
  CdsPedidoItensVALOR.DisplayFormat       := '###,###,###,##0.00';
  CdsPedidoItensDESCONTO.DisplayFormat    := '###,###,###,##0.00';
  CdsPedidoItensACRESCIMO.DisplayFormat   := '###,###,###,##0.00';
  CdsPedidoItensVALOR_TOTAL.DisplayFormat := '###,###,###,##0.00';
  // produtos
  CdsProdutosPRECO_COMPRA.DisplayFormat  := '###,###,###,##0.00';
  CdsProdutosPRECO_VENDA.DisplayFormat   := '###,###,###,##0.00';
  CdsProdutosBASE_ST.DisplayFormat       := '###,###,###,##0.00';
  CdsProdutosALIQUOTA_ICMS.DisplayFormat := '##,##0.00';
  CdsProdutosALIQUOTA_IPI.DisplayFormat  := '##,##0.00';
  CdsProdutosMARGEM_LUCRO.DisplayFormat  := '##,##0.00';
  CdsProdutosREDUCAO_BASE.DisplayFormat  := '##,##0.00';

end;

function TDmNFe.Dados_Contato(fID: Integer): Boolean;
begin
  QryContatos.Close;
  CdsContatos.Close;
  QryContatos.SQL.Clear;
  QryContatos.SQL.Add('select * from contato');
  QryContatos.SQL.Add('where contato.id = :pID');
  CdsContatos.FetchParams;
  CdsContatos.Params.ParamByName('pID').AsInteger := fID;
  CdsContatos.Open;
  //
  Result := false;
  if CdsContatos.RecordCount > 0 then
    Result := true;

end;

procedure TDmNFe.CdsContatosNewRecord(DataSet: TDataSet);
begin
  if pNumCli > 0 then
  begin
    if Retorna_Total_Contatos >= pNumCli then
    begin
      MessageDlg('SoftWare de Demonstração!'+#13+#10+
                 'Não é permitido ultrapassar o limite de contatos estabelecido,'+#13+#10+
                 'Máximo '+IntToStr(pNumCli)+'. Entre em contato com o suporte técnico!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  DataSet.FieldByName('ID').AsInteger          := GenID('CONTATO');
  DataSet.FieldByName('ATIVO').AsString        := 'T';
  DataSet.FieldByName('DATA_CAD').AsDateTime   := SVData;
  DataSet.FieldByName('TIPO_CONTATO').AsString := 'A';

end;

procedure TDmNFe.DspContatosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'CONTATO';

end;

procedure TDmNFe.CdsEnderecoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger := GenID('ENDERECO');
  
end;

function TDmNFe.Dados_Produto(fID: Integer): Boolean;
begin
  CdsProdutos.Close;
  QryProdutos.Close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  QryProdutos.SQL.Add('where produtos.id = :pID');
  //
  CdsProdutos.FetchParams;
  CdsProdutos.Params.ParamByName('pID').AsInteger := fID;
  CdsProdutos.Open;
  //
  Result := false;
  if CdsProdutos.RecordCount > 0 then
     Result := true;

end;

function TDmNFe.Dados_Produto(fEAN13: String): Boolean;
begin
  CdsProdutos.Close;
  QryProdutos.Close;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  QryProdutos.SQL.Add('where produtos.EAN13 = :pEAN13');
  //
  CdsProdutos.FetchParams;
  CdsProdutos.Params.ParamByName('pEAN13').AsString := fEAN13;
  CdsProdutos.Open;
  //
  Result := false;
  if CdsProdutos.RecordCount > 0 then
     Result := true;

end;

function TDmNFe.Dados_Produto: Boolean;
begin
  CdsProdutos.Close;
  CdsProdutos.Params.Clear;
  QryProdutos.Close;
  QryProdutos.Params.Clear;
  QryProdutos.SQL.Clear;
  QryProdutos.SQL.Add('select * from produtos');
  //
  CdsProdutos.FetchParams;
  CdsProdutos.Open;
  //
  Result := false;
  if CdsProdutos.RecordCount > 0 then
     Result := true;

end;

procedure TDmNFe.CdsProdutosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsInteger               := GenID('PRODUTOS');
  DataSet.FieldByName('ATIVO').AsString             := 'T';
  DataSet.FieldByName('CONTROLAR_ESTOQUE').AsString := 'S';
  DataSet.FieldByName('PERC_DESC').AsFloat          := 0;
  DataSet.FieldByName('PERC_COM').AsFloat           := 0;
  DataSet.FieldByName('PRECO_COMPRA').AsFloat       := 0;
  DataSet.FieldByName('PRECO_VENDA').AsFloat        := 0;
  DataSet.FieldByName('ESTOQUE').AsFloat            := 0;
  DataSet.FieldByName('ALIQUOTA_ICMS').AsFloat      := 0;
  DataSet.FieldByName('ALIQUOTA_IPI').AsFloat       := 0;
  DataSet.FieldByName('QUANT_CAIXA').AsFloat        := 1;
  DataSet.FieldByName('TIPOPROD').AsFloat           := 0;
  DataSet.FieldByName('TIPO_PRODUTO').AsFloat       := 0;
  DataSet.FieldByName('MARGEM_LUCRO').AsFloat       := 30;

end;

function TDmNFe.Dados_Pedido(fID: Integer): Boolean;
begin
  CdsPedidos.Close;
  QryPedidos.Close;
  QryPedidos.SQL.Clear;
  QryPedidos.SQL.Add('select * from pedido');
  QryPedidos.SQL.Add('where pedido.id = :pID');
  // parametros
  CdsPedidos.FetchParams;
  CdsPedidos.Params.ParamByName('pID').AsInteger := fID;
  CdsPedidos.Open;
  //
  Result := false;
  if CdsPedidos.RecordCount > 0 then
     Result := true;

end;

function TDmNFe.Dados_Pedido(pDatai,pDataf:TDateTime):Boolean;
begin
  CdsPedidos.Close;
  QryPedidos.Close;
  QryPedidos.SQL.Clear;
  QryPedidos.SQL.Add('select * from pedido');
  QryPedidos.SQL.Add('where pedido.data_pedido between :pDatai and :pdataf');
  QryPedidos.SQL.Add('and pedido.confirmada = '+QuotedStr('S'));
  QryPedidos.SQL.Add('and pedido.coo > 0');
  // parametros
  CdsPedidos.FetchParams;
  CdsPedidos.Params.ParamByName('pDatai').AsDateTime := pDatai;
  CdsPedidos.Params.ParamByName('pDataf').AsDateTime := pDataf;
  CdsPedidos.Open;
  //
  Result := false;
  if CdsPedidos.RecordCount > 0 then
     Result := true;

end;

function TDmNFe.Dados_PedidoItens(fID: Integer): boolean;
begin
  CdsPedidoItens.Close;
  CdsPedidoItens.Params.ParamByName('pID').AsInteger := fID;
  CdsPedidoItens.Open;
  //
  Result := false;
  if CdsPedidoItens.RecordCount > 0 then
     Result := true;

end;

function TDmNFe.Dados_Tributos(fID: Integer): boolean;
begin
  CdsTributo.Close;
  CdsTributo.Params.ParamByName('pID').AsInteger := fID;
  CdsTributo.Open;
  //
  Result := false;
  if CdsTributo.RecordCount > 0 then
     Result := true;

end;

procedure TDmNFe.CdsPedidosNewRecord(DataSet: TDataSet);
var aNumPed : Integer;
begin
  aNumPed := GenID('PEDIDO');
  DataSet.FieldByName('ID').AsInteger               := aNumPed;
  DataSet.FieldByName('PEDIDO_NUM').AsString        := ZeroEsquerda(IntToStr(aNumPed),10);
  DataSet.FieldByName('DATA_PEDIDO').AsDateTime     := SVData;
  DataSet.FieldByName('HORA_PEDIDO').AsDateTime     := SVHora;
  DataSet.FieldByName('IDEMPRESA').AsInteger        := sIDEmpresa;
  DataSet.FieldByName('VALOR').AsCurrency           := 0;
  DataSet.FieldByName('VALOR_REAL').AsCurrency      := 0;
  DataSet.FieldByName('DESCONTO').AsCurrency        := 0;
  DataSet.FieldByName('ACRESCIMO').AsCurrency       := 0;
  DataSet.FieldByName('OUTRAS_DESPESAS').AsCurrency := 0;
  DataSet.FieldByName('VALOR_TOTAL').AsCurrency     := 0;
  DataSet.FieldByName('MARGEM_VENDA').AsCurrency    := 0;
  DataSet.FieldByName('TIPODOC').AsInteger          := 0;
  DataSet.FieldByName('IDCLIENTE').AsInteger        := 1;
  DataSet.FieldByName('ID_VENDEDOR').AsInteger      := 1;
  DataSet.FieldByName('IDEMPRESA').AsInteger        := 1;
  DataSet.FieldByName('ID_CLASSIFICACAO').AsInteger := 1;
  DataSet.FieldByName('ID_FORMAPAG').AsInteger      := 1;
  DataSet.FieldByName('CONFIRMADA').AsString        := 'N';
  DataSet.FieldByName('ENTREGUE').AsString          := 'N';
  DataSet.FieldByName('CANCELADO').AsString         := 'N';
  DataSet.FieldByName('DAV').AsString               := 'N';
  sNumItem := 0;

end;

function TDmNFe.VerificaCampos: Boolean;
begin
  if (CdsPedidosIDCLIENTE.IsNull) or (CdsPedidosIDCLIENTE.AsInteger = 0) or
     (CdsPedidosTIPODOC.IsNull) or (CdsPedidosTIPODOC.AsInteger < 0) or
     (CdsPedidosPEDIDO_NUM.IsNull) or (CdsPedidosPEDIDO_NUM.AsString = '') then
  begin
    MessageDlg('Os campos indicados com * são de preenchimento obrigatórios.', mtWarning, [mbOK], 0);
    Abort;
  end;
  
end;

procedure TDmNFe.PreencheDadosCliente(pTipo:Integer);
begin
  if pTipo = 0 then // tabela de pedidos
  begin
    CdsPedidos.FieldByName('CLIENTE').AsString            := CdsContatos.FieldByname('NOME').AsString;
    CdsPedidos.FieldByName('END_ENTREGA').AsString        := CdsContatos.FieldByname('END_ENTREGA').AsString;
    CdsPedidos.FieldByName('NUM_END_ENTREGA').AsString    := CdsContatos.FieldByname('NUM_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('COMPL_END_ENTREGA').AsString  := CdsContatos.FieldByname('COMPL_ENT').AsString;
    CdsPedidos.FieldByName('BAIRRO_END_ENTREGA').AsString := CdsContatos.FieldByname('BAIRRO_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('CID_END_ENTREGA').AsString    := CdsContatos.FieldByname('CID_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('UF_END_ENTREGA').AsString     := CdsContatos.FieldByname('UF_END_ENT').AsString;
    CdsPedidos.FieldByName('CEP_END_ENTREGA').AsString    := CdsContatos.FieldByname('CEP_END_ENTREGA').AsString;
    CdsPedidos.FieldByName('CNPJCPF').AsString := CdsContatos.FieldByname('CNPJ_CPF').AsString;
    CdsPedidos.FieldByName('INSCEST').AsString := CdsContatos.FieldByname('INSC_RG').AsString;
  end;
end;

procedure TDmNFe.CdsPedidoItensNewRecord(DataSet: TDataSet);
begin
  Inc(sNumItem);
  DataSet.FieldByName('ID').AsInteger        := GenID('PEDIDO_ITENS');
  DataSet.FieldByName('IDPEDIDO').AsInteger  := CdsPedidosID.AsInteger;
  DataSet.FieldByName('VALOR').AsFloat       := 0;
  DataSet.FieldByName('VALOR_REAL').AsFloat  := 0;
  DataSet.FieldByName('DESCONTO').AsFloat    := 0;
  DataSet.FieldByName('ACRESCIMO').AsFloat   := 0;
  DataSet.FieldByName('VALOR_TOTAL').AsFloat := 0;
  DataSet.FieldByName('CANCELADO').AsString  := 'N';
  DataSet.FieldByName('NUM_ITEM').AsInteger  := sNumItem;

end;

procedure TDmNFe.CdsProdutosBeforePost(DataSet: TDataSet);
var aIndice, aValorVenda : Double;
begin
  if DataSet.FieldByName('PRECO_VENDA').AsFloat = 0 then
  begin
    if sTipoCalcPerc = 0 then // mutiplicação
    begin
      aIndice     := Retorna_IndicePercentual('P',DataSet.FieldByName('MARGEM_LUCRO').AsFloat);
      aValorVenda := DataSet.FieldByName('PRECO_COMPRA').AsFloat*aIndice;
    end
    else if sTipoCalcPerc = 1 then // divisão
    begin
      aIndice     := Retorna_IndicePercentual('N',DataSet.FieldByName('MARGEM_LUCRO').AsFloat);
      aValorVenda := DataSet.FieldByName('PRECO_COMPRA').AsFloat/aIndice;
    end;
    DataSet.FieldByName('PRECO_VENDA').AsFloat := aValorVenda;
  end;

end;

procedure TDmNFe.CdsPedidosBeforePost(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('IDCLIENTE').IsNull) or
     (DataSet.FieldByName('IDCLIENTE').AsInteger < 0) then
  begin
    MessageDlg('É necessário informar o cliente!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TDmNFe.CdsPedidoItensBeforePost(DataSet: TDataSet);
var aIndiceProduto:Double;
begin
  if sEstoqueNegativo = 'N' then
  begin
    if not VerificaEstoqueProduto(DataSet.FieldByName('IDPRODUTO').AsInteger,
                                  DataSet.FieldByName('QUANTIDADE').AsFloat) then
    begin
      MessageDlg('O produto não pode fica com estoque negativo. Verifique!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  //
  if (DataSet.FieldByName('idproduto').AsInteger = 0) or
     (DataSet.FieldByName('idproduto').IsNull) then
  begin
    MessageDlg('É necessário selecionar o produto!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataSet.FieldByName('quantidade').AsFloat = 0) or
     (DataSet.FieldByName('valor').AsFloat = 0) then
  begin
    MessageDlg('É necessário informar a quantidade e o preco do produto!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  // localiza produto no cadastro
  Dados_Produto(DataSet.FieldByName('idproduto').AsInteger);
  // Verifica Preco Menor que preço de compra
  if sPrecoNegativo = 'S' then
  begin
    if DataSet.FieldByName('VALOR').AsCurrency < CdsProdutos.FieldByname('PRECO_COMPRA').AsCurrency then
    begin
      MessageDlg('O Preco de Venda não pode ser menor que preço de compra!!!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
  // calcula margem do produto
  if DataSet.FieldByName('VALOR').AsCurrency <> DataSet.FieldByName('VALOR_REAL').AsCurrency then
  begin
    aIndiceProduto := CdsProdutos.FieldByname('MARGEM_LUCRO').AsFloat;
    aIndiceProduto := (DataSet.FieldByname('VALOR').AsCurrency-
                       CdsProdutos.FieldByname('PRECO_COMPRA').AsCurrency)/
                       DataSet.FieldByname('VALOR').AsCurrency*100;
    aIndiceProduto := TruncaValor(aIndiceProduto,2);
    DataSet.FieldByName('MARGEM').AsCurrency := TruncaValor(aIndiceProduto,2);
  end
  else
  begin
    DataSet.FieldByName('MARGEM').AsCurrency := TruncaValor(CdsProdutos.FieldByname('MARGEM_LUCRO').AsCurrency,2);
  end;
  DataSet.FieldByName('VALOR_TOTAL').AsFloat := (((DataSet.FieldByName('QUANTIDADE').AsFloat * DataSet.FieldByName('VALOR').AsCurrency)-
                                                   DataSet.FieldByName('DESCONTO').AsFloat)+DataSet.FieldByName('ACRESCIMO').AsFloat);
  // grava preco de venda atualizado
  if sAtualizaPrecos = 'S' then
  begin
    if Abs(DataSet.FieldByName('VALOR').AsCurrency - CdsProdutos.FieldByName('PRECO_VENDA').AsCurrency) > 0.01 then
    begin
      Grava_PrecoProduto(DataSet.FieldByName('idproduto').AsInteger,1,DataSet.FieldByName('VALOR').AsCurrency);
    end;
  end;
end;

function TDmNFe.Dados_Contato(fTipoContato: String): Boolean;
begin
  // fTipoContato = C - Cliente
  //                F - Fornecedor
  //                A - Ambos
  QryContatos.Close;
  CdsContatos.Close;
  QryContatos.SQL.Clear;
  QryContatos.SQL.Add('select * from contato');
  QryContatos.SQL.Add('where (contato.tipo_contato = :pTipo');
  QryContatos.SQL.Add('or contato.tipo_contato = '+QuotedStr('A')+')');
  CdsContatos.FetchParams;
  CdsContatos.Params.ParamByName('pTipo').AsString := fTipoContato;
  CdsContatos.Open;
  //
  Result := false;
  if CdsContatos.RecordCount > 0 then
    Result := true;

end;

function TDmNFe.VerificaDadosProduto: Boolean;
begin
  Result := true;
  if (CdsProdutos.RecordCount > 0) then
  begin
    if (CdsProdutos.FieldByName('TRIBUTACAO').IsNull) then
    begin
      MessageDlg('Produto sem classificação. Verifique!!!', mtWarning, [mbOK], 0);
      Result := false;
    end;
    if (CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 2) or
       (CdsProdutos.FieldByName('TRIBUTACAO').AsInteger = 4) then
    begin
      if CdsProdutos.FieldByName('ALIQUOTA_ICMS').AsFloat <= 0 then
      begin
        MessageDlg('É necessário cadastrar a aliquota do produto!!!', mtWarning, [mbOK], 0);
        Result := false;
      end;
    end;
    // verifica valor de venda
    if CdsProdutos.FieldByName('PRECO_VENDA').AsFloat <= 0 then
    begin
      MessageDlg('Produto sem preço de venda. Verifique!!!', mtWarning, [mbOK], 0);
      Result := false;
    end
  end;
end;

procedure TDmNFe.LeArqIni;
var ArqINI : TIniFile;
    aux : String;
begin
  aux := ExtractFilePath(Application.ExeName)+'config.ini';
  ArqINI := TIniFile.Create(aux);
  // GERAL
  sFormas      := ArqINI.ReadInteger('GERAL','FORMA_EMISSAO',0);
  sLogoMarca   := ArqINI.ReadString('GERAL','LOGOMARCA','C:\logo.jpg');
  sSalvaArq    := ArqINI.ReadBool('GERAL','SALVA_ARQUIVO',true);
  sPathArq     := ArqINI.ReadString('GERAL','PATH_ARQUIVO','C:\');
  // CERTIFICADO
  sCertificado := ArqINI.ReadString('CERTIFICADO','PATH_CERTIFICADO','');
  sSenha       := ArqINI.ReadString('CERTIFICADO','SENHA_CERT','');
  sSerial      := ArqINI.ReadString('CERTIFICADO','NUM_SERIE','');
  // emitente
  sRazao       := ArqINI.ReadString('EMITENTE','RAZAO','');
  sFantasia    := ArqINI.ReadString('EMITENTE','FANTASIA','');
  sCNPJ        := ArqINI.ReadString('EMITENTE','CNPJ','');
  sIE          := ArqINI.ReadString('EMITENTE','I_ESTADUAL','');
  sEndereco    := ArqINI.ReadString('EMITENTE','ENDERECO','');
  sNum         := ArqINI.ReadString('EMITENTE','NUMERO','');
  sBairro      := ArqINI.ReadString('EMITENTE','BAIRRO','');
  sCidade      := ArqINI.ReadString('EMITENTE','CIDADE','');
  sCEP         := ArqINI.ReadString('EMITENTE','CEP','');
  sUF          := ArqINI.ReadString('EMITENTE','UF','');
  sCodMun      := ArqINI.ReadString('EMITENTE','MUNICIPIO','');
  sFone        := ArqINI.ReadString('EMITENTE','TELEFONE','');
  sEmailEmitente := ArqINI.ReadString('EMITENTE','EMAIL','');
  // WebService
  sUFWS        := ArqINI.ReadString('WS','UFWS','');
  sAmbiente    := ArqINI.ReadInteger('WS','AMBIENTE',0);
  sHost        := ArqINI.ReadString('WS','HOST','');
  sPorta       := ArqINI.ReadString('WS','PORTA','');
  sUsuario     := ArqINI.ReadString('WS','USUARIO','');
  sSenhaWS     := ArqINI.ReadString('WS','SENHA','');
  // email
  sSMPTHost    := ArqINI.ReadString('EMAIL','SMTPHOST','');
  sSMTPPort    := ArqINI.ReadString('EMAIL','SMTPPORT','');
  sSMTPUsu     := ArqINI.ReadString('EMAIL','SMTPUSU','');
  sSMTPPass    := ArqINI.ReadString('EMAIL','SMTPPASS','');
  //
  ArqINI.Free;

end;


procedure TDmNFe.GravaArqIni;
var ArqINI : TIniFile;
begin
  inherited;
  ArqINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  // GERAL
  ArqINI.WriteInteger('GERAL','FORMA_EMISSAO',sFormas);
  ArqINI.WriteString('GERAL','LOGOMARCA',sLogoMarca);
  ArqINI.WriteBool('GERAL','SALVA_ARQUIVO',sSalvaArq);
  ArqINI.WriteString('GERAL','PATH_ARQUIVO',sPathArq);
  // CERTIFICADO
  ArqINI.WriteString('CERTIFICADO','PATH_CERTIFICADO',sCertificado);
  ArqINI.WriteString('CERTIFICADO','SENHA_CERT',sSenha);
  ArqINI.WriteString('CERTIFICADO','NUM_SERIE',sSerial);
  // emitente
  ArqINI.WriteString('EMITENTE','RAZAO',sRazao);
  ArqINI.WriteString('EMITENTE','FANTASIA',sFantasia);
  ArqINI.WriteString('EMITENTE','CNPJ',sCNPJ);
  ArqINI.WriteString('EMITENTE','I_ESTADUAL',sIE);
  ArqINI.WriteString('EMITENTE','ENDERECO',sEndereco);
  ArqINI.WriteString('EMITENTE','NUMERO',sNum);
  ArqINI.WriteString('EMITENTE','BAIRRO',sBairro);
  ArqINI.WriteString('EMITENTE','CIDADE',sCidade);
  ArqINI.WriteString('EMITENTE','CEP',sCEP);
  ArqINI.WriteString('EMITENTE','UF',sUF);
  ArqINI.WriteString('EMITENTE','MUNICIPIO',sCodMun);
  ArqINI.WriteString('EMITENTE','TELEFONE',sFone);
  ArqINI.WriteString('EMITENTE','EMAIL',sEmailEmitente);
  // WebService
  ArqINI.WriteString('WS','UFWS',sUFWS);
  ArqINI.WriteInteger('WS','AMBIENTE',sAmbiente);
  ArqINI.WriteString('WS','HOST',sHost);
  ArqINI.WriteString('WS','PORTA',sPorta);
  ArqINI.WriteString('WS','USUARIO',sUsuario);
  ArqINI.WriteString('WS','SENHA',sSenhaWS);
  // email
  ArqINI.WriteString('EMAIL','SMTPHOST',sSMPTHost);
  ArqINI.WriteString('EMAIL','SMTPPORT',sSMTPPort);
  ArqINI.WriteString('EMAIL','SMTPUSU',sSMTPUsu);
  ArqINI.WriteString('EMAIL','SMTPPASS',sSMTPPass);
  ArqINI.Free;

end;

procedure TDmNFe.AtualizaConfigAcBr;
var OK : Boolean;
begin
  // realiza a leidura dos dados do arquivo de configuração
  LeArqIni;
  // Repassa Dados para componente AcBrNFe
  {$IFDEF AcBrMFeOpenSSL}
    ACBrNFe1.configuracoes.Certificados.Certificado := sCertificado;
    AcBrNFe1.Configuracoes.Certificados.Senha       := sSenha;
  {$ELSE}
    AcBrNFe1.Configuracoes.Certificados.NumeroSerie := sSerial;
  {$ENDIF}
  // Geral
  ACBrNFe1.Configuracoes.Geral.FormaEmissao         := StrToTpEmis(OK,IntToStr(sFormas));
  ACBrNFe1.Configuracoes.Geral.Salvar               := sSalvaArq;
  ACBrNFe1.Configuracoes.Geral.PathSalvar           := sPathArq;
  // WebServices
  ACBrNFe1.Configuracoes.WebServices.UF             := sUFWS;
  ACBrNFe1.Configuracoes.WebServices.Ambiente       := StrToTpAmb(OK,IntToStr(sAmbiente));
  ACBrNFe1.Configuracoes.WebServices.Visualizar     := True;
  ACBrNFe1.Configuracoes.WebServices.ProxyHost      := sHost;
  ACBrNFe1.Configuracoes.WebServices.ProxyPort      := sPorta;
  ACBrNFe1.Configuracoes.WebServices.ProxyUser      := sUsuario;
  ACBrNFe1.Configuracoes.WebServices.ProxyPass      := sSenhaWS;
  //
  if ACBrNFe1.DANFE <> nil then
  begin
    ACBrNFe1.DANFE.TipoDANFE := StrToTpImp(OK,'1');
    ACBrNFe1.DANFE.Logo      := sLogoMarca;
  end;

end;

procedure TDmNFe.GravaChaveNFEPedido(pChaveNFe, pNumPed: String);
var Query : TSQLQuery;
begin
  Query := TSQLQuery.Create(nil);
  try
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('update pedido set');
    Query.SQL.Add('CHEVE_NFE = :pChave');
    Query.SQL.Add('where PEDIDO_NUM = :pNumped');
    Query.Params.ParamByName('pChave').AsString  := pChaveNFe;
    Query.Params.ParamByName('pNumped').AsString := pNumPed;
    Query.ExecSQL(false);
  finally
    FreeAndNil(Query);
  end;  

end;


end.

