unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x, y, i: Integer;
begin
  randomize;
  for i := 0 to (PaintBox1.Width * PaintBox1.Height) div 30 do begin
    x := random(PaintBox1.Width);
    y := random(PaintBox1.Height);
    PaintBox1.Canvas.Pixels[x, y] := RGB(random(255), random(255), random(255));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  x, y, i: Integer;
begin
  randomize;
  for i := 0 to (PaintBox1.Width * PaintBox1.Height) div 3000 do begin
    PaintBox1.Canvas.Pen.Color := RGB(random(255), random(255), random(255));
    PaintBox1.Canvas.Pen.Width := random(3) + 1;
    x := random(PaintBox1.Width);
    y := random(PaintBox1.Height);
    PaintBox1.Canvas.MoveTo(x, y);
    x := random(PaintBox1.Width);
    y := random(PaintBox1.Height);
    PaintBox1.Canvas.LineTo(x, y);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  x1, x2, y1, y2, i: Integer;
begin
  randomize;
  for i := 0 to (PaintBox1.Width * PaintBox1.Height) div 3000 do begin
    PaintBox1.Canvas.Pen.Color := RGB(random(255), random(255), random(255));
    PaintBox1.Canvas.Pen.Width := random(3) + 1;
    PaintBox1.Canvas.Brush.Color := RGB(random(255), random(255), random(255));
    x1 := random(PaintBox1.Width);
    y1 := random(PaintBox1.Height);
    x2 := random(PaintBox1.Width);
    y2 := random(PaintBox1.Height);
    PaintBox1.Canvas.Ellipse(x1, y1, x2, y2);
  end;
end;

end.
