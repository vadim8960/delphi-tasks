unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn_size5x5: TButton;
    btn_place1x1: TButton;
    btn_size4x4: TButton;
    btn_place4x4: TButton;
    btn_size3x3: TButton;
    btn_place6x6: TButton;
    Label1: TLabel;
    btn_help: TButton;
    btn_split: TButton;
    btn_cross: TButton;
    procedure btn_size5x5Click(Sender: TObject);
    procedure btn_size4x4Click(Sender: TObject);
    procedure btn_size3x3Click(Sender: TObject);
    procedure btn_place1x1Click(Sender: TObject);
    procedure btn_place4x4Click(Sender: TObject);
    procedure btn_place6x6Click(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure btn_splitClick(Sender: TObject);
    procedure btn_crossClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_size5x5Click(Sender: TObject);
begin
  Form1.Width  := 500;
  Form1.Height := 500;
end;

procedure TForm1.btn_size4x4Click(Sender: TObject);
begin
  Form1.Width  := 400;
  Form1.Height := 400;
end;

procedure TForm1.btn_size3x3Click(Sender: TObject);
begin
  Form1.Width  := 300;
  Form1.Height := 300;
end;

procedure TForm1.btn_place1x1Click(Sender: TObject);
begin
  Form1.Left := 100;
  Form1.Top  := 100;
end;

procedure TForm1.btn_place4x4Click(Sender: TObject);
begin
  Form1.Left := 400;
  Form1.Top  := 400;
end;

procedure TForm1.btn_place6x6Click(Sender: TObject);
begin
  Form1.Left := 600;
  Form1.Top  := 600;
end;

procedure TForm1.btn_helpClick(Sender: TObject);
begin
  Form1.Cursor := crHelp;
end;

procedure TForm1.btn_splitClick(Sender: TObject);
begin
  Form1.Cursor := crHSplit;
end;

procedure TForm1.btn_crossClick(Sender: TObject);
begin
  Form1.Cursor := crCross;
end;

end.
