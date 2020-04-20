program Akimov;

uses
  Forms,
  Vadim in 'Vadim.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Valerievich);
  Application.Run;
end.
