unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Shape1: TShape;
    ColorDialog1: TColorDialog;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: Shape1.Shape := stCircle;
    1: Shape1.Shape := stEllipse;
    2: Shape1.Shape := stRectangle;
    3: Shape1.Shape := stRoundRect;
    4: Shape1.Shape := stRoundSquare;
    5: Shape1.Shape := stSquare;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    Shape1.Brush.Color := ColorDialog1.Color;
end;

end.
