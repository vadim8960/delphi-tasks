unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TModalessForm = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModalessForm: TModalessForm;

implementation

{$R *.dfm}

procedure TModalessForm.FormCreate(Sender: TObject);
begin
  ModalessForm.Color := clYellow;
  ModalessForm.BorderStyle := bsDialog;
  BitBtn1.Kind := bkOK;
end;

procedure TModalessForm.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
