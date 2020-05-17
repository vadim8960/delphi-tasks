program Akimov;

uses
  Forms,
  Vadim in 'Vadim.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Valerievich);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
