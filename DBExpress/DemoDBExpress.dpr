program DemoDBExpress;

uses
  Forms,
  uDemoDBExpress in 'uDemoDBExpress.pas' {FRMDemoDBExpress};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMDemoDBExpress, FRMDemoDBExpress);
  Application.Run;
end.
