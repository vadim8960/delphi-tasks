unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Image1: TImage;
    Image2: TImage;
    RadioGroup2: TRadioGroup;
    Button1: TButton;
    Image3: TImage;
    Image4: TImage;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  button_show_align, button_show_size: Boolean;

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
  RadioGroup1.ItemIndex := -1;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
  0:begin
      Image2.Picture.LoadFromFile('size1.bmp');
    end;
  1:begin
      Image2.Picture.LoadFromFile('size2.bmp');
    end;
  2:begin
      Image2.Picture.LoadFromFile('size3.bmp');
    end;
  3:begin
      Image2.Picture.LoadFromFile('size4.bmp');
    end;
  end;
  RadioGroup2.ItemIndex := -1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image3.Enabled := False;
  Image4.Enabled := False;
  Form1.ClientHeight := 600;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  button_show_align := not button_show_align;
  if (button_show_align) then begin
    Form1.ClientHeight := 1009;
    Image3.Enabled := True;
    Image4.Enabled := True;
    Image3.Picture.LoadFromFile('align_begin.bmp');
    Image4.Picture.LoadFromFile('size_begin.bmp');
    Button1.Caption := '������ ���������';
  end else begin
    Form1.ClientHeight := 600;
    Image3.Enabled := False;
    Image4.Enabled := False;
    Button1.Caption := '�������� ���������';
  end;
end;

end.
