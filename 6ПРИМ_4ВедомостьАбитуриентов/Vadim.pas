unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, Buttons;

type
  TStudent = record
    name: String;
    rating_arr: array [0..2] of Integer;
    rating_mid: Real;
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
    edtMath: TEdit;
    edtPhis: TEdit;
    edtName: TEdit;
    edtLetter: TEdit;
    btnCreate: TButton;
    sgrdTable: TStringGrid;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    MenuCreate: TMenuItem;
    MenuOpen: TMenuItem;
    MenuSave: TMenuItem;
    MenuSortAscending: TMenuItem;
    MenuSortDescending: TMenuItem;
    MenuSaveAs: TMenuItem;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure MenuCreateClick(Sender: TObject);
    procedure MenuOpenClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure MenuSaveClick(Sender: TObject);
    procedure MenuSortAscendingClick(Sender: TObject);
    procedure MenuSortDescendingClick(Sender: TObject);
    procedure MenuSaveAsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    flag_open: Boolean;              // ������ �� ������� ���� (�� ������ ������ �� �����)
    flag_saved: Boolean;             // �������� �� ������� ���� (����� �� � ����� ���������� ������)
    name_cur_file: String;           // ��� ��������� ������� + ��� �������� �������� �����
    data_file: text;                 // �������� ��������� ��� �����
    student_arr: array of TStudent;  // ������ ���������
    num_record: Integer;             // ���-�� ���������
    procedure WriteDataToFile();
    procedure ReadDataFromFile();
    function CheckCorrectName(name: String) : String;
    function GetNameStudent() : String;
    procedure FillString(var std: TStudent; ind: Integer);
    procedure SwapStudents(s1, s2: Integer);
    procedure QSort(l, r: Integer; type_sort: string);
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;

implementation

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
    for j := 0 to 1 do
      Writeln(data_file, IntToStr(student_arr[i].rating_arr[j]));
    Write(data_file, IntToStr(student_arr[i].rating_arr[2]));
  end;
  CloseFile(data_file);
end;

procedure TValerievich.ReadDataFromFile();
var
  tmp_str: String;
  i: Integer;
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
        ShowMessage('������������ ����. ������ ��� �������� �����');
        exit;
      end;
      for i := 0 to 2 do begin
        Readln(data_file, tmp_str);
        try
          rating_arr[i] := StrToInt(tmp_str);
        except
          ShowMessage('������������ ����. ������ ��� �������� ������');
          exit;
        end;
      end;
    end;
    sgrdTable.RowCount := num_record + 1;
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
    ShowMessage('���� �.�.�. �� ����� ���� ������!');
    exit;
  end;
  str_tmp := CheckCorrectName(str_tmp);
  if str_tmp = '' then begin
    ShowMessage('���� �.�.�. ����� ��������� ������ ����� ����������� ��������!');
    exit;
  end;
  result := str_tmp;
end;

procedure TValerievich.FillString(var std: TStudent; ind: Integer);
begin
  with std do begin
    sgrdTable.Cells[0, ind] := name;
    sgrdTable.Cells[1, ind] := IntToStr(rating_arr[0]);
    sgrdTable.Cells[2, ind] := IntToStr(rating_arr[1]);
    sgrdTable.Cells[3, ind] := IntToStr(rating_arr[2]);
    rating_mid := (rating_arr[0] + rating_arr[1] + rating_arr[2]) / 3;
    sgrdTable.Cells[4, ind] := FloatToStrF(rating_mid, fffixed, 3, 3);
  end;
end;

procedure TValerievich.SwapStudents(s1, s2: Integer);
var
  tmp_str: String;
  tmp_int, k: Integer;
  tmp_real: Real;
begin
  tmp_str := student_arr[s1].name;
  tmp_real := student_arr[s1].rating_mid;
  student_arr[s1].name := student_arr[s2].name;
  student_arr[s1].rating_mid := student_arr[s2].rating_mid;
  student_arr[s2].name := tmp_str;
  student_arr[s2].rating_mid := tmp_real;
  for k := 0 to 2 do begin
    tmp_int := student_arr[s1].rating_arr[k];
    student_arr[s1].rating_arr[k] := student_arr[s2].rating_arr[k];
    student_arr[s2].rating_arr[k] := tmp_int;
  end;
end;

procedure TValerievich.QSort(l, r: Integer; type_sort: string);
var
  i, j: Integer;
  q: Real;
begin
  i := l;
  j := r;
  q := student_arr[(l + r) div 2].rating_mid;
  repeat
    if type_sort = 'Ascending' then begin
      while (student_arr[i].rating_mid < q) do i := i + 1;
      while (q < student_arr[j].rating_mid) do j := j - 1;
    end else if type_sort = 'Descending' then begin
      while (student_arr[i].rating_mid > q) do i := i + 1;
      while (q > student_arr[j].rating_mid) do j := j - 1;
    end;
    if (i <= j) then begin
      SwapStudents(i, j);
      j := j - 1;
      i := i + 1;
    end;
  until (i > j);
  if (l < j) then QSort(l, j, type_sort);
  if (i < r) then QSort(i, r, type_sort);
end;

//////////////////////////////
// Form callbacks block     //
//////////////////////////////

procedure TValerievich.FormCreate(Sender: TObject);
var
  i: Integer;
  width_first_col: Integer;
begin
  edtName.Text := 'Akimov Vadim';
  edtMath.Text := '2';
  edtPhis.Text := '3';
  edtLetter.Text := '2';

  btnCreate.Caption := '������� ����� ������';

  width_first_col := 150;

  sgrdTable.FixedCols := 0;
  sgrdTable.FixedRows := 1;
  sgrdTable.ColWidths[0] := width_first_col;
  for i := 1 to sgrdTable.ColCount - 1 do
    sgrdTable.ColWidths[i] := (sgrdTable.Width - width_first_col) div (sgrdTable.ColCount - 1);
    
  with sgrdTable do begin
    Cells[0, 0] := '�.�.�.';
    Cells[1, 0] := '�����.';
    Cells[2, 0] := '������';
    Cells[3, 0] := '���������';
    Cells[4, 0] := '����. ����';
  end;
  
  btnClose.Caption := 'Close';

  flag_open := True;
  flag_saved := True;

  SetLength(student_arr, 0);

  name_cur_file := 'DataFiles\group23a2.dat';
  ReadDataFromFile();
  for i := 1 to Length(student_arr) do
    FillString(student_arr[i - 1], i);
end;

procedure TValerievich.MenuCreateClick(Sender: TObject);
var
  i, j: Integer;
begin
  OpenDialog1.Title := '������� ����� ����';
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
  OpenDialog1.Title := '������� ����';
  if OpenDialog1.Execute then begin
    flag_open := True;
    name_cur_file := OpenDialog1.FileName;
    ReadDataFromFile();
    for i := 1 to Length(student_arr) do
      FillString(student_arr[i - 1], i);
    btnCreate.Show;
  end;
end;

procedure TValerievich.btnCreateClick(Sender: TObject);
var
  i: Integer;
begin
  flag_saved := False;
  inc(num_record);
  sgrdTable.RowCount := num_record + 1;
  SetLength(student_arr, num_record);
  Label1.Caption := IntToStr(num_record);
  with student_arr[num_record - 1] do begin
    name := GetNameStudent();
    if name = '' then begin
      exit;
    end;
    try
      rating_arr[0] := StrToInt(edtMath.Text);
    except
      ShowMessage('������������ �������� � ���� ����������');
      exit;
    end;
    try
      rating_arr[1] := StrToInt(edtPhis.Text);
    except
      ShowMessage('������������ �������� � ���� ������');
      exit;
    end;
    try
      rating_arr[2] := StrToInt(edtLetter.Text);
    except
      ShowMessage('������������ �������� � ���� ���������');
      exit;
    end;
  end;
  FillString(student_arr[num_record - 1], num_record);
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
  i: Integer;
begin
  flag_saved := False;
  QSort(0, Length(student_arr) - 1, 'Ascending');
  for i := 1 to Length(student_arr) do
    FillString(student_arr[i - 1], i);
end;

procedure TValerievich.MenuSortDescendingClick(Sender: TObject);
var
  i: Integer;
begin
  flag_saved := False;
  QSort(0, Length(student_arr) - 1, 'Descending');
  for i := 1 to Length(student_arr) do
    FillString(student_arr[i - 1], i);
end;

procedure TValerievich.MenuSaveAsClick(Sender: TObject);
var
  i, j: Integer;
begin
  flag_saved := True;

  SaveDialog1.Title := '��������� ��� ...';
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


