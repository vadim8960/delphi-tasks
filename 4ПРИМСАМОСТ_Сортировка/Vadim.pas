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
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    StringGrid2: TStringGrid;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    size_x, size_y: Integer;
    procedure QSort(l, r: Integer; arr: array of Integer);
  public
    procedure ClearTables();
    procedure ResizeGrid(size_tmp_x, size_tmp_y: Integer);
    procedure SortSum();
    procedure SortMin();
  end;

var
  Valerievich: TValerievich;

implementation

{$R *.dfm}

procedure TValerievich.QSort(l, r: Integer; arr: array of Integer);
var
  i, j, q, k, tmp_int: Integer;
  tmp_str: String;
begin
  i := l;
  j := r;
  q := arr[(l + r) div 2];
  repeat
    while (arr[i] < q) do inc(i);
    while (q < arr[j]) do dec(j);
    if (i <= j) then begin
      for k := 0 to size_x do begin
        tmp_str := StringGrid2.Cells[k, i + 1];
        StringGrid2.Cells[k, i + 1] := StringGrid2.Cells[k, j + 1];
        StringGrid2.Cells[k, j + 1] := tmp_str;
      end;
      tmp_int := arr[i];
      arr[i] := arr[j];
      arr[j] := tmp_int;
      dec(j);
      inc(i);
    end;
  until (i > j);
  if (l < j) then QSort(l, j, arr);
  if (i < r) then QSort(i, r, arr);
end;

procedure TValerievich.ClearTables();
var
  i, j: Integer;
begin
  for i := 1 to size_y do begin
    for j := 1 to size_x do begin
      StringGrid1.Cells[j, i] := '';
      StringGrid2.Cells[j, i] := '';
    end;
  end;
end;

procedure TValerievich.ResizeGrid(size_tmp_x, size_tmp_y: Integer);
var
  i: Integer;
begin
  size_x := size_tmp_x;
  size_y := size_tmp_y;
  StringGrid1.ColCount := size_x + 1;
  StringGrid1.RowCount := size_y + 1;
  StringGrid2.ColCount := size_x + 1;
  StringGrid2.RowCount := size_y + 1;
  for i := 0 to size_y do begin
    StringGrid1.Cells[0, i + 1] := 'i = ' + IntToStr(i + 1);
    StringGrid2.Cells[0, i + 1] := 'i = ' + IntToStr(i + 1);
  end;

  for i := 0 to size_x do begin
    StringGrid1.Cells[i + 1, 0] := 'j = ' + IntToStr(i + 1);
    StringGrid2.Cells[i + 1, 0] := 'j = ' + IntToStr(i + 1);
  end;
end;

procedure TValerievich.SortSum();
var
  arr: array of Integer;
  i, j: Integer;
begin
  SetLength(arr, size_y);
  for i := 1 to size_y do begin
    arr[i - 1] := 0;
    for j := 1 to size_x do begin
      try
        arr[i - 1] := arr[i - 1] + StrToInt(StringGrid1.Cells[j, i]);
      except
        ShowMessage('������� ������������ �������!');
        Exit;
      end;
    end;
    StringGrid2.Rows[i] := StringGrid1.Rows[i];
  end;

  QSort(0, size_y - 1, arr);
end;

procedure TValerievich.SortMin();
var
  arr: array of Integer;
  i, j, val: Integer;
begin
  SetLength(arr, size_y);
  for i := 1 to size_y do begin
    try
      arr[i - 1] := StrToInt(StringGrid1.Cells[1, i]);
    except
      ShowMessage('������� ������������ �������!');
      Exit;
    end;
    for j := 2 to size_x do begin
      try
        val := StrToInt(StringGrid1.Cells[j, i]);
      except
        ShowMessage('������� ������������ �������!');
        Exit;
      end;
      if (val < arr[i - 1]) then
        arr[i - 1] := val;
    end;
    StringGrid2.Rows[i] := StringGrid1.Rows[i];
  end;

  QSort(0, size_y - 1, arr);
end;

procedure TValerievich.Button1Click(Sender: TObject);
begin
  try
    size_x := StrToInt(Edit1.Text);
    size_y := StrToInt(Edit2.Text);
  except
    ShowMessage('����������� ������ ������ �������!');
    Exit;
  end;
  ResizeGrid(size_x, size_y);
end;

procedure TValerievich.FormCreate(Sender: TObject);
var
  j: Integer;
begin
  ResizeGrid(3, 3);

  StringGrid1.Cells[0, 0] := '���. ����.';
  StringGrid1.ColWidths[0] := 95;
  StringGrid1.FixedCols := 1;
  StringGrid1.FixedRows := 1;

  StringGrid2.Cells[0, 0] := '���. ����.';
  StringGrid2.ColWidths[0] := 95;
  StringGrid2.FixedCols := 1;
  StringGrid2.FixedRows := 1;

  for j := 1 to size_x do begin
    StringGrid1.Cells[j, 1] := IntToStr(1);
    StringGrid2.Cells[j, 1] := IntToStr(1);
  end;
  StringGrid1.Cells[1, 2] := IntToStr(0);
  StringGrid1.Cells[2, 2] := IntToStr(2);
  StringGrid1.Cells[3, 2] := IntToStr(0);
  StringGrid2.Cells[1, 2] := IntToStr(0);
  StringGrid2.Cells[2, 2] := IntToStr(2);
  StringGrid2.Cells[3, 2] := IntToStr(0);
  for j := 1 to size_x do begin
    StringGrid1.Cells[j, 3] := IntToStr(j);
    StringGrid2.Cells[j, 3] := IntToStr(j);
  end;
end;

procedure TValerievich.Button5Click(Sender: TObject);
begin
  ClearTables();
end;

procedure TValerievich.Button4Click(Sender: TObject);
var
  i, j: Integer;
  value: String;
begin
  Randomize;
  for i := 1 to size_y do begin
    for j := 1 to size_x do begin
      value := IntToStr(100 - Random(200));
      StringGrid1.Cells[j, i] := value;
      StringGrid2.Cells[j, i] := value;
    end;
  end;
end;

procedure TValerievich.RadioGroup1Click(Sender: TObject);
begin
  case (RadioGroup1.ItemIndex) of
    0: SortSum();
    1: SortMin();
  end;
  RadioGroup1.ItemIndex := -1;
end;

end.
