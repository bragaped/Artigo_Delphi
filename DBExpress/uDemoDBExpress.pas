unit uDemoDBExpress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, WideStrings, FMTBcd, DB, DBClient, Provider, SqlExpr,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DBXOracle, IniFiles, DBXFirebird;

type
  TFRMDemoDBExpress = class(TForm)
    pcPrincipal: TPageControl;
    tsFirebird: TTabSheet;
    SQLCFirebird: TSQLConnection;
    SQLDSFirebird: TSQLDataSet;
    DSPFirebird: TDataSetProvider;
    CDSFirebird: TClientDataSet;
    DSFirebird: TDataSource;
    SQLDSFirebirdCHAVE: TIntegerField;
    SQLDSFirebirdBANCO: TIntegerField;
    SQLDSFirebirdDESCRICAO: TStringField;
    SQLDSFirebirdAGENCIA: TIntegerField;
    SQLDSFirebirdCONTA: TIntegerField;
    SQLDSFirebirdDVCONTA: TIntegerField;
    CDSFirebirdCHAVE: TIntegerField;
    CDSFirebirdBANCO: TIntegerField;
    CDSFirebirdDESCRICAO: TStringField;
    CDSFirebirdAGENCIA: TIntegerField;
    CDSFirebirdCONTA: TIntegerField;
    CDSFirebirdDVCONTA: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    dbnFireBird: TDBNavigator;
    bitFirebird: TBitBtn;
    bitConectarFireBird: TBitBtn;
    dbgFirebird: TDBGrid;
    TsOracle: TTabSheet;
    DSOracle: TDataSource;
    CDSOracle: TClientDataSet;
    DSPOracle: TDataSetProvider;
    SQLDSOracle: TSQLDataSet;
    SQLCOracle: TSQLConnection;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBGOracle: TDBGrid;
    bitConectarOracle: TBitBtn;
    dbnOracle: TDBNavigator;
    bitOracle: TBitBtn;
    SQLDSOracleCHAVE: TFMTBCDField;
    SQLDSOracleBANCO: TFMTBCDField;
    SQLDSOracleDESCRICAO: TWideStringField;
    SQLDSOracleAGENCIA: TFMTBCDField;
    SQLDSOracleCONTA: TFMTBCDField;
    SQLDSOracleDVCONTA: TFMTBCDField;
    CDSOracleCHAVE: TFMTBCDField;
    CDSOracleBANCO: TFMTBCDField;
    CDSOracleDESCRICAO: TWideStringField;
    CDSOracleAGENCIA: TFMTBCDField;
    CDSOracleCONTA: TFMTBCDField;
    CDSOracleDVCONTA: TFMTBCDField;
    GroupBox1: TGroupBox;
    ePesquisa: TEdit;
    eCampo: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn1: TBitBtn;
    procedure bitFirebirdClick(Sender: TObject);
    procedure bitConectarFireBirdClick(Sender: TObject);
    procedure bitOracleClick(Sender: TObject);
    procedure bitConectarOracleClick(Sender: TObject);
    procedure dbgFirebirdTitleClick(Column: TColumn);
    procedure DBGOracleTitleClick(Column: TColumn);
    procedure CDSFirebirdAfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function LerIni(Arquivo,Alias,Chave,Default:String): String;
    procedure CdsSetOrderDBgrig(var CDS: TClientDataSet;
                                  var DBG: TDBGrid; Column: TColumn);
  end;

var
  FRMDemoDBExpress: TFRMDemoDBExpress;

implementation

{$R *.dfm}

procedure TFRMDemoDBExpress.BitBtn1Click(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  CDSFirebird.IndexDefs.Update;
  for i := 0 to CDSFirebird.IndexDefs.Count - 1 do
  begin
    if CDSFirebird.IndexDefs.Items[i].Name = eCampo.Text then
    begin
      CDSFirebird.DeleteIndex(eCampo.Text);
    end;
  end;

  for i := 0 to dbgFirebird.Columns.Count - 1 do
  begin
    if dbgFirebird.Columns[i].Field.FieldName = eCampo.Text then
      dbgFirebird.Columns[i].Title.Font.Color := clRed
    else
      dbgFirebird.Columns[i].Title.Font.Color := clBlack;;
  end;

  CDSFirebird.AddIndex(eCampo.Text,
                       eCampo.Text,
                       [],
                       '',
                       '',
                       0);
  CDSFirebird.IndexName := eCampo.Text;

  CDSFirebird.SetKey;
  CDSFirebird.FieldByName(eCampo.Text).AsString := ePesquisa.Text;

  if not CDSFirebird.GotoKey then
    ShowMessage('Record not found');
end;

procedure TFRMDemoDBExpress.bitConectarFireBirdClick(Sender: TObject);
begin
  SQLCFirebird.Close;
 try
   SQLCFirebird.ConnectionName := LerIni('CONFIG.INI','FIREBIRD','ConnectionName','DEMODBEXPRESSFB');//Carregar o Nome da Conexão com o Banco
   SQLCFirebird.ParamsLoaded   := True;
   SQLCFirebird.DriverName     := LerIni('CONFIG.INI','FIREBIRD','drivername','FIREBIRD');//Carregar o Driver a Ser utilizado
   SQLCFirebird.GetDriverFunc  := 'getSQLDriverINTERBASE';//Função do Driver
   SQLCFirebird.LibraryName    := 'dbxfb.dll';//Dll do Driver
   SQLCFirebird.VendorLib      := 'fbclient.dll';//Dll do Client SGDB
   SQLCFirebird.Params.Add('drivername='+LerIni('CONFIG.INI','FIREBIRD','drivername','FIREBIRD'));//Carregar o Driver a Ser utilizado
   SQLCFirebird.Params.Add('hostname='+LerIni('CONFIG.INI','FIREBIRD','hostname','localhost'));//Nome do HOST "Servidor"
   SQLCFirebird.Params.Add('user_name='+LerIni('CONFIG.INI','FIREBIRD','user_name','SYSDBA'));
   SQLCFirebird.Params.Add('password='+LerIni('CONFIG.INI','FIREBIRD','password','masterkey'));
   SQLCFirebird.Params.Add('port='+LerIni('CONFIG.INI','FIREBIRD','port','3050'));//Porta de Configuração do SGDB
   SQLCFirebird.Params.Add('Database='+LerIni('CONFIG.INI','FIREBIRD','Database','C:\DBExpress\BDACTIVE.FDB'));//Caminho do Banco de dados
   SQLCFirebird.Params.Add('blobsize=-1');
   SQLCFirebird.Open;
 except
   MessageDlg('Não foi possivel Conectar ao Banco de Dados!',mtError,[mbOK],0);
   exit;
 end;
 if bitConectarFireBird.Caption = 'Abrir Conexão' then
  begin
   SQLCFirebird.Open;
   CDSFirebird.Open;
   bitConectarFireBird.Caption := 'Fechar Conexão';
  end
 else
  begin
   CDSFirebird.Close;
   SQLCFirebird.Close;
   bitConectarFireBird.Caption := 'Abrir Conexão';
  end;
end;

procedure TFRMDemoDBExpress.bitConectarOracleClick(Sender: TObject);
begin
  SQLCOracle.Close;
 try
   SQLCOracle.ConnectionName := LerIni('CONFIG.INI','ORACLE','ConnectionName','DemoDBExpressOracle');//Carregar o Nome da Conexão com o Banco
   SQLCOracle.ParamsLoaded   := True;
   SQLCOracle.DriverName     := LerIni('CONFIG.INI','ORACLE','drivername','ORACLE');//Carregar o Driver a Ser utilizado
   SQLCOracle.GetDriverFunc  := 'getSQLDriverORACLE';//Função do Driver
   SQLCOracle.LibraryName    := 'dbxora.dll';//Dll do Driver
   SQLCOracle.VendorLib      := 'oci.dll';//Dll do Client SGDB
   SQLCOracle.Params.Add('drivername='+LerIni('CONFIG.INI','ORACLE','drivername','ORACLE'));//Carregar o Driver a Ser utilizado
   SQLCOracle.Params.Add('hostname='+LerIni('CONFIG.INI','ORACLE','hostname','localhost'));//Nome do HOST "Servidor"
   SQLCOracle.Params.Add('user_name='+LerIni('CONFIG.INI','ORACLE','user_name','Pedro'));
   SQLCOracle.Params.Add('password='+LerIni('CONFIG.INI','ORACLE','password','12345678'));
   SQLCOracle.Params.Add('port='+LerIni('CONFIG.INI','ORACLE','port','1521'));//Porta de Configuração do SGDB
   SQLCOracle.Params.Add('Database='+LerIni('CONFIG.INI','ORACLE','Database','XE'));//Nome da Instancia do Banco de Dados
   SQLCOracle.Params.Add('blobsize=-1');
   SQLCOracle.Open;
 except
   MessageDlg('Não foi possivel Conectar ao Banco de Dados!',mtError,[mbOK],0);
   exit;
 end;
 if bitConectarOracle.Caption = 'Abrir Conexão' then
  begin
   SQLCOracle.Open;
   CDSOracle.Open;
   bitConectarOracle.Caption := 'Fechar Conexão';
  end
 else
  begin
   CDSOracle.Close;
   SQLCOracle.Close;
   bitConectarOracle.Caption := 'Abrir Conexão';
  end;
end;

procedure TFRMDemoDBExpress.bitFirebirdClick(Sender: TObject);
begin
 CDSFirebird.ApplyUpdates(0);
end;

procedure TFRMDemoDBExpress.bitOracleClick(Sender: TObject);
begin
 CDSOracle.ApplyUpdates(0);
end;

procedure TFRMDemoDBExpress.dbgFirebirdTitleClick(Column: TColumn);
begin
  CdsSetOrderDBgrig(CDSFirebird,dbgFirebird,Column);
end;

procedure TFRMDemoDBExpress.DBGOracleTitleClick(Column: TColumn);
begin
  CdsSetOrderDBgrig(CDSOracle,DBGOracle,Column);
end;

procedure TFRMDemoDBExpress.CDSFirebirdAfterOpen(DataSet: TDataSet);
begin
  DataSet.GetFieldNames(eCampo.Items);
end;

procedure TFRMDemoDBExpress.CdsSetOrderDBgrig(var CDS: TClientDataSet;
  var DBG: TDBGrid; Column: TColumn);
const
  idxDefault = 'DEFAULT_ORDER';
var
  strColumn : string;
  i         : integer;
  bolUsed   : boolean;
  idOptions : TIndexOptions;
begin
  strColumn := idxDefault;

  //Verificar se é possivel criar index para o tipo de dados da Coluna Solicitadas
  if Column.Field.FieldKind in [fkCalculated, fkLookup, fkAggregate] then
    Exit;

  if Column.Field.DataType in [ftBlob, ftMemo] then
    Exit;

//Mudar a Cor e Fonte do Titulo da Coluna que está sendo Feita a Ordenação para melhor visualização do Usuario
  for i := 0 to DBG.Columns.Count - 1 do
  begin
    DBG.Columns[i].Title.Font.Color := clBlack;
  end;

  DBG.Columns[Column.Index].Title.Font.Color := clRed;

//Verificar se o Index já está sendo utilizado
  bolUsed := (Column.Field.FieldName = CDS.IndexName);

//Criação do Index
  CDS.IndexDefs.Update; //Alterar Index Existente
//Percorrer os index para inversão da ordenação
  for i := 0 to CDS.IndexDefs.Count - 1 do
  begin
    if CDS.IndexDefs.Items[i].Name = Column.Field.FieldName then
    begin
      strColumn := Column.Field.FieldName;
      case (CDS.IndexDefs.Items[i].Options = [ixDescending]) of
        True  : idOptions := [];//Ascendente
        False : idOptions := [ixDescending]; //Decrescente
      end;
    end;
  end;

//caso o Index já estiver sendo utilizado ou for o Index Padrão Destruir da Memoria
  if (strColumn = idxDefault) or (bolUsed) then
  begin
    if bolUsed then
      CDS.DeleteIndex(Column.Field.FieldName);//Deletar Index da memoria
    try
	//Criar o Index na Memoria
      CDS.AddIndex(Column.Field.FieldName,
                   Column.Field.FieldName,
                   idOptions,
                   '',
                   '',
                   0);
      strColumn := Column.Field.FieldName;
    except
      if bolUsed then
        strColumn := idxDefault;
    end;
  end;

  //Aplicar o Index ao ClientDataSet
  try
    CDS.IndexName := strColumn;
  except
    CDS.IndexName := idxDefault;
  end;
end;

function TFRMDemoDBExpress.LerIni(Arquivo, Alias, Chave, Default: String): String;
var  config: TIniFile;
begin
 config := TIniFile.Create(ExtractFilePath(Application.ExeName)+Arquivo);
 Result := config.ReadString(Alias,Chave,Default);
end;

end.
