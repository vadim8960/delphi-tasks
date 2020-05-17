program Akimov;

uses
  Forms,
  Vadim in 'Vadim.pas' {Valerievich},
  Unit2 in 'Unit2.pas' {ModalForm},
  Unit1 in 'Unit1.pas' {ModalessForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TValerievich, Valerievich);
  Application.CreateForm(TModalForm, ModalForm);
  Application.CreateForm(TModalessForm, ModalessForm);
  Application.Run;
end.
