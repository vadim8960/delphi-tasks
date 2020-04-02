unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls;

type
  TValerievich = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Button3: TButton;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    size: Integer;
    flag_button_pressed: Boolean;
    procedure ClearTables();
    procedure ResizeGrid(size_tmp: Integer);
    procedure ReadDataFromFile(size_tmp: Integer; path: String);
    procedure ShowAdvanced();
    procedure HideAdvanced();
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;

implementation

{$R *.dfm}

procedure TValerievich.ClearTables();
var
  i, j: Integer;
begin
  for i := 1 to size do begin
    for j := 1 to size do begin
      StringGrid1.Cells[i, j] := '';
    end;
    StringGrid2.Cells[0, i] := '';
    StringGrid3.Cells[0, i] := '';
  end;
end;

procedure TValerievich.ResizeGrid(size_tmp: Integer);
var
  i: Integer;
begin
  size := size_tmp;
  StringGrid1.ColCount := size + 1;
  StringGrid1.RowCount := size + 1;
  for i := 0 to size do begin
    StringGrid1.Cells[0, i + 1] := 'b' + IntToStr(i);
    StringGrid1.Cells[i + 1, 0] := 'a' + IntToStr(i);
  end;
  StringGrid2.RowCount := size + 1;
  StringGrid3.RowCount := size + 1;
  ClearTables();
end;

procedure TValerievich.ReadDataFromFile(size_tmp: Integer; path: String);
var
  file_v: TextFile;
  value: real;
  i, j: Integer;
begin
  if (FileExists(path)) then begin
    ResizeGrid(size_tmp);
    AssignFile(file_v, path);
    Reset(file_v);
    for i := 1 to size do begin
      for j := 1 to size do begin
        Read(file_v, value);
        StringGrid1.Cells[i, j] := FloatToStrF(value, fffixed, 5, 8);
      end;
    end;
    for i := 1 to size do begin
      Read(file_v, value);
      StringGrid2.Cells[0, i] := FloatToStrF(value, fffixed, 5, 8);
    end;
    CloseFile(file_v);
  end else begin
    ShowMessage('Файл не найден. Проверьте его существование.');
  end;
end;

procedure TValerievich.ShowAdvanced();
begin
  RadioGroup1.Show;
  Label2.Show;
  Button4.Show;
  Button5.Show;
end;

procedure TValerievich.HideAdvanced();
begin
  RadioGroup1.Hide;
  Label2.Hide;
  Button4.Hide;
  Button5.Hide;
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
  i, j, begin_size: Integer;
begin
  begin_size := 3;
  ResizeGrid(begin_size);

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

  for i := 1 to size do begin
    for j := 1 to size do begin
      StringGrid1.Cells[i, j] := FloatToStrF(i * j, fffixed, 8, 5);
    end;
    StringGrid2.Cells[0, i] := FloatToStrF(i, fffixed, 8, 5)
  end;
  
  flag_button_pressed := False;
  Valerievich.Height := 456;
  Button3.Caption := 'Показать доп. настройки';
  HideAdvanced();
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

procedure TValerievich.Button3Click(Sender: TObject);
begin
  if (flag_button_pressed) then begin
    flag_button_pressed := False;
    Valerievich.Height := 456;
    Button3.Caption := 'Показать доп. настройки';
    HideAdvanced();
  end else begin
    flag_button_pressed := True;
    Valerievich.Height := 661;
    Button3.Caption := 'Скрыть доп. настройки';
    ShowAdvanced();
  end;
end;

procedure TValerievich.Button5Click(Sender: TObject);
begin
  ClearTables();
end;

procedure TValerievich.Button4Click(Sender: TObject);
var
  i, j: Integer;
begin
  Randomize;
  for i := 1 to size do begin
    for j := 1 to size do begin
      StringGrid1.Cells[i, j] := FloatToStrF(3 - Random * 6, fffixed, 5, 8);
    end;
    StringGrid2.Cells[0, i] := FloatToStrF(3 - Random * 6, fffixed, 5, 8);
  end;
end;

procedure TValerievich.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: ReadDataFromFile(3, '3x3.txt');
    1: ReadDataFromFile(4, '4x4.txt');
    2: ReadDataFromFile(5, '5x5.txt');
  end;
  RadioGroup1.ItemIndex := -1;
end;

end.
