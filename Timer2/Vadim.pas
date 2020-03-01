unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt_value: TEdit;
    btn_convert: TButton;
    Label1: TLabel;
    procedure btn_convertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_convertClick(Sender: TObject);
var
  v: Real;
begin
  try
    v := StrToFloat(edt_value.Text);
  except
    ShowMessage('Не корректные данные.');
    Exit;
  end;
  Label1.Caption := FormatDateTime('dd.mm.yyyy  hh:mm:ss', v);
end;

end.
