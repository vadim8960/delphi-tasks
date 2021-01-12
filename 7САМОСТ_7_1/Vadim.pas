unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    RadioGroup1: TRadioGroup;
    Image1: TImage;
    lblx1: TLabel;
    lbly1: TLabel;
    lblx2: TLabel;
    lbly2: TLabel;
    lblx3: TLabel;
    lbly3: TLabel;
    edtx1: TEdit;
    edty1: TEdit;
    edtx2: TEdit;
    edty2: TEdit;
    edtx3: TEdit;
    edty3: TEdit;
    lblCustom1: TLabel;
    lblCustom2: TLabel;
    lblCustom3: TLabel;
    edtCustom1: TEdit;
    edtCustom2: TEdit;
    edtCustom3: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    current_figure: Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x: Integer;

implementation

{$R *.dfm}


function cot(angle: Real) : Real;
begin
  angle := angle * Pi / 180;
  result := cos(angle) / sin(angle);
end;

procedure hide_all_components();
begin
  Form1.edtx1.Visible := False;
  Form1.edtx2.Visible := False;
  Form1.edtx3.Visible := False;
  Form1.edty1.Visible := False;
  Form1.edty2.Visible := False;
  Form1.edty3.Visible := False;

  Form1.lblx1.Visible := False;
  Form1.lblx2.Visible := False;
  Form1.lblx3.Visible := False;
  Form1.lbly1.Visible := False;
  Form1.lbly2.Visible := False;
  Form1.lbly3.Visible := False;

  Form1.lblCustom1.Visible := False;
  Form1.lblCustom2.Visible := False;
  Form1.lblCustom3.Visible := False;

  Form1.edtCustom1.Visible := False;
  Form1.edtCustom2.Visible := False;
  Form1.edtCustom3.Visible := False;

  Form1.Button1.Visible := False;

  Form1.Image1.Visible := False;

  Form1.Height := 310;
end;

procedure setup_components_for_circle();
begin
  Form1.lblx1.Visible := True;
  Form1.lblx2.Visible := False;
  Form1.lblx3.Visible := False;
  Form1.lbly1.Visible := True;
  Form1.lbly2.Visible := False;
  Form1.lbly3.Visible := False;

  Form1.edtx1.Visible := True;
  Form1.edtx2.Visible := False;
  Form1.edtx3.Visible := False;
  Form1.edty1.Visible := True;
  Form1.edty2.Visible := False;
  Form1.edty3.Visible := False;

  Form1.lblCustom1.Visible := True;
  Form1.lblCustom2.Visible := False;
  Form1.lblCustom3.Visible := False;

  Form1.edtCustom1.Visible := True;
  Form1.edtCustom2.Visible := False;
  Form1.edtCustom3.Visible := False;

  Form1.Button1.Visible := True;

  Form1.Image1.Visible := True;

  Form1.Height := 600;

  Form1.lblCustom1.Caption := 'R';
  Form1.edtCustom1.Text    := '60';
  Form1.edtx1.Text         := '125';
  Form1.edty1.Text         := '125';
  Form1.Button1.Caption    := 'Нарисовать';
  Form1.Image1.Picture.LoadFromFile('circle.bmp');
end;

procedure setup_components_for_ellipse();
begin
  Form1.lblx1.Visible := True;
  Form1.lblx2.Visible := False;
  Form1.lblx3.Visible := False;
  Form1.lbly1.Visible := True;
  Form1.lbly2.Visible := False;
  Form1.lbly3.Visible := False;

  Form1.edtx1.Visible := True;
  Form1.edtx2.Visible := False;
  Form1.edtx3.Visible := False;
  Form1.edty1.Visible := True;
  Form1.edty2.Visible := False;
  Form1.edty3.Visible := False;

  Form1.lblCustom1.Visible := True;
  Form1.lblCustom2.Visible := True;
  Form1.lblCustom3.Visible := False;

  Form1.edtCustom1.Visible := True;
  Form1.edtCustom2.Visible := True;
  Form1.edtCustom3.Visible := False;

  Form1.Button1.Visible := True;

  Form1.Image1.Visible := True;

  Form1.Height := 600;

  Form1.lblCustom1.Caption := 'L1';
  Form1.edtCustom1.Text    := '30';
  Form1.lblCustom2.Caption := 'L2';
  Form1.edtCustom2.Text    := '60';
  Form1.edtx1.Text         := '125';
  Form1.edty1.Text         := '125';
  Form1.Button1.Caption    := 'Нарисовать';
  Form1.Image1.Picture.LoadFromFile('ellipse.bmp');
end;

procedure setup_components_for_parallelog();
begin
  Form1.lblx1.Visible := True;
  Form1.lblx2.Visible := False;
  Form1.lblx3.Visible := False;
  Form1.lbly1.Visible := True;
  Form1.lbly2.Visible := False;
  Form1.lbly3.Visible := False;

  Form1.edtx1.Visible := True;
  Form1.edtx2.Visible := False;
  Form1.edtx3.Visible := False;
  Form1.edty1.Visible := True;
  Form1.edty2.Visible := False;
  Form1.edty3.Visible := False;

  Form1.lblCustom1.Visible := True;
  Form1.lblCustom2.Visible := True;
  Form1.lblCustom3.Visible := True;

  Form1.edtCustom1.Visible := True;
  Form1.edtCustom2.Visible := True;
  Form1.edtCustom3.Visible := True;

  Form1.Button1.Visible := True;

  Form1.Image1.Visible := True;

  Form1.Height := 600;

  Form1.lblCustom1.Caption := 'L';
  Form1.edtCustom1.Text    := '100';
  Form1.lblCustom2.Caption := 'H';
  Form1.edtCustom2.Text    := '100';
  Form1.lblCustom3.Caption := 'a';
  Form1.edtCustom3.Text    := '60';
  Form1.edtx1.Text         := '75';
  Form1.edty1.Text         := '75';
  Form1.Button1.Caption    := 'Нарисовать';
  Form1.Image1.Picture.LoadFromFile('parallelog.bmp');
end;

procedure setup_components_for_rect();
begin
  Form1.lblx1.Visible := True;
  Form1.lblx2.Visible := True;
  Form1.lblx3.Visible := False;
  Form1.lbly1.Visible := True;
  Form1.lbly2.Visible := True;
  Form1.lbly3.Visible := False;

  Form1.edtx1.Visible := True;
  Form1.edtx2.Visible := True;
  Form1.edtx3.Visible := False;
  Form1.edty1.Visible := True;
  Form1.edty2.Visible := True;
  Form1.edty3.Visible := False;

  Form1.lblCustom1.Visible := False;
  Form1.lblCustom2.Visible := False;
  Form1.lblCustom3.Visible := False;

  Form1.edtCustom1.Visible := False;
  Form1.edtCustom2.Visible := False;
  Form1.edtCustom3.Visible := False;

  Form1.Button1.Visible := True;

  Form1.Image1.Visible := True;

  Form1.Height := 600;

  Form1.edtx1.Text         := '50';
  Form1.edty1.Text         := '50';
  Form1.edtx2.Text         := '200';
  Form1.edty2.Text         := '150';
  Form1.Button1.Caption    := 'Нарисовать';
  Form1.Image1.Picture.LoadFromFile('rect.bmp');
end;

procedure setup_components_for_trapec();
begin
  Form1.lblx1.Visible := True;
  Form1.lblx2.Visible := True;
  Form1.lblx3.Visible := False;
  Form1.lbly1.Visible := True;
  Form1.lbly2.Visible := True;
  Form1.lbly3.Visible := False;

  Form1.edtx1.Visible := True;
  Form1.edtx2.Visible := True;
  Form1.edtx3.Visible := False;
  Form1.edty1.Visible := True;
  Form1.edty2.Visible := True;
  Form1.edty3.Visible := False;

  Form1.lblCustom1.Visible := True;
  Form1.lblCustom2.Visible := True;
  Form1.lblCustom3.Visible := False;

  Form1.edtCustom1.Visible := True;
  Form1.edtCustom2.Visible := True;
  Form1.edtCustom3.Visible := False;

  Form1.Button1.Visible := True;

  Form1.Image1.Visible := True;

  Form1.Height := 600;

  Form1.lblCustom1.Caption := 'L1';
  Form1.edtCustom1.Text    := '50';
  Form1.lblCustom2.Caption := 'L2';
  Form1.edtCustom2.Text    := '150';
  Form1.edtx1.Text         := '100';
  Form1.edty1.Text         := '75';
  Form1.edtx2.Text         := '50';
  Form1.edty2.Text         := '150';
  Form1.Button1.Caption    := 'Нарисовать';
  Form1.Image1.Picture.LoadFromFile('trapec.bmp');
end;

procedure setup_components_for_triangle();
begin
  Form1.lblx1.Visible := True;
  Form1.lblx2.Visible := True;
  Form1.lblx3.Visible := True;
  Form1.lbly1.Visible := True;
  Form1.lbly2.Visible := True;
  Form1.lbly3.Visible := True;

  Form1.edtx1.Visible := True;
  Form1.edtx2.Visible := True;
  Form1.edtx3.Visible := True;
  Form1.edty1.Visible := True;
  Form1.edty2.Visible := True;
  Form1.edty3.Visible := True;

  Form1.lblCustom1.Visible := False;
  Form1.lblCustom2.Visible := False;
  Form1.lblCustom3.Visible := False;

  Form1.edtCustom1.Visible := False;
  Form1.edtCustom2.Visible := False;
  Form1.edtCustom3.Visible := False;

  Form1.Button1.Visible := True;

  Form1.Image1.Visible := True;

  Form1.Height := 600;

  Form1.edtx1.Text         := '100';
  Form1.edty1.Text         := '50';
  Form1.edtx2.Text         := '50';
  Form1.edty2.Text         := '200';
  Form1.edtx3.Text         := '150';
  Form1.edty3.Text         := '200';
  Form1.Button1.Caption    := 'Нарисовать';
  Form1.Image1.Picture.LoadFromFile('triangle.bmp');
end;

function get_x1(): Integer;
var
  retv: Integer;
begin
  try
    retv := StrToInt(Form1.edtx1.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле x1');
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле x1');
    Result := -1;
  end;
end;

function get_x2(): Integer;
var
  retv: Integer;
begin
  try
    retv := StrToInt(Form1.edtx2.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле x2');
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле x2');
    Result := -1;
  end;
end;

function get_x3(): Integer;
var
  retv: Integer;
begin
  try
    retv := StrToInt(Form1.edtx3.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле x3');
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле x3');
    Result := -1;
  end;
end;

function get_y1(): Integer;
var
  retv: Integer;
begin
  try
    retv := StrToInt(Form1.edty1.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле y1');
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле y1');
    Result := -1;
  end;
end;

function get_y2(): Integer;
var
  retv: Integer;
begin
  try
    retv := StrToInt(Form1.edty2.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле y2');
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле y2');
    Result := -1;
  end;
end;

function get_y3(): Integer;
var
  retv: Integer;
begin
  try
    retv := StrToInt(Form1.edty3.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле y3');
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле y3');
    Result := -1;
  end;
end;

function get_custom1(name: String): Real;
var
  retv: Real;
begin
  try
    retv := StrToFloat(Form1.edtCustom1.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле ' + name);
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле ' + name);
    Result := -1;
  end;
end;

function get_custom2(name: String): Real;
var
  retv: Real;
begin
  try
    retv := StrToFloat(Form1.edtCustom2.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле ' + name);
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле ' + name);
    Result := -1;
  end;
end;

function get_custom3(name: String): Real;
var
  retv: Real;
begin
  try
    retv := StrToFloat(Form1.edtCustom3.Text);
    if (retv < 0) then begin
      ShowMessage('Введите положительное число в поле ' + name);
      Result := -1;
    end else Result := retv;
  except
    ShowMessage('Введите число в поле ' + name);
    Result := -1;
  end;
end;

procedure clean_canvas();
begin
  Form1.PaintBox1.Canvas.Brush.Color := clWhite;
  Form1.PaintBox1.Canvas.FillRect(Rect(0, 0,
        Form1.PaintBox1.Width, Form1.PaintBox1.Height));
  Form1.PaintBox1.Canvas.Refresh();
end;

procedure draw_triangle();
var
  points: array [0..2] of TPoint;
  i: Integer;
begin
  points[0].X := get_x1();
  points[1].X := get_x2();
  points[2].X := get_x3();
  points[0].Y := get_y1();
  points[1].Y := get_y2();
  points[2].Y := get_y3();
  for i := 0 to 2 do begin
    if ((points[i].X = -1) or (points[i].Y = -1)) then
      exit;
  end;
  Form1.PaintBox1.Canvas.Polygon(points);
end;

procedure draw_rect();
var
  points: array [0..1] of TPoint;
  i: Integer;
begin
  points[0].X := get_x1();
  points[1].X := get_x2();
  points[0].Y := get_y1();
  points[1].Y := get_y2();
  for i := 0 to 1 do begin
    if ((points[i].X = -1) or (points[i].Y = -1)) then
      exit;
  end;
  Form1.PaintBox1.Canvas.Rectangle(points[0].X,
                                   points[0].Y,
                                   points[1].X,
                                   points[1].Y);
end;

procedure draw_parallelog();
var
  points: array [0..3] of TPoint;
  a, h, l: Real;
begin
  points[0].X := get_x1();
  points[0].Y := get_y1();
  l := get_custom1('L');
  h := get_custom2('H');
  a := get_custom3('a');
  if ((points[0].X = -1) or (points[0].Y = -1) or
      (a = -1) or (h = -1) or (l = -1)) then
  begin
    exit;
  end;
  points[1].X := points[0].X + Round(l);
  points[1].Y := points[0].Y;
  points[2].X := points[1].X + Round(h * cot(180 - a));
  points[2].Y := points[1].Y + Round(h);
  points[3].X := points[2].X - Round(l);
  points[3].Y := points[2].Y;
  Form1.PaintBox1.Canvas.Polygon(points);
end;

procedure draw_circle();
var
  x, y: Integer;
  r: Real;
begin
  x := get_x1();
  y := get_y1();
  r := get_custom1('R');
  if ((x = -1) or (y = -1) or (r = -1)) then
  begin
    exit;
  end;
  Form1.PaintBox1.Canvas.Ellipse(x - Round(r), y - Round(r),
                                 x + Round(r), y + Round(r));
end;

procedure draw_ellipse();
var
  x, y: Integer;
  l1, l2: Real;
begin
  x := get_x1();
  y := get_y1();
  l1 := get_custom1('L1');
  l2 := get_custom2('L2');
  if ((x = -1) or (y = -1) or (l1= -1) or (l2 = -1)) then
  begin
    exit;
  end;
  Form1.PaintBox1.Canvas.Ellipse(x - Round(l2), y - Round(l1),
                                 x + Round(l2), y + Round(l1));
end;

procedure draw_trapec();
var
  points: array [0..3] of TPoint;
  i: Integer;
  l1, l2: Real;
begin
  points[0].X := get_x1();
  points[1].X := get_x2();
  points[0].Y := get_y1();
  points[1].Y := get_y2();
  l1 := get_custom1('L1');
  l2 := get_custom2('L2');
  for i := 0 to 1 do begin
    if ((points[i].X = -1) or (points[i].Y = -1)) then
      exit;
  end;
  if ((l1 = -1) or (l2 = -1)) then
    exit;
  points[2].X := points[1].X + Round(l2);
  points[2].Y := points[1].Y;
  points[3].X := points[0].X + Round(l1);
  points[3].Y := points[0].Y;
  Form1.PaintBox1.Canvas.Polygon(points);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  hide_all_components();
  clean_canvas();
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  current_figure := RadioGroup1.ItemIndex;
  case RadioGroup1.ItemIndex of
    0: setup_components_for_triangle();
    1: setup_components_for_rect();
    2: setup_components_for_parallelog();
    3: setup_components_for_circle();
    4: setup_components_for_ellipse();
    5: setup_components_for_trapec();
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  clean_canvas();
  case current_figure of
    0: draw_triangle();
    1: draw_rect();
    2: draw_parallelog();
    3: draw_circle();
    4: draw_ellipse();
    5: draw_trapec();
  end;
end;

end.
