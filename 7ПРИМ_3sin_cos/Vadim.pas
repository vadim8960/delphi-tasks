unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xmin, xmax, ymin, ymax, hx, hy, h: extended;

implementation

{$R *.dfm}

procedure init_chart();
begin
  try
    Form1.Chart1.BottomAxis.Automatic := False;
    Form1.Chart1.BottomAxis.Minimum := xmin;
    Form1.Chart1.BottomAxis.Maximum := xmax;
    Form1.Chart1.LeftAxis.Automatic := False;
    Form1.Chart1.LeftAxis.Minimum := ymin;
    Form1.Chart1.LeftAxis.Maximum := ymax;
    Form1.Chart1.BottomAxis.Increment := hx;
    Form1.Chart1.LeftAxis.Increment := hy;
  except
    ShowMessage('Проверьте корректность введенных значений');
  end;
end;

procedure update_data();
begin
  try
    xmin := StrToFloat(Form1.Edit1.Text);
  except
    ShowMessage('Некорректные данные в поле Xmin');
    exit;
  end;
  try
    ymin := StrToFloat(Form1.Edit2.Text);
  except
    ShowMessage('Некорректные данные в поле Ymin');
    exit;
  end;
  try
    xmax := StrToFloat(Form1.Edit3.Text);
  except
    ShowMessage('Некорректные данные в поле Xmax');
    exit;
  end;
  try
    ymax := StrToFloat(Form1.Edit4.Text);
  except
    ShowMessage('Некорректные данные в поле Ymax');
    exit;
  end;
  try
    hx := StrToFloat(Form1.Edit5.Text);
  except
    ShowMessage('Некорректные данные в поле hx');
    exit;
  end;
  try
    hy := StrToFloat(Form1.Edit6.Text);
  except
    ShowMessage('Некорректные данные в поле hy');
    exit;
  end;
  try
    h := StrToFloat(Form1.Edit7.Text);
  except
    ShowMessage('Некорректные данные в поле h');
    exit;
  end;

  init_chart();
end;

procedure redraw_chart();
var
  x, y1, y2, y3: extended;
begin
  Form1.Series1.Clear;
  Form1.Series2.Clear;
  Form1.Series3.Clear;
  update_data();

  x := xmin;

  repeat
    y1 := sin(x);
    y2 := cos(x);
    y3 := y1 * y2;
    Form1.Series1.AddXY(x, y1);
    Form1.Series2.AddXY(x, y2);
    Form1.Series3.AddXY(x, y3);
    x := x + h;
  until(x > xmax);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xmin := 0; xmax := 2 * pi; ymin := -1; ymax := 1;
  hx := pi / 2; hy := 0.5; h := 0.01;

  Edit1.Text := FloatToStr(xmin);
  Edit2.Text := FloatToStr(ymin);
  Edit3.Text := FloatToStr(xmax);
  Edit4.Text := FloatToStr(ymax);
  Edit5.Text := FloatToStr(hx);
  Edit6.Text := FloatToStr(hy);
  Edit7.Text := FloatToStr(h);

  init_chart();
  redraw_chart();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close();
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  update_data();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  redraw_chart();
end;

end.
