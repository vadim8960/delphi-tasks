program Akimov;

uses
  Forms,
  Vadim in 'Vadim.pas' {Valerievich};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TValerievich, Valerievich);
  Application.Run;
end.
