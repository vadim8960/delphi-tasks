unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, TeeProcs, Chart, TeeShape,
  ComCtrls;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series5: TFastLineSeries;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Series6: TFastLineSeries;
    procedure FormCreate(Sender: TObject);
    procedure Chart1MoveMouse(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Chart1MouseWheel(Sender: TObject; Shift: TShiftState;
                      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xmin, xmax, ymin, ymax, hx, hy, h: extended;

implementation

uses Math;

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
    y1 := 12 - x;
    y2 := 2 * x - 12;
    y3 := 2 * x;
    y4 := 4 - 2 * x;
    y5 := 0;

    Form1.Series1.AddXY(x, y1);
    Form1.Series2.AddXY(x, y2);
    Form1.Series3.AddXY(x, y3);
    Form1.Series4.AddXY(x, y4);
    Form1.Series6.AddXY(x, y5);
    i := Min(y1, Min(y2, Min(y3, Min(y4, y5))));
    while (i <= Max(y1, Max(y2, Max(y3, Max(y4, y5))))) do begin
      if (i <= y1) and (i >= 0) and (i >= y2) and
          (i <= y3) and (i >= y4) then
        Form1.Series5.AddXY(x, i);
      i := i + h;
    end;
    x := x + 0.1;
  until(x > Form1.Chart1.BottomAxis.Maximum);


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xmin := -10; xmax := 10; ymin := -10; ymax := 10;
  hx := 0.1; hy := 0.1; h := 0.1;
  Chart1.TabStop := True;
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
  delta_size_y := Sign(WheelDelta) * (Chart1.LeftAxis.Maximum -
                                      Chart1.LeftAxis.Minimum) / 10;
  delta_size_x := Sign(WheelDelta) * (Chart1.BottomAxis.Maximum -
                                      Chart1.BottomAxis.Minimum) / 10;
  Chart1.LeftAxis.Minimum := Chart1.LeftAxis.Minimum + delta_size_y;
  Chart1.LeftAxis.Maximum := Chart1.LeftAxis.Maximum - delta_size_y;
  Chart1.BottomAxis.Minimum := Chart1.BottomAxis.Minimum + delta_size_x;
  Chart1.BottomAxis.Maximum := Chart1.BottomAxis.Maximum - delta_size_x;
  redraw_chart();
  Handled := False;
end;

end.
