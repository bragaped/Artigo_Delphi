object FRMDemoDBExpress: TFRMDemoDBExpress
  Left = 0
  Top = 0
  Caption = 'Demo Conex'#227'o DBExpress'
  ClientHeight = 410
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 551
    Height = 410
    ActivePage = tsFirebird
    Align = alClient
    TabOrder = 0
    object tsFirebird: TTabSheet
      Caption = 'Firebird'
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'CHAVE'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 35
        Height = 13
        Caption = 'BANCO'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 59
        Height = 13
        Caption = 'DESCRICAO'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 128
        Width = 45
        Height = 13
        Caption = 'AGENCIA'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 211
        Top = 128
        Width = 35
        Height = 13
        Caption = 'CONTA'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 168
        Width = 48
        Height = 13
        Caption = 'DVCONTA'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 24
        Width = 134
        Height = 21
        DataField = 'CHAVE'
        DataSource = DSFirebird
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 64
        Width = 134
        Height = 21
        DataField = 'BANCO'
        DataSource = DSFirebird
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 104
        Width = 329
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DSFirebird
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 144
        Width = 134
        Height = 21
        DataField = 'AGENCIA'
        DataSource = DSFirebird
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 211
        Top = 144
        Width = 134
        Height = 21
        DataField = 'CONTA'
        DataSource = DSFirebird
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 184
        Width = 134
        Height = 21
        DataField = 'DVCONTA'
        DataSource = DSFirebird
        TabOrder = 5
      end
      object dbnFireBird: TDBNavigator
        Left = 16
        Top = 207
        Width = 240
        Height = 25
        DataSource = DSFirebird
        TabOrder = 6
      end
      object bitFirebird: TBitBtn
        Left = 262
        Top = 207
        Width = 75
        Height = 25
        Caption = 'Aplicar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = bitFirebirdClick
      end
      object bitConectarFireBird: TBitBtn
        Left = 400
        Top = 3
        Width = 140
        Height = 39
        Caption = 'Abrir Conex'#227'o'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 8
        OnClick = bitConectarFireBirdClick
      end
      object dbgFirebird: TDBGrid
        Left = 3
        Top = 234
        Width = 537
        Height = 146
        DataSource = DSFirebird
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbgFirebirdTitleClick
      end
      object GroupBox1: TGroupBox
        Left = 355
        Top = 48
        Width = 185
        Height = 133
        Caption = 'Pesquisa'
        TabOrder = 10
        object Label13: TLabel
          Left = 3
          Top = 14
          Width = 33
          Height = 13
          Caption = 'Campo'
        end
        object Label14: TLabel
          Left = 3
          Top = 58
          Width = 28
          Height = 13
          Caption = 'Texto'
        end
        object ePesquisa: TEdit
          Left = 3
          Top = 75
          Width = 179
          Height = 21
          TabOrder = 0
        end
        object eCampo: TComboBox
          Left = 3
          Top = 33
          Width = 179
          Height = 21
          Style = csDropDownList
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 104
          Top = 102
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
    end
    object TsOracle: TTabSheet
      Caption = 'Oracle'
      ImageIndex = 1
      object Label7: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'CHAVE'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 16
        Top = 48
        Width = 35
        Height = 13
        Caption = 'BANCO'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 16
        Top = 88
        Width = 59
        Height = 13
        Caption = 'DESCRICAO'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 16
        Top = 128
        Width = 45
        Height = 13
        Caption = 'AGENCIA'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 211
        Top = 128
        Width = 35
        Height = 13
        Caption = 'CONTA'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 16
        Top = 164
        Width = 48
        Height = 13
        Caption = 'DVCONTA'
        FocusControl = DBEdit12
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 24
        Width = 134
        Height = 21
        DataField = 'CHAVE'
        DataSource = DSOracle
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 16
        Top = 64
        Width = 134
        Height = 21
        DataField = 'BANCO'
        DataSource = DSOracle
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 16
        Top = 104
        Width = 329
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DSOracle
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 144
        Width = 134
        Height = 21
        DataField = 'AGENCIA'
        DataSource = DSOracle
        TabOrder = 3
      end
      object DBEdit11: TDBEdit
        Left = 211
        Top = 144
        Width = 134
        Height = 21
        DataField = 'CONTA'
        DataSource = DSOracle
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 16
        Top = 180
        Width = 134
        Height = 21
        DataField = 'DVCONTA'
        DataSource = DSOracle
        TabOrder = 5
      end
      object DBGOracle: TDBGrid
        Left = 3
        Top = 235
        Width = 537
        Height = 146
        DataSource = DSOracle
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGOracleTitleClick
      end
      object bitConectarOracle: TBitBtn
        Left = 400
        Top = 3
        Width = 140
        Height = 39
        Caption = 'Abrir Conex'#227'o'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 7
        OnClick = bitConectarOracleClick
      end
      object dbnOracle: TDBNavigator
        Left = 16
        Top = 207
        Width = 240
        Height = 25
        DataSource = DSOracle
        TabOrder = 8
      end
      object bitOracle: TBitBtn
        Left = 262
        Top = 207
        Width = 75
        Height = 25
        Caption = 'Aplicar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 9
        OnClick = bitOracleClick
      end
    end
  end
  object SQLCFirebird: TSQLConnection
    ConnectionName = 'DemoDBExpressFB'
    DriverName = 'FIREBIRD'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=FIREBIRD'
      'blobsize=-1'
      'commitretain=False'
      'Database=D:\Projetos\Artigo_Delphi\DBExpress\BDACTIVE.FDB'
      'localecode=0000'
      'Password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=True'
      'Port=3050')
    VendorLib = 'fbclient.dll'
    Left = 160
    Top = 32
  end
  object SQLDSFirebird: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 
      'select  CHAVE, BANCO,  DESCRICAO, AGENCIA, CONTA,  DVCONTA from ' +
      'BANCOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCFirebird
    Left = 192
    Top = 32
    object SQLDSFirebirdCHAVE: TIntegerField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSFirebirdBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLDSFirebirdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object SQLDSFirebirdAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDSFirebirdCONTA: TIntegerField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDSFirebirdDVCONTA: TIntegerField
      FieldName = 'DVCONTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DSPFirebird: TDataSetProvider
    DataSet = SQLDSFirebird
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 32
  end
  object CDSFirebird: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFirebird'
    AfterOpen = CDSFirebirdAfterOpen
    Left = 256
    Top = 32
    object CDSFirebirdCHAVE: TIntegerField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFirebirdBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CDSFirebirdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object CDSFirebirdAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CDSFirebirdCONTA: TIntegerField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object CDSFirebirdDVCONTA: TIntegerField
      FieldName = 'DVCONTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DSFirebird: TDataSource
    DataSet = CDSFirebird
    Left = 288
    Top = 32
  end
  object DSOracle: TDataSource
    DataSet = CDSOracle
    Left = 288
    Top = 88
  end
  object CDSOracle: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOracle'
    Left = 256
    Top = 88
    object CDSOracleCHAVE: TFMTBCDField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
    end
    object CDSOracleBANCO: TFMTBCDField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 32
    end
    object CDSOracleDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object CDSOracleAGENCIA: TFMTBCDField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Precision = 32
    end
    object CDSOracleCONTA: TFMTBCDField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Precision = 32
    end
    object CDSOracleDVCONTA: TFMTBCDField
      FieldName = 'DVCONTA'
      ProviderFlags = [pfInUpdate]
      Precision = 32
    end
  end
  object DSPOracle: TDataSetProvider
    DataSet = SQLDSOracle
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 88
  end
  object SQLDSOracle: TSQLDataSet
    SchemaName = 'Pedro'
    CommandText = 
      'select  CHAVE, BANCO,  DESCRICAO, AGENCIA, CONTA,  DVCONTA from ' +
      'BANCOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCOracle
    Left = 192
    Top = 88
    object SQLDSOracleCHAVE: TFMTBCDField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
    end
    object SQLDSOracleBANCO: TFMTBCDField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 32
    end
    object SQLDSOracleDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object SQLDSOracleAGENCIA: TFMTBCDField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Precision = 32
    end
    object SQLDSOracleCONTA: TFMTBCDField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Precision = 32
    end
    object SQLDSOracleDVCONTA: TFMTBCDField
      FieldName = 'DVCONTA'
      ProviderFlags = [pfInUpdate]
      Precision = 32
    end
  end
  object SQLCOracle: TSQLConnection
    ConnectionName = 'DemoDBExpressOracle'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbxora.dll'
    LoginPrompt = False
    Params.Strings = (
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver140.' +
        'bpl'
      'Decimal Separator=,'
      'Trim Char=True')
    VendorLib = 'oci.dll'
    Left = 160
    Top = 88
  end
end
