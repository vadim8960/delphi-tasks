unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_x: TEdit;
    GroupBox1: TGroupBox;
    chkBx3: TCheckBox;
    chkBx5: TCheckBox;
    chkBx7: TCheckBox;
    bth_check: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure bth_checkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  chkBx3.Checked := True;
  chkBx7.Checked := True;
end;

procedure TForm1.bth_checkClick(Sender: TObject);
var
  s1, s2, s3: string;
  flag: boolean;
begin
  flag := False;
  s1 := '';
  s2 := '';
  s3 := '';
  if (chkBx3.Checked and (StrToInt(edt_x.Text) mod 3 = 0)) then begin
    s1 := ' 3';
    flag := True;
  end;

  if (chkBx5.Checked and (StrToInt(edt_x.Text) mod 5 = 0)) then begin
    s2 := ' 5';
    flag := True;
  end;

  if (chkBx7.Checked and (StrToInt(edt_x.Text) mod 7 = 0)) then begin
    s3 := ' 7';
    flag := True;
  end;

  if (flag) then
    Memo1.Lines.Add(edt_x.Text + ' кратно ' + s1 + s2 + s3)
  else
    Memo1.Lines.Add(edt_x.Text + ' не кратно выбранным элементам');
end;

end.
