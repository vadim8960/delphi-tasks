unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    rd_group: TRadioGroup;
    Label1: TLabel;
    edt_x: TEdit;
    Label2: TLabel;
    edt_y: TEdit;
    Label3: TLabel;
    edt_z: TEdit;
    Memo1: TMemo;
    Image1: TImage;
    procedure rd_groupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.rd_groupClick(Sender: TObject);
var
  p, x, y, z, s: real;
begin
  x := StrToFloat(edt_x.Text);
  y := StrToFloat(edt_y.Text);
  z := StrToFloat(edt_z.Text);

  case rd_group.ItemIndex of
    0:begin
        p := (x + y + z) / 2;
        s := sqrt(p * (p - x) * (p - y) * (p - z));
        Image1.Picture.LoadFromFile('triangle.bmp');
      end;
    1:begin
        s := Pi * x * x;
        Image1.Picture.LoadFromFile('circle.bmp');
      end;
    2:begin
        s := x * x;
        Image1.Picture.LoadFromFile('rect.bmp');
      end;
  end;
  Memo1.Lines.Add('S = ' + FloatToStrF(s, fffixed, 8, 5));
end;

end.
