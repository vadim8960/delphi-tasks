unit Vadim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TValerievich = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_x1: TEdit;
    Label3: TLabel;
    edt_y1: TEdit;
    Label4: TLabel;
    edt_x2: TEdit;
    Label5: TLabel;
    edt_y2: TEdit;
    Label6: TLabel;
    edt_x3: TEdit;
    Label7: TLabel;
    edt_y3: TEdit;
    Label8: TLabel;
    edt_x4: TEdit;
    Label9: TLabel;
    edt_y4: TEdit;
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Valerievich: TValerievich;

implementation

{$R *.dfm}

procedure TValerievich.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('image.bmp');
end;

procedure TValerievich.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(FloatToStrF())
end;

end.
