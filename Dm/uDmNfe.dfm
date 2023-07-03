object DmNFe: TDmNFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 243
  Top = 189
  Height = 407
  Width = 559
  object QryPedidos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from pedido'
      'where pedido.id = :pID')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 184
    Top = 16
    object QryPedidosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidosPEDIDO_NUM: TStringField
      FieldName = 'PEDIDO_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosDATA_PEDIDO: TSQLTimeStampField
      FieldName = 'DATA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosHORA_PEDIDO: TSQLTimeStampField
      FieldName = 'HORA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosHORA_ENTREGA: TSQLTimeStampField
      FieldName = 'HORA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidosID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryPedidosNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosCOMPL_END_ENTREGA: TStringField
      FieldName = 'COMPL_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosUF_END_ENTREGA: TStringField
      FieldName = 'UF_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryPedidosCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryPedidosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPedidosTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosVALOR_REAL: TFMTBCDField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosMARGEM_VENDA: TBCDField
      FieldName = 'MARGEM_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object QryPedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosTOTAL_GERAL: TFMTBCDField
      FieldName = 'TOTAL_GERAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidosDAV: TStringField
      FieldName = 'DAV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QryPedidosCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object QryPedidosINSCEST: TStringField
      FieldName = 'INSCEST'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object QryPedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidosCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryPedidosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidosCHEVE_NFE: TStringField
      FieldName = 'CHEVE_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object QryPedidoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from pedido_itens'
      'where pedido_itens.idpedido = :pID')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 32
    Top = 144
    object QryPedidoItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidoItensIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryPedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryPedidoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object QryPedidoItensVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidoItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidoItensACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidoItensVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidoItensMARGEM: TBCDField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object QryPedidoItensVALOR_REAL: TFMTBCDField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryPedidoItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryPedidoItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object QryPedidoItensEAN13: TStringField
      FieldName = 'EAN13'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
  end
  object DspPedidos: TDataSetProvider
    DataSet = QryPedidos
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 40
  end
  object DspPedidoItens: TDataSetProvider
    DataSet = QryPedidoItens
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 168
  end
  object CdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspPedidos'
    BeforePost = CdsPedidosBeforePost
    OnNewRecord = CdsPedidosNewRecord
    Left = 184
    Top = 56
    object CdsPedidosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidosPEDIDO_NUM: TStringField
      FieldName = 'PEDIDO_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosDATA_PEDIDO: TSQLTimeStampField
      FieldName = 'DATA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosHORA_PEDIDO: TSQLTimeStampField
      FieldName = 'HORA_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosHORA_ENTREGA: TSQLTimeStampField
      FieldName = 'HORA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsPedidosNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosCOMPL_END_ENTREGA: TStringField
      FieldName = 'COMPL_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosUF_END_ENTREGA: TStringField
      FieldName = 'UF_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsPedidosCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPedidosTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosVALOR_REAL: TFMTBCDField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosMARGEM_VENDA: TBCDField
      FieldName = 'MARGEM_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object CdsPedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosTOTAL_GERAL: TFMTBCDField
      FieldName = 'TOTAL_GERAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosCOO: TIntegerField
      FieldName = 'COO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCCF: TIntegerField
      FieldName = 'CCF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosGNF: TIntegerField
      FieldName = 'GNF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosDAV: TStringField
      FieldName = 'DAV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsPedidosINSCEST: TStringField
      FieldName = 'INSCEST'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsPedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidosCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidosCHEVE_NFE: TStringField
      FieldName = 'CHEVE_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object CdsPedidoItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspPedidoItens'
    BeforePost = CdsPedidoItensBeforePost
    OnNewRecord = CdsPedidoItensNewRecord
    Left = 32
    Top = 184
    object CdsPedidoItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidoItensIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsPedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsPedidoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object CdsPedidoItensVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidoItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidoItensACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidoItensVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidoItensMARGEM: TBCDField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object CdsPedidoItensVALOR_REAL: TFMTBCDField
      FieldName = 'VALOR_REAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsPedidoItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidoItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidoItensEAN13: TStringField
      FieldName = 'EAN13'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
  end
  object QryContatos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from contato'
      'where contato.id = :pID')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 32
    Top = 16
    object QryContatosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryContatosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContatosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryContatosNUM_END: TStringField
      FieldName = 'NUM_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContatosBAIRRO_END: TStringField
      FieldName = 'BAIRRO_END'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosCIDADE_END: TStringField
      FieldName = 'CIDADE_END'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosCEP_END: TStringField
      FieldName = 'CEP_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContatosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryContatosTELEFAX: TStringField
      FieldName = 'TELEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryContatosCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryContatosCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QryContatosNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContatosBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QryContatosLOCAL_TRAB: TStringField
      FieldName = 'LOCAL_TRAB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContatosEND_LOCAL_TRAB: TStringField
      FieldName = 'END_LOCAL_TRAB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContatosTELEFONE_TRAB: TStringField
      FieldName = 'TELEFONE_TRAB'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QryContatosFILIACAO_PAI: TStringField
      FieldName = 'FILIACAO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContatosFILIACAO_MAE: TStringField
      FieldName = 'FILIACAO_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContatosDATA_CAD: TSQLTimeStampField
      FieldName = 'DATA_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosDATA_NASC: TSQLTimeStampField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosLIMITE_CRED: TFMTBCDField
      FieldName = 'LIMITE_CRED'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryContatosCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QryContatosTIPO_CONTATO: TStringField
      FieldName = 'TIPO_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QryContatosATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryContatosOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object QryContatosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosCOMPL_ENT: TStringField
      FieldName = 'COMPL_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object QryContatosUF_END: TStringField
      FieldName = 'UF_END'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryContatosUF_END_ENT: TStringField
      FieldName = 'UF_END_ENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QryContatosSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QryContatosEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object DspContatos: TDataSetProvider
    DataSet = QryContatos
    UpdateMode = upWhereKeyOnly
    OnGetTableName = DspContatosGetTableName
    Left = 32
    Top = 40
  end
  object CdsContatos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspContatos'
    OnNewRecord = CdsContatosNewRecord
    Left = 32
    Top = 56
    object CdsContatosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsContatosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContatosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsContatosNUM_END: TStringField
      FieldName = 'NUM_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContatosBAIRRO_END: TStringField
      FieldName = 'BAIRRO_END'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosCIDADE_END: TStringField
      FieldName = 'CIDADE_END'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosCEP_END: TStringField
      FieldName = 'CEP_END'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContatosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsContatosTELEFAX: TStringField
      FieldName = 'TELEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsContatosCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsContatosCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosEND_ENTREGA: TStringField
      FieldName = 'END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsContatosNUM_END_ENTREGA: TStringField
      FieldName = 'NUM_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContatosBAIRRO_END_ENTREGA: TStringField
      FieldName = 'BAIRRO_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosCID_END_ENTREGA: TStringField
      FieldName = 'CID_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosCEP_END_ENTREGA: TStringField
      FieldName = 'CEP_END_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsContatosLOCAL_TRAB: TStringField
      FieldName = 'LOCAL_TRAB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContatosEND_LOCAL_TRAB: TStringField
      FieldName = 'END_LOCAL_TRAB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContatosTELEFONE_TRAB: TStringField
      FieldName = 'TELEFONE_TRAB'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsContatosFILIACAO_PAI: TStringField
      FieldName = 'FILIACAO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContatosFILIACAO_MAE: TStringField
      FieldName = 'FILIACAO_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContatosDATA_CAD: TSQLTimeStampField
      FieldName = 'DATA_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosDATA_NASC: TSQLTimeStampField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosLIMITE_CRED: TFMTBCDField
      FieldName = 'LIMITE_CRED'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsContatosCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsContatosTIPO_CONTATO: TStringField
      FieldName = 'TIPO_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsContatosATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsContatosOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object CdsContatosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosCOMPL_ENT: TStringField
      FieldName = 'COMPL_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsContatosUF_END: TStringField
      FieldName = 'UF_END'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsContatosUF_END_ENT: TStringField
      FieldName = 'UF_END_ENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsContatosSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsContatosEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object QryProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from produtos'
      'where produtos.id = :pID')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 112
    Top = 16
    object QryProdutosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object QryProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosEAN13: TStringField
      FieldName = 'EAN13'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object QryProdutosDUN14: TStringField
      FieldName = 'DUN14'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object QryProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QryProdutosQUANT_CAIXA: TFMTBCDField
      FieldName = 'QUANT_CAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object QryProdutosALIQUOTA_ICMS: TBCDField
      FieldName = 'ALIQUOTA_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object QryProdutosALIQUOTA_IPI: TBCDField
      FieldName = 'ALIQUOTA_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object QryProdutosCLASIFICACAO_FISCAL: TIntegerField
      FieldName = 'CLASIFICACAO_FISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object QryProdutosPRECO_COMPRA: TFMTBCDField
      FieldName = 'PRECO_COMPRA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryProdutosPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryProdutosTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosPERC_DESC: TBCDField
      FieldName = 'PERC_DESC'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object QryProdutosPERC_COM: TBCDField
      FieldName = 'PERC_COM'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object QryProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryProdutosTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object QryProdutosCONTROLAR_ESTOQUE: TStringField
      FieldName = 'CONTROLAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryProdutosTRIBUTACAO: TIntegerField
      FieldName = 'TRIBUTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryProdutosFRACIONADO: TStringField
      FieldName = 'FRACIONADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QryProdutosCODIGO_NCM: TStringField
      FieldName = 'CODIGO_NCM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryProdutosREDUCAO_BASE: TBCDField
      FieldName = 'REDUCAO_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object QryProdutosBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object QryProdutosMVA: TBCDField
      FieldName = 'MVA'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
  end
  object DspProdutos: TDataSetProvider
    DataSet = QryProdutos
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 40
  end
  object CdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspProdutos'
    BeforePost = CdsProdutosBeforePost
    OnNewRecord = CdsProdutosNewRecord
    Left = 112
    Top = 56
    object CdsProdutosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object CdsProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosEAN13: TStringField
      FieldName = 'EAN13'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object CdsProdutosDUN14: TStringField
      FieldName = 'DUN14'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosQUANT_CAIXA: TFMTBCDField
      FieldName = 'QUANT_CAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object CdsProdutosALIQUOTA_ICMS: TBCDField
      FieldName = 'ALIQUOTA_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object CdsProdutosALIQUOTA_IPI: TBCDField
      FieldName = 'ALIQUOTA_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object CdsProdutosCLASIFICACAO_FISCAL: TIntegerField
      FieldName = 'CLASIFICACAO_FISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object CdsProdutosPRECO_COMPRA: TFMTBCDField
      FieldName = 'PRECO_COMPRA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsProdutosPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsProdutosTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPERC_DESC: TBCDField
      FieldName = 'PERC_DESC'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object CdsProdutosPERC_COM: TBCDField
      FieldName = 'PERC_COM'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object CdsProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsProdutosTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object CdsProdutosCONTROLAR_ESTOQUE: TStringField
      FieldName = 'CONTROLAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsProdutosTRIBUTACAO: TIntegerField
      FieldName = 'TRIBUTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosFRACIONADO: TStringField
      FieldName = 'FRACIONADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsProdutosCODIGO_NCM: TStringField
      FieldName = 'CODIGO_NCM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsProdutosREDUCAO_BASE: TBCDField
      FieldName = 'REDUCAO_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object CdsProdutosBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsProdutosMVA: TBCDField
      FieldName = 'MVA'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
  end
  object QryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmConexao.ConexaoDBX
    Left = 160
    Top = 136
  end
  object DspConsulta: TDataSetProvider
    DataSet = QryConsulta
    Left = 160
    Top = 160
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 160
    Top = 176
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    DANFE = ACBrNFeDANFEQR1
    Left = 472
    Top = 272
  end
  object QryTributo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pedido_itens.tipoprod,produtos.aliquota_icms,'
      'produtos.base_st,produtos.reducao_base,produtos.mva,'
      'produtos.aliquota_ipi,sum(pedido_itens.quantidade) as quant,'
      'sum(pedido_itens.valor_total) as valor,'
      
        'sum((pedido_itens.valor_total * produtos.aliquota_icms) /100) as' +
        ' val_icms'
      'from pedido'
      
        'left outer join pedido_itens on pedido.id = pedido_itens.idpedid' +
        'o'
      'left outer join produtos on pedido_itens.idproduto = produtos.id'
      'where pedido.id = :pID'
      'group by pedido_itens.tipoprod,produtos.aliquota_icms,'
      'produtos.base_st,produtos.reducao_base,produtos.mva,'
      'produtos.aliquota_ipi')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 368
    Top = 64
    object QryTributoTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object QryTributoALIQUOTA_ICMS: TBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Precision = 9
      Size = 2
    end
    object QryTributoBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Precision = 18
      Size = 2
    end
    object QryTributoREDUCAO_BASE: TBCDField
      FieldName = 'REDUCAO_BASE'
      Precision = 9
      Size = 2
    end
    object QryTributoMVA: TBCDField
      FieldName = 'MVA'
      Precision = 9
      Size = 3
    end
    object QryTributoALIQUOTA_IPI: TBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object QryTributoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QryTributoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QryTributoVAL_ICMS: TFMTBCDField
      FieldName = 'VAL_ICMS'
      ReadOnly = True
      Precision = 18
      Size = 8
    end
  end
  object DspTributo: TDataSetProvider
    DataSet = QryTributo
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 88
  end
  object CdsTributo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'DspTributo'
    Left = 368
    Top = 104
    object CdsTributoTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object CdsTributoALIQUOTA_ICMS: TBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Precision = 9
      Size = 2
    end
    object CdsTributoBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Precision = 18
      Size = 2
    end
    object CdsTributoREDUCAO_BASE: TBCDField
      FieldName = 'REDUCAO_BASE'
      Precision = 9
      Size = 2
    end
    object CdsTributoMVA: TBCDField
      FieldName = 'MVA'
      Precision = 9
      Size = 3
    end
    object CdsTributoALIQUOTA_IPI: TBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object CdsTributoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object CdsTributoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object CdsTributoVAL_ICMS: TFMTBCDField
      FieldName = 'VAL_ICMS'
      ReadOnly = True
      Precision = 18
      Size = 8
    end
  end
  object ACBrNFeDANFEQR1: TACBrNFeDANFEQR
    ACBrNFe = ACBrNFe1
    PathPDF = 'C:\Temp\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimirDescPorc = False
    ImprimirTotalLiquido = False
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    Left = 336
    Top = 256
  end
end
