unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl_green: TLabel;
    lbl_blue: TLabel;
    lbl_red: TLabel;
    lbl_aqua: TLabel;
    lbl_white: TLabel;
    lbl_purple: TLabel;
    lbl_yellow: TLabel;
    procedure lbl_greenClick(Sender: TObject);
    procedure lbl_blueClick(Sender: TObject);
    procedure lbl_redClick(Sender: TObject);
    procedure lbl_aquaClick(Sender: TObject);
    procedure lbl_whiteClick(Sender: TObject);
    procedure lbl_purpleClick(Sender: TObject);
    procedure lbl_yellowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.lbl_greenClick(Sender: TObject);
begin
  Form1.Color := clGreen;
end;

procedure TForm1.lbl_blueClick(Sender: TObject);
begin
  Form1.Color := clBlue;
end;

procedure TForm1.lbl_redClick(Sender: TObject);
begin
  Form1.Color := clRed;
end;

procedure TForm1.lbl_aquaClick(Sender: TObject);
begin
  Form1.Color := clAqua;
end;

procedure TForm1.lbl_whiteClick(Sender: TObject);
begin
  Form1.Color := clWhite;
end;

procedure TForm1.lbl_purpleClick(Sender: TObject);
begin
  Form1.Color := clPurple;
end;

procedure TForm1.lbl_yellowClick(Sender: TObject);
begin
  Form1.Color := clYellow;
end;

end.
