unit uDmConexao;

interface

uses
  Windows, SysUtils, Classes, DBXpress, DB, SqlExpr, Messages, Variants,
  Graphics, Controls, Forms, Dialogs, uFrmPadrao, StdCtrls, Mask, DBCtrls,
  ExtCtrls, ComCtrls;


type
  TDmConexao = class(TDataModule)
    ConexaoDBX: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

Uses uLibrary;

{$R *.dfm}

procedure TDmConexao.DataModuleCreate(Sender: TObject);
begin
  //
  try
    ConexaoDBX.Connected := false;
    ConexaoDBX.Params.Clear;
    ConexaoDBX.LoadParamsFromIniFile(ExtractFilePath(Application.ExeName)+'dbxconnections.ini');
    ConexaoDBX.Connected := true;
    // passa nome para váriável global
    ConexaoDados := ConexaoDBX;
  except
    MessageDlg('Erro ao conectar banco de dados. Verifique!!!', mtWarning, [mbOK], 0);
    Application.Terminate;
  end;

end;

procedure TDmConexao.DataModuleDestroy(Sender: TObject);
begin
  ConexaoDBX.Connected := false;

end;

end.
