inherited FrmEnviarNFe: TFrmEnviarNFe
  Left = 255
  Top = 193
  Caption = 'Enviar NFe'
  ClientHeight = 166
  ClientWidth = 567
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 67
    Width = 76
    Height = 13
    Caption = 'Numero do Lote'
  end
  object Label2: TLabel
    Left = 160
    Top = 64
    Width = 88
    Height = 13
    Caption = 'Numero do Pedido'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 545
    Height = 57
    Caption = ' Selecionar arquivo XML da NFe'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 512
      Top = 24
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object EdtArquivo: TEdit
      Left = 8
      Top = 24
      Width = 497
      Height = 21
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 109
    Width = 567
    Height = 57
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 157
      Top = 9
      Width = 109
      Height = 39
      Action = ActEnviar
      Caption = 'F2 - Enviar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 277
      Top = 9
      Width = 109
      Height = 39
      Action = ActFechar
      Caption = 'F3 - Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object EdtNumLote: TEdit
    Left = 9
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdtPedido: TEdit
    Left = 160
    Top = 79
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 64
  end
  object ActionList1: TActionList
    Left = 72
    Top = 104
    object ActEnviar: TAction
      Caption = 'F2 - Enviar'
      ShortCut = 113
      OnExecute = ActEnviarExecute
    end
    object ActFechar: TAction
      Caption = 'F3 - Fechar'
      ShortCut = 114
      OnExecute = ActFecharExecute
    end
  end
end
