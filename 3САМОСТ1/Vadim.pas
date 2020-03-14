unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TValerievich = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_x: TEdit;
    Label3: TLabel;
    edt_y: TEdit;
    Memo1: TMemo;
    rg_functions: TRadioGroup;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure rg_functionsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;

implementation

{$R *.dfm}

procedure TValerievich.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('������ 1 �������� ������ �.�.')
end;

procedure TValerievich.rg_functionsClick(Sender: TObject);
var
  x, y, v: real;
  str: string;
begin
  case rg_functions.ItemIndex of
    0:begin
        v := sin(x * x + y * y) + exp(y - x);
      end;
    1:begin
        v := sin(x + y * y) / cos(x + y * y) + y * ln(x);
      end;
    2:begin
        v := abs(cos(x)) + arctan(1 / y);
      end;
    3:begin
        v := sqr(cos(x)) + abs(y) / arctan(x);
      end;
  end;

  Memo1.Lines.Add('u = ' + FloatToStrF(v, fffixed, 8, 5));
  rg_functions.ItemIndex := -1;
end;

end.
