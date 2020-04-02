unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TValerievich = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_x1: TEdit;
    Label3: TLabel;
    edt_y1: TEdit;
    Label4: TLabel;
    edt_x2: TEdit;
    Label5: TLabel;
    edt_y2: TEdit;
    Label6: TLabel;
    edt_x3: TEdit;
    Label7: TLabel;
    edt_y3: TEdit;
    Label8: TLabel;
    edt_x4: TEdit;
    Label9: TLabel;
    edt_y4: TEdit;
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Image1.Picture.LoadFromFile('image.bmp');
  Memo1.Lines.Add('Выполнил Акимов В.В.');
  Memo1.Lines.Add('------------------------');
end;

procedure TValerievich.Button1Click(Sender: TObject);
var
  x1, x2, x3, x4: real;
  y1, y2, y3, y4: real;
begin
  try
    x1 := StrToFloat(edt_x1.Text);
  except
    ShowMessage('Ошибка ввода X1');
    Exit;
  end;
  try
    x2 := StrToFloat(edt_x2.Text);
  except
    ShowMessage('Ошибка ввода X2');
    Exit;
  end;
  try
    x3 := StrToFloat(edt_x3.Text);
  except
    ShowMessage('Ошибка ввода X3');
    Exit;
  end;
  try
    x4 := StrToFloat(edt_x4.Text);
  except
    ShowMessage('Ошибка ввода X4');
    Exit;
  end;
  try
    y1 := StrToFloat(edt_y1.Text);
  except
    ShowMessage('Ошибка ввода Y1');
    Exit;
  end;
  try
    y2 := StrToFloat(edt_y2.Text);
  except
    ShowMessage('Ошибка ввода Y2');
    Exit;
  end;
  try
    y3 := StrToFloat(edt_y3.Text);
  except
    ShowMessage('Ошибка ввода Y3');
    Exit;
  end;
  try
    y4 := StrToFloat(edt_y4.Text);
  except
    ShowMessage('Ошибка ввода Y4');
    Exit;
  end;

  Memo1.Lines.Add('P1_P2 = ' + FloatToStrF(sqrt(sqr(x1 - x2) + sqr(y1 - y2)), fffixed, 8, 5));
  Memo1.Lines.Add('P1_P3 = ' + FloatToStrF(sqrt(sqr(x1 - x3) + sqr(y1 - y3)), fffixed, 8, 5));
  Memo1.Lines.Add('P1_P4 = ' + FloatToStrF(sqrt(sqr(x1 - x4) + sqr(y1 - y4)), fffixed, 8, 5));
  Memo1.Lines.Add('P2_P3 = ' + FloatToStrF(sqrt(sqr(x2 - x3) + sqr(y2 - y3)), fffixed, 8, 5));
  Memo1.Lines.Add('P2_P4 = ' + FloatToStrF(sqrt(sqr(x2 - x4) + sqr(y2 - y4)), fffixed, 8, 5));
  Memo1.Lines.Add('P3_P4 = ' + FloatToStrF(sqrt(sqr(x3 - x4) + sqr(y3 - y4)), fffixed, 8, 5));
  Memo1.Lines.Add('------------------------');
end;

end.
