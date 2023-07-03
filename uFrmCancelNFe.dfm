inherited FrmCancelNFe: TFrmCancelNFe
  Left = 245
  Top = 157
  Caption = 'Cancelamento de NFe'
  ClientHeight = 358
  ClientWidth = 673
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 240
    Width = 91
    Height = 13
    Caption = 'Numero do Procolo'
  end
  object Label4: TLabel
    Left = 304
    Top = 240
    Width = 55
    Height = 13
    Caption = 'Justificativa'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 649
    Height = 177
    Caption = ' Notas Fiscais Eletr'#244'nicas'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 645
      Height = 160
      Align = alClient
      DataSource = DataNFe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PEDIDO_NUM'
          Title.Alignment = taCenter
          Title.Caption = 'Num. do Pedido'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_PEDIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHEVE_NFE'
          Title.Alignment = taCenter
          Title.Caption = 'Chave NFe'
          Width = 128
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 313
    Height = 45
    Caption = 'Periodo'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 160
      Top = 20
      Width = 6
      Height = 13
      Caption = #224
    end
    object Datai: TDateTimePicker
      Left = 32
      Top = 16
      Width = 120
      Height = 21
      Date = 40598.310679606480000000
      Time = 40598.310679606480000000
      TabOrder = 0
    end
    object Dataf: TDateTimePicker
      Left = 176
      Top = 16
      Width = 120
      Height = 21
      Date = 40598.310700590280000000
      Time = 40598.310700590280000000
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 352
    Top = 24
    Width = 97
    Height = 25
    Caption = 'Localizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object EdtProtocolo: TEdit
    Left = 16
    Top = 256
    Width = 257
    Height = 21
    TabOrder = 3
  end
  object EdtJustifica: TEdit
    Left = 304
    Top = 256
    Width = 345
    Height = 21
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 673
    Height = 62
    Align = alBottom
    TabOrder = 5
    object BitBtn2: TBitBtn
      Left = 192
      Top = 12
      Width = 128
      Height = 38
      Action = ActCancelar
      Caption = 'F2 - Cancelar NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 336
      Top = 12
      Width = 128
      Height = 38
      Action = ActFechar
      Caption = 'F3 - Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object DataNFe: TDataSource
    DataSet = CdsNFe
    Left = 184
    Top = 88
  end
  object QryNFe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from pedido'
      'where pedido.DATA_PEDIDO between :pDatai and :pDataf'
      'and pedido.CHEVE_NFE is not null ')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 248
    Top = 96
    object QryNFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryNFePEDIDO_NUM: TStringField
      FieldName = 'PEDIDO_NUM'
      Size = 10
    end
    object QryNFeIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object QryNFeID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object QryNFeDATA_PEDIDO: TSQLTimeStampField
      FieldName = 'DATA_PEDIDO'
    end
    object QryNFeHORA_PEDIDO: TSQLTimeStampField
      FieldName = 'HORA_PEDIDO'
    end
    object QryNFeDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object QryNFeHORA_ENTREGA: TSQLTimeStampField
      FieldName = 'HORA_ENTREGA'
    end
    object QryNFeID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      Required = True
    end
    object QryNFeCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      FixedChar = True
      Size = 1
    end
    object QryNFeENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object QryNFeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object QryNFeDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object QryNFeACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object QryNFeOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object QryNFeVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object QryNFeCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object QryNFeID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
    end
    object QryNFeEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      Size = 30
    end
    object QryNFeNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      Size = 10
    end
    object QryNFeCOMPL_END_ENTREGA: TStringField
      FieldName = 'COMPL_END_ENTREGA'
    end
    object QryNFeBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
    end
    object QryNFeCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
    end
    object QryNFeUF_END_ENTREGA: TStringField
      FieldName = 'UF_END_ENTREGA'
      FixedChar = True
      Size = 2
    end
    object QryNFeCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      Size = 10
    end
    object QryNFeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object QryNFeTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
    end
    object QryNFeTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
    end
    object QryNFeVALOR_REAL: TFMTBCDField
      FieldName = 'VALOR_REAL'
      Precision = 18
      Size = 2
    end
    object QryNFeMARGEM_VENDA: TBCDField
      FieldName = 'MARGEM_VENDA'
      Precision = 9
      Size = 3
    end
    object QryNFeVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object QryNFeTOTAL_GERAL: TFMTBCDField
      FieldName = 'TOTAL_GERAL'
      Precision = 18
      Size = 2
    end
    object QryNFeCOO: TIntegerField
      FieldName = 'COO'
    end
    object QryNFeCCF: TIntegerField
      FieldName = 'CCF'
    end
    object QryNFeGNF: TIntegerField
      FieldName = 'GNF'
    end
    object QryNFeDAV: TStringField
      FieldName = 'DAV'
      Size = 1
    end
    object QryNFeCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 18
    end
    object QryNFeINSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 18
    end
    object QryNFeVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 18
      Size = 2
    end
    object QryNFeCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 3
    end
    object QryNFeIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object QryNFeCHEVE_NFE: TStringField
      FieldName = 'CHEVE_NFE'
      Size = 50
    end
  end
  object DspNFe: TDataSetProvider
    DataSet = QryNFe
    Left = 304
    Top = 96
  end
  object CdsNFe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end>
    ProviderName = 'DspNFe'
    Left = 360
    Top = 96
    object CdsNFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CdsNFePEDIDO_NUM: TStringField
      FieldName = 'PEDIDO_NUM'
      Size = 10
    end
    object CdsNFeIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object CdsNFeID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object CdsNFeDATA_PEDIDO: TSQLTimeStampField
      FieldName = 'DATA_PEDIDO'
    end
    object CdsNFeHORA_PEDIDO: TSQLTimeStampField
      FieldName = 'HORA_PEDIDO'
    end
    object CdsNFeDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object CdsNFeHORA_ENTREGA: TSQLTimeStampField
      FieldName = 'HORA_ENTREGA'
    end
    object CdsNFeID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      Required = True
    end
    object CdsNFeCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      FixedChar = True
      Size = 1
    end
    object CdsNFeENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object CdsNFeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object CdsNFeDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object CdsNFeACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object CdsNFeOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object CdsNFeVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object CdsNFeCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object CdsNFeID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
    end
    object CdsNFeEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      Size = 30
    end
    object CdsNFeNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      Size = 10
    end
    object CdsNFeCOMPL_END_ENTREGA: TStringField
      FieldName = 'COMPL_END_ENTREGA'
    end
    object CdsNFeBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
    end
    object CdsNFeCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
    end
    object CdsNFeUF_END_ENTREGA: TStringField
      FieldName = 'UF_END_ENTREGA'
      FixedChar = True
      Size = 2
    end
    object CdsNFeCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      Size = 10
    end
    object CdsNFeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object CdsNFeTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
    end
    object CdsNFeTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
    end
    object CdsNFeVALOR_REAL: TFMTBCDField
      FieldName = 'VALOR_REAL'
      Precision = 18
      Size = 2
    end
    object CdsNFeMARGEM_VENDA: TBCDField
      FieldName = 'MARGEM_VENDA'
      Precision = 9
      Size = 3
    end
    object CdsNFeVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object CdsNFeTOTAL_GERAL: TFMTBCDField
      FieldName = 'TOTAL_GERAL'
      Precision = 18
      Size = 2
    end
    object CdsNFeCOO: TIntegerField
      FieldName = 'COO'
    end
    object CdsNFeCCF: TIntegerField
      FieldName = 'CCF'
    end
    object CdsNFeGNF: TIntegerField
      FieldName = 'GNF'
    end
    object CdsNFeDAV: TStringField
      FieldName = 'DAV'
      Size = 1
    end
    object CdsNFeCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 18
    end
    object CdsNFeINSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 18
    end
    object CdsNFeVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 18
      Size = 2
    end
    object CdsNFeCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 3
    end
    object CdsNFeIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object CdsNFeCHEVE_NFE: TStringField
      FieldName = 'CHEVE_NFE'
      Size = 50
    end
  end
  object ActionList1: TActionList
    Left = 464
    Top = 120
    object ActCancelar: TAction
      Caption = 'F2 - Cancelar NFe'
      ShortCut = 113
      OnExecute = ActCancelarExecute
    end
    object ActFechar: TAction
      Caption = 'F3 - Fechar'
      ShortCut = 114
      OnExecute = ActFecharExecute
    end
  end
end
