unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Image1: TImage;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0:begin
      Image1.Picture.LoadFromFile('align1.bmp');
    end;
  1:begin
      Image1.Picture.LoadFromFile('align2.bmp');
    end;
  2:begin
      Image1.Picture.LoadFromFile('align3.bmp');
    end;
  3:begin
      Image1.Picture.LoadFromFile('align4.bmp');
    end;
  end;
end;

end.
