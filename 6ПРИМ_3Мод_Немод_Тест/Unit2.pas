unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TModalForm = class(TForm)
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
  ModalForm: TModalForm;

implementation

{$R *.dfm}

procedure TModalForm.FormCreate(Sender: TObject);
begin
  ModalForm.Color := clGreen;
  ModalForm.BorderStyle := bsDialog;
  BitBtn1.Kind := bkOK;
end;

procedure TModalForm.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
