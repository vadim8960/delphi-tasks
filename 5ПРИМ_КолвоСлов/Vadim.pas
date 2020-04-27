unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Valerievich: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    ComboBox1.Items.Add(Edit1.Text);
    Edit1.Text := '';
  end;end;

procedure TForm1.ComboBox2Click(Sender: TObject);
var
  str: string;
  count, ind: integer;
begin
  count := 0;
  ind := 0;
  str := ComboBox1.Items[ComboBox1.ItemIndex] + ' ';
  while (str <> '') do begin
    ind := pos(' ', str);
    if (ind > 1) then
      inc(count);
    delete(str, 1, ind);
  end;
  Label3.Caption := IntToStr(count);
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
var
  str: string;
  count, i, ind: integer;
begin
  count := 0;
  ind := 0;
  str := ComboBox1.Items[ComboBox1.ItemIndex] + ' ';
  for i := 1 to Length(str) do begin
    case ind of
      0: if (str[i] <> ' ') then begin
           ind := 1;
           inc(count);
         end;
      1: if (str[i] = ' ') then
           ind := 0;
    end;
  end;
  Label4.Caption := IntToStr(count);
end;

end.
