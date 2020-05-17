unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TValerievich = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
  private
    __size: integer;
    arr: array [1..100] of String;
    procedure GetWordsArray(str: String);
    function CheckString() : Boolean;
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;

implementation

{$R *.dfm}

procedure TValerievich.GetWordsArray(str: String);
var
  i, count, ind: integer;
begin
  count := 0;
  ind := 0;
  i := 1;
  str := str + ' ';
  while (str <> '') do begin
    ind := pos(' ', str);
    if (ind > 1) then begin
      arr[i] := copy(str, 1, ind - 1);
      inc(i);
    end;
    delete(str, 1, ind);
  end;
  __size := i - 1;
end;

function TValerievich.CheckString() : Boolean;
var
  i, j: integer;
  flag: Boolean;
begin
  flag := true;
  for i := 1 to __size do begin
    for j := 1 to Length(arr[i]) do begin
      if ((arr[i][j] <> '1') and (arr[i][j] <> '0')) then begin
        flag := false;
        break;
      end;
    end;
    if (not flag) then break;
  end;
  result := flag;
end;

procedure TValerievich.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    ComboBox1.Items.Add(Edit1.Text);
    Edit1.Text := '';
  end;
end;

procedure TValerievich.Label7Click(Sender: TObject);
var
  i, count: integer;
begin
  count := 0;
  GetWordsArray(ComboBox1.Items[ComboBox1.ItemIndex]);
  if (not CheckString()) then begin
    ShowMessage('Некорректная строка');
    exit;
  end;
  for i := 1 to __size do 
    if (Length(arr[i]) = 5) then
      inc(count);
  Label7.Caption := IntToStr(count);
end;

procedure TValerievich.Label8Click(Sender: TObject);
var
  i, min_i: integer;
  flag: boolean;
begin
  GetWordsArray(ComboBox1.Items[ComboBox1.ItemIndex]);
  if (not CheckString()) then begin
    ShowMessage('Некорректная строка');
    exit;
  end;
  min_i := 1;
  flag := False;
  for i := 2 to __size do
    if (Length(arr[i]) < Length(arr[min_i])) then begin
      min_i := i;
      flag := True;
    end;
  if (flag) then
    Label8.Caption := arr[min_i]
  else
    Label8.Caption := 'таких групп нет';
end;

procedure TValerievich.Label9Click(Sender: TObject);
var
  i, max_i: integer;
begin
  GetWordsArray(ComboBox1.Items[ComboBox1.ItemIndex]);
  if (not CheckString()) then begin
    ShowMessage('Некорректная строка');
    exit;
  end;
  max_i := 1;
  for i := 2 to __size do
    if (Length(arr[i]) > Length(arr[max_i])) then
      max_i := i;
  Label9.Caption := IntToStr(Length(arr[max_i]));
end;

procedure TValerievich.Label10Click(Sender: TObject);
var
  i: Integer;
  answ: String;
  flag: boolean;
begin
  GetWordsArray(ComboBox1.Items[ComboBox1.ItemIndex]);
  if (not CheckString()) then begin
    ShowMessage('Некорректная строка');
    exit;
  end;
  answ := '';
  flag := False;
  for i := 1 to __size do
    if (Length(arr[i]) mod 2 = 0) then begin
      answ := answ + arr[i] + ' ';
      flag := True;
    end;
  if (flag) then
    Label10.Caption := answ
  else
    Label10.Caption := 'таких групп нет';
end;

procedure TValerievich.Label11Click(Sender: TObject);
var
  i, j, count: Integer;
  answ: String;
  flag: boolean;
begin
  GetWordsArray(ComboBox1.Items[ComboBox1.ItemIndex]);
  if (not CheckString()) then begin
    ShowMessage('Некорректная строка');
    exit;
  end;
  answ := '';
  flag := False;
  for i := 1 to __size do
    if (Length(arr[i]) mod 2 = 1) then begin
      flag := True;
      count := 0;
      for j := 1 to Length(arr[i]) do
        if (arr[i][j] = '1') then
          inc(count);
      answ := answ + IntToStr(count) + ' ';
    end;
  if (flag) then
    Label11.Caption := answ
  else
    Label11.Caption := 'таких групп нет';
end;

end.
