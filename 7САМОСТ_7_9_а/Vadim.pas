unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, TeeProcs, Chart, TeeShape,
  ComCtrls;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    GroupBox1: TGroupBox;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Image2: TImage;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Image3: TImage;
    Series6: TPointSeries;
    procedure FormCreate(Sender: TObject);
    procedure Chart1MoveMouse(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Chart1MouseWheel(Sender: TObject; Shift: TShiftState;
                      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure GroupBox1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure GroupBox3Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xmin, xmax, ymin, ymax, hx, hy, h: extended;
  current_plot: Integer;
  button_state: Boolean;

implementation

uses Math;

{$R *.dfm}

procedure setup_chart_plot1();
begin
  Form1.Series1.Active := True;
  Form1.Series2.Active := True;
  Form1.Series3.Active := True;
  Form1.Series4.Active := True;
  Form1.Series5.Active := True;
  Form1.Series6.Active := True;

  Form1.Series1.Title := 'x1 + x2 = 12';
  Form1.Series2.Title := '2x1 - x2 = 12';
  Form1.Series3.Title := '2x1 - x2 = 0';
  Form1.Series4.Title := '2x1 + x2 = 4';
  Form1.Series5.Title := 'x = 0';
  Form1.Series6.Title := 'Область';

  Form1.Chart1.Title.Text.Text := 'Первая область';
end;

procedure setup_chart_plot2();
begin
  Form1.Series1.Active := True;
  Form1.Series2.Active := True;
  Form1.Series3.Active := True;
  Form1.Series4.Active := True;
  Form1.Series5.Active := False;
  Form1.Series6.Active := True;

  Form1.Series1.Title := '-x1 + x2 = 6';
  Form1.Series2.Title := '-2x1 + x2 = 6';
  Form1.Series3.Title := 'x1 - 3x2 = -3';
  Form1.Series4.Title := 'x1 + 2x2 = 2';
  Form1.Series5.Title := '';
  Form1.Series6.Title := 'Область';

  Form1.Chart1.Title.Text.Text := 'Вторая область';
end;

procedure setup_chart_plot3();
begin
  Form1.Series1.Active := True;
  Form1.Series2.Active := True;
  Form1.Series3.Active := True;
  Form1.Series4.Active := True;
  Form1.Series5.Active := False;
  Form1.Series6.Active := True;

  Form1.Series1.Title := '-x1 + x2 = 5';
  Form1.Series2.Title := '-5x1 - 2x2 = 20';
  Form1.Series3.Title := '8x1 - 3x2 = 0';
  Form1.Series4.Title := '5x1 - 6x2 = 0';
  Form1.Series5.Title := '';
  Form1.Series6.Title := 'Область';

  Form1.Chart1.Title.Text.Text := 'Третья область';
end;

procedure setup_chart();
begin
  case (current_plot) of
    1: setup_chart_plot1();
    2: setup_chart_plot2();
    3: setup_chart_plot3();
  end;
end;

procedure init_chart();
begin
  setup_chart();
  Form1.Chart1.TabStop := True;
  Form1.Chart1.BottomAxis.Automatic := False;
  Form1.Chart1.BottomAxis.Minimum := xmin;
  Form1.Chart1.BottomAxis.Maximum := xmax;
  Form1.Chart1.LeftAxis.Automatic := False;
  Form1.Chart1.LeftAxis.Minimum := ymin;
  Form1.Chart1.LeftAxis.Maximum := ymax;
  Form1.Chart1.BottomAxis.Increment := hx;
  Form1.Chart1.LeftAxis.Increment := hy;
end;

procedure compute_y_plot1(x: Extended; var y1, y2, y3, y4, y5: Extended);
begin
  y1 := 12 - x;
  y2 := 2 * x - 12;
  y3 := 2 * x;
  y4 := 4 - 2 * x;
  y5 := 0;
end;

procedure compute_y_plot2(x: Extended; var y1, y2, y3, y4, y5: Extended);
begin
  y1 := 6 + x;
  y2 := 6 + 2 * x;
  y3 := (-3 - x) / 3;
  y4 := (-2 + x) / 2;
  y5 := 0;
end;

procedure compute_y_plot3(x: Extended; var y1, y2, y3, y4, y5: Extended);
begin
  y1 := 5 + x;
  y2 := (-20 - 5 * x) / 2;
  y3 := 8 / 3 * x;
  y4 := 5 / 6 * x;
  y5 := 0;
end;

procedure compute_y(x: Extended; var y1, y2, y3, y4, y5: Extended);
begin
  case (current_plot) of
    1: compute_y_plot1(x, y1, y2, y3, y4, y5);
    2: compute_y_plot2(x, y1, y2, y3, y4, y5);
    3: compute_y_plot3(x, y1, y2, y3, y4, y5);
  end;
end;

function area_condition1(i, y1, y2, y3, y4, y5: Extended) : Boolean;
begin
  Result := (i <= y1) and (i >= 0) and (i >= y2) and
            (i <= y3) and (i >= y4) and (i >= y5);
end;

function area_condition2(i, y1, y2, y3, y4, y5: Extended) : Boolean;
begin
  Result := (i >= y1) and (i <= y2) and (i >= y3) and (i >= y4);
end;

function area_condition3(i, y1, y2, y3, y4, y5: Extended) : Boolean;
begin
  Result := (i <= y1) and (i >= y2) and (i <= y3) and (i >= y4);
end;

function area_condition(i, y1, y2, y3, y4, y5: Extended) : Boolean;
begin
  case (current_plot) of
    1: Result := area_condition1(i, y1, y2, y3, y4, y5);
    2: Result := area_condition2(i, y1, y2, y3, y4, y5);
    3: Result := area_condition3(i, y1, y2, y3, y4, y5);
  end;
end;

procedure redraw_chart();
var
  x, y1, y2, y3, y4, y5: extended;
  i: extended;
begin
  Form1.Series1.Clear;
  Form1.Series2.Clear;
  Form1.Series3.Clear;
  Form1.Series4.Clear;
  Form1.Series5.Clear;
  Form1.Series6.Clear;

  x := Form1.Chart1.BottomAxis.Minimum;

  repeat
    compute_y(x, y1, y2, y3, y4, y5);

    Form1.Series1.AddXY(x, y1);
    Form1.Series2.AddXY(x, y2);
    Form1.Series3.AddXY(x, y3);
    Form1.Series4.AddXY(x, y4);
    Form1.Series5.AddXY(x, y5);
    i := Min(y1, Min(y2, Min(y3, Min(y4, y5))));
    while (i <= Max(y1, Max(y2, Max(y3, Max(y4, y5))))) do begin
      if area_condition(i, y1, y2, y3, y4, y5) then
        Form1.Series6.AddXY(x, i);
      i := i + h;
    end;
    x := x + h;
  until(x > Form1.Chart1.BottomAxis.Maximum);
end;

procedure hide_setup_area();
begin
  Form1.Width := 1049;
  Form1.GroupBox1.Visible := False;
  Form1.GroupBox2.Visible := False;
  Form1.GroupBox3.Visible := False;
  Form1.Button1.Caption := '->';
end;

procedure show_setup_area();
begin
  Form1.Width := 1334;
  Form1.GroupBox1.Visible := True;
  Form1.GroupBox2.Visible := True;
  Form1.GroupBox3.Visible := True;
  Form1.Button1.Caption := '<-';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xmin := -10; xmax := 10; ymin := -10; ymax := 10;
  hx := 0.1; hy := 0.1; h := 0.5;
  current_plot := 1;
  button_state := False;
  hide_setup_area();
  Image1.Picture.LoadFromFile('first.bmp');
  Image2.Picture.LoadFromFile('second.bmp');
  Image3.Picture.LoadFromFile('third.bmp');
  init_chart();
  redraw_chart();
end;

procedure TForm1.Chart1MoveMouse(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if (ssRight in Shift) then
    redraw_chart();
end;

procedure TForm1.Chart1MouseWheel(Sender: TObject; Shift: TShiftState;
                    WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  delta_size_x, delta_size_y: extended;
begin
  delta_size_y := WheelDelta / 120 * (Chart1.LeftAxis.Maximum -
                                      Chart1.LeftAxis.Minimum) / 10;
  delta_size_x := WheelDelta / 120 * (Chart1.BottomAxis.Maximum -
                                      Chart1.BottomAxis.Minimum) / 10;
  Chart1.LeftAxis.Minimum := Chart1.LeftAxis.Minimum + delta_size_y;
  Chart1.LeftAxis.Maximum := Chart1.LeftAxis.Maximum - delta_size_y;
  Chart1.BottomAxis.Minimum := Chart1.BottomAxis.Minimum + delta_size_x;
  Chart1.BottomAxis.Maximum := Chart1.BottomAxis.Maximum - delta_size_x;
  h := h - WheelDelta / 120 * h * 0.1;
  Chart1.BottomAxis.Increment := Chart1.BottomAxis.Increment -
                           WheelDelta / 120 * Chart1.BottomAxis.Increment * 0.1;
  Chart1.LeftAxis.Increment := Chart1.LeftAxis.Increment -
                           WheelDelta / 120 * Chart1.LeftAxis.Increment * 0.1;
  redraw_chart();
end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin
  current_plot := 1;
  init_chart();
  redraw_chart();
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  current_plot := 1;
  init_chart();
  redraw_chart();
end;

procedure TForm1.GroupBox2Click(Sender: TObject);
begin
  current_plot := 2;
  init_chart();
  redraw_chart();
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  current_plot := 2;
  init_chart();
  redraw_chart();
end;

procedure TForm1.GroupBox3Click(Sender: TObject);
begin
  current_plot := 3;
  init_chart();
  redraw_chart();
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  current_plot := 3;
  init_chart();
  redraw_chart();
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (button_state) then
    hide_setup_area()
  else
    show_setup_area();
  button_state := not button_state;
end;

end.
