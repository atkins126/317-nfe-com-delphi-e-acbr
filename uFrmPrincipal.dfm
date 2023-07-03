object FrmPrincipal: TFrmPrincipal
  Left = 198
  Top = 163
  Width = 696
  Height = 480
  Caption = 'Projeto NFe - AcBr'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 407
    Width = 688
    Height = 19
    Panels = <>
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 24
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object Cadastro1: TMenuItem
        Caption = '&Cadastro'
        object Clientes1: TMenuItem
          Caption = 'C&lientes'
          OnClick = Clientes1Click
        end
        object Produtos1: TMenuItem
          Caption = '&Produtos'
          OnClick = Produtos1Click
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object LanamentodePedidos1: TMenuItem
        Caption = '&Lan'#231'amento de Pedidos'
        OnClick = LanamentodePedidos1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object NFe1: TMenuItem
        Caption = 'NFe'
        object StatusdoServio1: TMenuItem
          Caption = 'Status do Servi'#231'o'
          OnClick = StatusdoServio1Click
        end
        object GerarNFe1: TMenuItem
          Caption = 'Gerar NFe'
          OnClick = GerarNFe1Click
        end
        object ValidarXML1: TMenuItem
          Caption = 'Validar XML'
          OnClick = ValidarXML1Click
        end
        object CriareEnviar1: TMenuItem
          Caption = 'Criar e Enviar NFe'
          OnClick = CriareEnviar1Click
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object CancelamentoNFe1: TMenuItem
          Caption = 'Cancelamento NFe'
          OnClick = CancelamentoNFe1Click
        end
        object InutilizarNmerao1: TMenuItem
          Caption = 'Inutilizar N'#250'mera'#231#227'o'
          OnClick = InutilizarNmerao1Click
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object Consultas1: TMenuItem
          Caption = 'Consultas'
          OnClick = Consultas1Click
        end
        object N4: TMenuItem
          Caption = '-'
        end
        object ImprimirDanfe1: TMenuItem
          Caption = 'Imprimir Danfe'
          OnClick = ImprimirDanfe1Click
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object EnviarEmailNFe1: TMenuItem
          Caption = 'Enviar Email NFe'
          OnClick = EnviarEmailNFe1Click
        end
      end
    end
    object Confuguraes1: TMenuItem
      Caption = 'C&onfigura'#231#245'es'
      OnClick = Confuguraes1Click
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
