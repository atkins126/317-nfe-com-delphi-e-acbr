inherited FrmEmiteDanfe: TFrmEmiteDanfe
  Left = 221
  Top = 166
  Caption = 'FrmEmiteDanfe'
  ClientHeight = 155
  ClientWidth = 497
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 473
    Height = 65
    Caption = ' Selecione o Arquivo '
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 440
      Top = 24
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object EdtArquivo: TEdit
      Left = 8
      Top = 24
      Width = 425
      Height = 21
      TabOrder = 0
      OnExit = EdtArquivoExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 116
    Width = 497
    Height = 39
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 128
      Top = 5
      Width = 101
      Height = 30
      Caption = 'Imprimir'
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
      Left = 232
      Top = 5
      Width = 101
      Height = 30
      Caption = 'Encerrar'
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
  object OpenDialog1: TOpenDialog
    Left = 384
    Top = 32
  end
end
