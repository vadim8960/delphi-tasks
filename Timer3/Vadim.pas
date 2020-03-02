unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    btn_timer: TButton;
    lbl_time: TLabel;
    Timer1: TTimer;
    btn_reset: TButton;
    procedure btn_timerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btn_resetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sec, min: integer;

implementation

{$R *.dfm}

procedure TForm1.btn_timerClick(Sender: TObject);
begin
  if (Timer1.Enabled) then begin
    Timer1.Enabled := False;
    btn_timer.Caption := 'Старт';
    btn_reset.Enabled := False;
  end else begin
    Timer1.Enabled := True;
    btn_timer.Caption := 'Стоп';
    btn_reset.Enabled := True;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  btn_reset.Enabled := False;
  Timer1.Enabled := False;
  sec := 0;
  min := 0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  str: string;
begin
  if (sec = 59) then begin
    inc(min);
    sec := 0;
  end else begin
    inc(sec);
  end;

  str := IntToStr(sec div 10) + IntToStr(sec mod 10);

  if (sec mod 2 = 0) then
    str := ':' + str
  else
    str := ' ' + str;

  str := IntToStr(min) + str;

  lbl_time.Caption := str;

end;

procedure TForm1.btn_resetClick(Sender: TObject);
begin
  sec := 0;
  min := 0;
  lbl_time.Caption := '0:00';
end;

end.
