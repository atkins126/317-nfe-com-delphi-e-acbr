inherited FrmEnviaEmail: TFrmEnviaEmail
  Left = 227
  Top = 193
  Caption = 'Enviar email NFe'
  ClientHeight = 168
  ClientWidth = 499
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 77
    Width = 84
    Height = 13
    Caption = 'Email Destinat'#225'rio'
  end
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 129
    Width = 499
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
  object EdtPara: TEdit
    Left = 8
    Top = 93
    Width = 473
    Height = 21
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Left = 384
    Top = 32
  end
end
