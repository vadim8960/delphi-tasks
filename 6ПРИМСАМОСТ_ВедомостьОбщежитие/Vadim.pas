unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, Buttons;

type
  TStudent = record
    name: String;
    data_array: array [0..2] of Real;
  end;

type
  TValerievich = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtGroup: TEdit;
    edtRating: TEdit;
    edtName: TEdit;
    edtMoney: TEdit;
    btnCreate: TButton;
    sgrdTable: TStringGrid;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    MenuCreate: TMenuItem;
    MenuOpen: TMenuItem;
    MenuSave: TMenuItem;
    MenuSortAscending: TMenuItem;
    MenuSaveAs: TMenuItem;
    btnClose: TButton;
    sgrdTable2: TStringGrid;
    Label5: TLabel;
    Label6: TLabel;
    edtMinMoney: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure MenuCreateClick(Sender: TObject);
    procedure MenuOpenClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure MenuSaveClick(Sender: TObject);
    procedure MenuSortAscendingClick(Sender: TObject);
    procedure MenuSaveAsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    flag_open: Boolean;              // Открыт ли текущий файл (на экране данные из файла)
    flag_saved: Boolean;             // Сохранен ли текущий файл (лежат ли в файле актуальные данные)
    name_cur_file: String;           // Для тестового примера + имя текущего рабочего файла
    data_file: text;                 // Файловая перменная для файла
    student_arr: array of TStudent;  // Массив студентов
    procedure WriteDataToFile();
    procedure ReadDataFromFile();
    function CheckCorrectName(name: String) : String;
    function GetNameStudent() : String;
    procedure FillString(table: TStringGrid; std: TStudent; ind: Integer);
    procedure SwapStudents(s1, s2: Integer);
    procedure MyInsert(ind_el, ind_pl: Integer);
    function PreporationStudenArray() : Integer;
    procedure QSort(l, r: Integer);
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;

implementation

uses StrUtils;

{$R *.dfm}

//////////////////////////////
// Private functions block  //
//////////////////////////////

procedure TValerievich.WriteDataToFile();
var
  i, j: Integer;
begin
  AssignFile(data_file, name_cur_file);
  Rewrite(data_file);
  for i := 0 to Length(student_arr) - 1 do begin
    Writeln(data_file, '');
    Writeln(data_file, student_arr[i].name);
    Writeln(data_file, FloatToStrF(student_arr[i].data_array[0], fffixed, 10, 0));
    Writeln(data_file, FloatToStrF(student_arr[i].data_array[1], fffixed, 10, 2));
    Write(data_file, FloatToStrF(student_arr[i].data_array[2], fffixed, 10, 2));
  end;
  CloseFile(data_file);
end;

procedure TValerievich.ReadDataFromFile();
var
  tmp_str: String;
  num_record, i: Integer;
begin
  AssignFile(data_file, name_cur_file);
  Reset(data_file);
  num_record := 0;
  Readln(data_file, tmp_str);
  while not EOF(data_file) do begin
    inc(num_record);
    SetLength(student_arr, num_record);
    with student_arr[num_record - 1] do begin
      Readln(data_file, name);
      name := CheckCorrectName(name);
      if name = '' then begin
        ShowMessage('Неккоректный файл. Ошибка при загрузке имени');
        exit;
      end;
      for i := 0 to 2 do begin
        Readln(data_file, tmp_str);
        try
          data_array[i] := StrToFloat(tmp_str);
        except
          ShowMessage('Неккоректный файл. Ошибка при загрузке оценок');
          exit;
        end;
      end;
    end;
    sgrdTable.RowCount := num_record + 1;
    sgrdTable2.RowCount := num_record + 1;    
  end;
  CloseFile(data_file);
end;

function TValerievich.CheckCorrectName(name: String) : String;
var
  i: Integer;
begin
  for i := 1 to Length(name) do begin
    if not (((name[i] >='A') and (name[i] <= 'Z')) or
        ((name[i] >='a') and (name[i] <= 'z')) or
        (name[i] = ' ')) then
    begin
      name := '';
      break;
    end;
  end;
  result := name;
end;

function TValerievich.GetNameStudent() : String;
var
  str_tmp: String;
begin
  str_tmp := edtName.Text;
  if str_tmp = '' then begin
    ShowMessage('Поле Ф.И.О. не может быть пустым!');
    exit;
  end;
  str_tmp := CheckCorrectName(str_tmp);
  if str_tmp = '' then begin
    ShowMessage('Поле Ф.И.О. может содержать только буквы английского алфавита!');
    exit;
  end;
  result := str_tmp;
end;

procedure TValerievich.FillString(table: TStringGrid; std: TStudent; ind: Integer);
var
  i: Integer;
begin
  with std do begin
    table.Cells[0, ind] := name;
    table.Cells[1, ind] := FloatToStrF(data_array[0], fffixed, 10, 0);
    for i := 2 to 3 do begin
      table.Cells[i, ind] := FloatToStrF(data_array[i - 1], fffixed, 10, 2);
    end;

  end;
end;

procedure TValerievich.SwapStudents(s1, s2: Integer);
var
  tmp_str: String;
  k: Integer;
  tmp_real: Real;
begin
  tmp_str := student_arr[s1].name;
  student_arr[s1].name := student_arr[s2].name;
  student_arr[s2].name := tmp_str;
  for k := 0 to 2 do begin
    tmp_real := student_arr[s1].data_array[k];
    student_arr[s1].data_array[k] := student_arr[s2].data_array[k];
    student_arr[s2].data_array[k] := tmp_real;
  end;
end;

procedure TValerievich.MyInsert(ind_el, ind_pl: Integer);
var
  i: Integer;
begin
  for i := ind_el downto ind_pl + 1 do
    SwapStudents(i, i - 1);
end;

function TValerievich.PreporationStudenArray() : Integer;
var
  i, j, last_ind: Integer;
  money: Real;
begin
  last_ind := 0;
  try
    money := StrToFloat(edtMinMoney.Text);
  except
    ShowMessage('Неккоретные данные в поле Мин. заработная плата.');
    exit;
  end;
  for i := 1 to Length(student_arr) - 1 do begin
    if (student_arr[i].data_array[2] < money * 2) then begin
      MyInsert(i, last_ind);
      inc(last_ind);
    end;
  end;
  Result := last_ind;
end;

procedure TValerievich.QSort(l, r: Integer);
var
  i, j: Integer;
  q: Real;
begin
  i := l;
  j := r;
  q := student_arr[(l + r) div 2].data_array[1];
  repeat
    while (student_arr[i].data_array[1] > q) do i := i + 1;
    while (q > student_arr[j].data_array[1]) do j := j - 1;

    if (i <= j) then begin
      SwapStudents(i, j);
      j := j - 1;
      i := i + 1;
    end;
  until (i > j);
  if (l < j) then QSort(l, j);
  if (i < r) then QSort(i, r);
end;
              
//////////////////////////////
// Form callbacks block     //
//////////////////////////////

procedure TValerievich.FormCreate(Sender: TObject);
var
  i: Integer;
  width_first_col: Integer;
begin
  edtName.Text := 'Aleksey Ivanov';
  edtGroup.Text := '11';
  edtRating.Text := '3,5';
  edtMoney.Text := '10000';
  edtMinMoney.Text := '4900';

  btnCreate.Caption := 'Создать новую запись';

  width_first_col := 172;

  sgrdTable.FixedCols := 0;
  sgrdTable.FixedRows := 1;
  sgrdTable.ColWidths[0] := width_first_col;
  for i := 1 to sgrdTable.ColCount - 1 do
    sgrdTable.ColWidths[i] := (sgrdTable.Width - width_first_col) div (sgrdTable.ColCount - 1);
    
  with sgrdTable do begin
    Cells[0, 0] := 'Ф.И.О.';
    Cells[1, 0] := 'Группа';
    Cells[2, 0] := 'Сред. балл';
    Cells[3, 0] := 'Доход семьи';
  end;

  sgrdTable2.FixedCols := 0;
  sgrdTable2.FixedRows := 1;
  sgrdTable2.ColWidths[0] := width_first_col;
  for i := 1 to sgrdTable2.ColCount - 1 do
    sgrdTable2.ColWidths[i] := (sgrdTable2.Width - width_first_col) div (sgrdTable2.ColCount - 1);
    
  with sgrdTable2 do begin
    Cells[0, 0] := 'Ф.И.О.';
    Cells[1, 0] := 'Группа';
    Cells[2, 0] := 'Сред. балл';
    Cells[3, 0] := 'Доход семьи';
  end;

  btnClose.Caption := 'Close';

  flag_open := True;
  flag_saved := True;

  SetLength(student_arr, 0);

  name_cur_file := 'DataFiles\group321.dat';
  ReadDataFromFile();
  for i := 1 to Length(student_arr) do begin
    FillString(sgrdTable, student_arr[i - 1], i);  
    FillString(sgrdTable2, student_arr[i - 1], i);
  end;
end;

procedure TValerievich.MenuCreateClick(Sender: TObject);
var
  num_record, i, j: Integer;
begin
  OpenDialog1.Title := 'Создать новый файл';
  if OpenDialog1.Execute then begin
    flag_open := True;
    name_cur_file := OpenDialog1.FileName;
    AssignFile(data_file, OpenDialog1.FileName);
    Rewrite(data_file);
    btnCreate.Show;
    num_record := 0;
    for i := 1 to num_record do
      for j := 0 to 5 do
        sgrdTable.Cells[j, i] := '';
    CloseFile(data_file);
  end;
end;

procedure TValerievich.MenuOpenClick(Sender: TObject);
var
  i: Integer;
begin
  OpenDialog1.Title := 'Открыть файл';
  if OpenDialog1.Execute then begin
    flag_open := True;
    name_cur_file := OpenDialog1.FileName;
    ReadDataFromFile();
    for i := 1 to Length(student_arr) do begin
      FillString(sgrdTable, student_arr[i - 1], i);
      FillString(sgrdTable2, student_arr[i - 1], i);
    end;
    btnCreate.Show;
  end;
end;

procedure TValerievich.btnCreateClick(Sender: TObject);
var
  num_record, i: Integer;
begin
  flag_saved := False;
  num_record := Length(student_arr);
  inc(num_record);
  sgrdTable.RowCount := num_record + 1;
  sgrdTable2.RowCount := num_record + 1;
  SetLength(student_arr, num_record);
  with student_arr[num_record - 1] do begin
    name := GetNameStudent();
    if name = '' then begin
      exit;
    end;
    try
      data_array[0] := StrToFloat(edtGroup.Text);
    except
      ShowMessage('Некорректное значение в поле Математика');
      exit;
    end;
    try
      data_array[1] := StrToFloat(edtRating.Text);
    except
      ShowMessage('Некорректное значение в поле Физика');
      exit;
    end;
    try
      data_array[2] := StrToFloat(edtMoney.Text);
    except
      ShowMessage('Некорректное значение в поле Сочинение');
      exit;
    end;
  end;
  FillString(sgrdTable, student_arr[num_record - 1], num_record);
  FillString(sgrdTable2, student_arr[num_record - 1], num_record);  
end;

procedure TValerievich.MenuSaveClick(Sender: TObject);
var
  i, j: Integer;
begin
  flag_saved := True;
  if flag_open then begin
    WriteDataToFile();
    flag_open := False;
  end;
end;

procedure TValerievich.MenuSortAscendingClick(Sender: TObject);
var
  i, last_ind: Integer;
begin
  flag_saved := False;
  last_ind := PreporationStudenArray();
  QSort(0, last_ind);
  QSort(last_ind + 1, Length(student_arr) - 1);
  for i := 1 to Length(student_arr) do
    FillString(sgrdTable2, student_arr[i - 1], i);
end;

procedure TValerievich.MenuSaveAsClick(Sender: TObject);
var
  i, j: Integer;
begin
  flag_saved := True;

  SaveDialog1.Title := 'Сохранить как ...';
  if SaveDialog1.Execute then begin
    name_cur_file := SaveDialog1.FileName;
    WriteDataToFile();
  end;
end;

procedure TValerievich.btnCloseClick(Sender: TObject);
begin
  if flag_open and (not flag_saved) then
    WriteDataToFile();
  Close;
end;

end.


