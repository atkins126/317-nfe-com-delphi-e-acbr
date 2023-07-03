inherited FrmConsultas: TFrmConsultas
  Left = 237
  Top = 151
  Caption = 'FrmConsultas'
  ClientWidth = 582
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RadioTipo: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 57
    Caption = ' Tipo de Consulta '
    ItemIndex = 0
    Items.Strings = (
      'Consultar o Carregamento XML'
      'Consultar Recibo de Lote')
    TabOrder = 0
    OnClick = RadioTipoClick
  end
  object GrpArquivo: TGroupBox
    Left = 200
    Top = 8
    Width = 369
    Height = 57
    Caption = ' Selecione o Arquivo '
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 335
      Top = 21
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object EdtArquivo: TEdit
      Left = 8
      Top = 22
      Width = 321
      Height = 21
      TabOrder = 0
    end
  end
  object GrpRecibo: TGroupBox
    Left = 200
    Top = 8
    Width = 369
    Height = 57
    Caption = ' Informe o N'#250'mero do Lote '
    TabOrder = 2
    object EdtRecibo: TEdit
      Left = 8
      Top = 19
      Width = 321
      Height = 21
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 72
    Width = 185
    Height = 33
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 72
    Width = 185
    Height = 33
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 112
    Width = 561
    Height = 305
    TabOrder = 5
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 557
      Height = 288
      Align = alClient
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 528
    Top = 24
  end
end
