unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons;

type
  TValerievich = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    OpenModalForm: TMenuItem;
    OpenModalessForm: TMenuItem;
    BitBtn1: TBitBtn;
    procedure OpenModalFormClick(Sender: TObject);
    procedure OpenModalessFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TValerievich.OpenModalFormClick(Sender: TObject);
begin
  ModalForm.ShowModal;
end;

procedure TValerievich.OpenModalessFormClick(Sender: TObject);
begin
  ModalessForm.Show;
end;

end.
