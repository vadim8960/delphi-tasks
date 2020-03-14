unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl_start: TLabel;
    lbl_now: TLabel;
    lbl_begin: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  t: TDateTime;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  t := Time;
  lbl_start.Caption := '';
  lbl_now.Caption   := '';
  lbl_begin.Caption := FormatDateTime('dd.mm.yyyy  hh:mm:ss', t);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  lbl_start.Caption := TimeToStr(Time - t);
  lbl_now.Caption   := TimeToStr(Time);
end;

end.
