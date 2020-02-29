unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_x: TEdit;
    Label3: TLabel;
    edt_y: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    edt_z: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('Пример 1 выполнил Акимов В.В.')
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  x, y, z, u: Real;
begin
  try
    x := StrToFloat(edt_x.Text);
  except
    ShowMessage('Ошибка ввода числа X');
    Exit;
  end;
  
  try
    y := StrToFloat(edt_y.Text);
  except
    ShowMessage('Ошибка ввода числа Y');
    Exit;
  end;

  try
    z := StrToFloat(edt_z.Text);
  except
    ShowMessage('Ошибка ввода числа Z');
    Exit;
  end;

  try
    u := 1 / Cos(x + y) + Exp(y - z);
  except
    ShowMessage('Деление на ноль. Измените числа X и Y.');
    Exit;
  end;

  Memo1.Lines.Add('X = ' + edt_x.Text);
  Memo1.Lines.Add('Y = ' + edt_y.Text);
  Memo1.Lines.Add('Z = ' + edt_z.Text);
  Memo1.Lines.Add('Результат u = ' + FloatToStrF(u, fffixed, 8, 3));
end;

end.
