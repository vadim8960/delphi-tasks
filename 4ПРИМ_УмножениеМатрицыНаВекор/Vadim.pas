unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TValerievich = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;
  size: Integer;

implementation

{$R *.dfm}

procedure ResizeGrid(size: Integer);
var
  i: Integer;
begin
  Valerievich.StringGrid1.ColCount := size + 1;
  Valerievich.StringGrid1.RowCount := size + 1;
  for i := 0 to size do begin
    Valerievich.StringGrid1.Cells[0, i + 1] := 'b' + IntToStr(i);
    Valerievich.StringGrid1.Cells[i + 1, 0] := 'a' + IntToStr(i);
  end;
  Valerievich.StringGrid2.RowCount := size + 1;
  Valerievich.StringGrid3.RowCount := size + 1;
end;

procedure TValerievich.Button1Click(Sender: TObject);
begin
  try
    size := StrToInt(Edit1.Text);
  except
    ShowMessage('Неккоректно введен размер матрицы');
    Exit;
  end;
  ResizeGrid(size);
end;

procedure TValerievich.FormCreate(Sender: TObject);
var
  i, j: Integer;
begin
  size := 3;
  StringGrid1.Cells[0, 0] := 'Матрица A';
  StringGrid1.ColWidths[0] := 95;
  StringGrid1.FixedCols := 1;
  StringGrid1.FixedRows := 1;

  StringGrid2.Cells[0, 0] := 'Вектор B';
  StringGrid2.ColWidths[0] := 80;
  StringGrid2.FixedCols := 0;
  StringGrid2.FixedRows := 1;

  StringGrid3.Cells[0, 0] := 'Результат';
  StringGrid3.ColWidths[0] := 95;
  StringGrid3.FixedCols := 0;
  StringGrid3.FixedRows := 1;
  
  ResizeGrid(size);

  for i := 1 to size do begin
    for j := 1 to size do begin
      StringGrid1.Cells[i, j] := FloatToStrF(i * j, fffixed, 8, 5);
    end;
    StringGrid2.Cells[0, i] := FloatToStrF(i, fffixed, 8, 5)
  end;
end;

procedure TValerievich.Button2Click(Sender: TObject);
var
  i, j: Integer;
  sum, v1, v2: real;
begin
  v1 := 0;
  v2 := 0;
  for i := 1 to size do begin
    sum := 0;
    for j := 1 to size do begin
      try
        v1 := StrToFloat(StringGrid1.Cells[i, j]);
      except
        ShowMessage('Неккоректное значение матрицы');
        Exit;
      end;
      try
        v2 := StrToFloat(StringGrid2.Cells[0, j]);
      except
        ShowMessage('Неккоректное значение вектора');
        Exit;
      end;
      sum := sum + v1 * v2;
    end;
    StringGrid3.Cells[0, i] := FloatToStrF(sum, fffixed, 8, 5);
  end;
end;

end.
