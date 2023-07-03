inherited FrmStatus: TFrmStatus
  Left = 218
  Top = 154
  Caption = 'Status'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 688
    Height = 405
    Align = alClient
    Caption = ' Status do Servi'#231'o '
    TabOrder = 0
    object RetornoWS: TMemo
      Left = 16
      Top = 28
      Width = 649
      Height = 94
      TabOrder = 0
    end
    object WebBrowser1: TWebBrowser
      Left = 16
      Top = 144
      Width = 649
      Height = 140
      TabOrder = 1
      ControlData = {
        4C00000013430000780E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object Dados: TMemo
      Left = 16
      Top = 304
      Width = 649
      Height = 89
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 208
      Top = 5
      Width = 118
      Height = 32
      Caption = 'Verificar Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 336
      Top = 5
      Width = 118
      Height = 32
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
