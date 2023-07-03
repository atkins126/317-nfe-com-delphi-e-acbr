unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    LanamentodePedidos1: TMenuItem;
    N2: TMenuItem;
    NFe1: TMenuItem;
    StatusdoServio1: TMenuItem;
    CriareEnviar1: TMenuItem;
    GerarNFe1: TMenuItem;
    ValidarXML1: TMenuItem;
    N3: TMenuItem;
    CancelamentoNFe1: TMenuItem;
    InutilizarNmerao1: TMenuItem;
    N4: TMenuItem;
    ImprimirDanfe1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Consultas1: TMenuItem;
    EnviarEmailNFe1: TMenuItem;
    Confuguraes1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure LanamentodePedidos1Click(Sender: TObject);
    procedure Confuguraes1Click(Sender: TObject);
    procedure StatusdoServio1Click(Sender: TObject);
    procedure GerarNFe1Click(Sender: TObject);
    procedure ValidarXML1Click(Sender: TObject);
    procedure CriareEnviar1Click(Sender: TObject);
    procedure CancelamentoNFe1Click(Sender: TObject);
    procedure InutilizarNmerao1Click(Sender: TObject);
    procedure ImprimirDanfe1Click(Sender: TObject);
    procedure EnviarEmailNFe1Click(Sender: TObject);
    procedure Consultas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses uLibrary, uFrmCadastroCliente, uFrmCadProdutos, uFrmLancPedidos,
  uFrmConfig, uFrmStatus, uFrmGeraNFe, uFrmValidaXML, uFrmEnviarNFe,
  uFrmCancelNFe, uFrmInutiliza, uFrmEmiteDanfe, uFrmEnviaEmail,
  uFrmConsultas;

{$R *.dfm}

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
  
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  AbreForm(TFrmCadastroCliente,FrmCadastroCliente);
  
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
  AbreForm(TFrmCadProdutos,FrmCadProdutos);
  
end;

procedure TFrmPrincipal.LanamentodePedidos1Click(Sender: TObject);
begin
  AbreForm(TFrmLancPedidos,FrmLancPedidos);
  
end;

procedure TFrmPrincipal.Confuguraes1Click(Sender: TObject);
begin
  AbreForm(TFrmConfig,FrmConfig);
  
end;

procedure TFrmPrincipal.StatusdoServio1Click(Sender: TObject);
begin
  AbreForm(TFrmStatus,FrmStatus);
  
end;

procedure TFrmPrincipal.GerarNFe1Click(Sender: TObject);
begin
  AbreForm(TFrmGeraNFe,FrmGeraNFe);
  
end;

procedure TFrmPrincipal.ValidarXML1Click(Sender: TObject);
begin
  AbreForm(TFrmValidaXML,FrmValidaXML);

end;

procedure TFrmPrincipal.CriareEnviar1Click(Sender: TObject);
begin
  AbreForm(TFrmEnviarNFe,FrmEnviarNFe);
  
end;

procedure TFrmPrincipal.CancelamentoNFe1Click(Sender: TObject);
begin
  AbreForm(TFrmCancelNFe,FrmCancelNFe);
   
end;

procedure TFrmPrincipal.InutilizarNmerao1Click(Sender: TObject);
begin
  AbreForm(TFrmInutiliza,FrmInutiliza);
  
end;

procedure TFrmPrincipal.ImprimirDanfe1Click(Sender: TObject);
begin
  AbreForm(TFrmEmiteDanfe,FrmEmiteDanfe);
  
end;

procedure TFrmPrincipal.EnviarEmailNFe1Click(Sender: TObject);
begin
  AbreForm(TFrmEnviaEmail,FrmEnviaEmail);

end;

procedure TFrmPrincipal.Consultas1Click(Sender: TObject);
begin
  AbreForm(TFrmConsultas,FrmConsultas);

end;

end.
