object Form1: TForm1
  Left = 242
  Top = 170
  Width = 580
  Height = 600
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1092#1080#1075#1091#1088
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object PaintBox1: TPaintBox
    Left = 288
    Top = 16
    Width = 249
    Height = 241
    Color = clWhite
    ParentColor = False
  end
  object Image1: TImage
    Left = 288
    Top = 296
    Width = 249
    Height = 249
  end
  object lblx1: TLabel
    Left = 24
    Top = 304
    Width = 18
    Height = 21
    Caption = 'x1'
  end
  object lbly1: TLabel
    Left = 24
    Top = 344
    Width = 18
    Height = 21
    Caption = 'y1'
  end
  object lblx2: TLabel
    Left = 24
    Top = 384
    Width = 18
    Height = 21
    Caption = 'x2'
  end
  object lbly2: TLabel
    Left = 24
    Top = 424
    Width = 18
    Height = 21
    Caption = 'y2'
  end
  object lblx3: TLabel
    Left = 24
    Top = 464
    Width = 18
    Height = 21
    Caption = 'x3'
  end
  object lbly3: TLabel
    Left = 24
    Top = 504
    Width = 18
    Height = 21
    Caption = 'y3'
  end
  object lblCustom1: TLabel
    Left = 136
    Top = 304
    Width = 20
    Height = 21
    Caption = 'L1'
  end
  object lblCustom2: TLabel
    Left = 136
    Top = 344
    Width = 20
    Height = 21
    Caption = 'L2'
  end
  object lblCustom3: TLabel
    Left = 136
    Top = 384
    Width = 20
    Height = 21
    Caption = 'L3'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 16
    Width = 249
    Height = 241
    Caption = #1060#1080#1075#1091#1088#1099
    Items.Strings = (
      #1058#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082
      #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082
      #1055#1072#1088#1072#1083#1083#1077#1083#1086#1075#1088#1072#1084#1084
      #1050#1088#1091#1075
      #1069#1083#1083#1080#1087#1089
      #1058#1088#1072#1087#1077#1094#1080#1103)
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object edtx1: TEdit
    Left = 48
    Top = 296
    Width = 65
    Height = 29
    TabOrder = 1
    Text = 'edtx1'
  end
  object edty1: TEdit
    Left = 48
    Top = 336
    Width = 65
    Height = 29
    TabOrder = 2
    Text = 'Edit1'
  end
  object edtx2: TEdit
    Left = 48
    Top = 376
    Width = 65
    Height = 29
    TabOrder = 3
    Text = 'Edit1'
  end
  object edty2: TEdit
    Left = 48
    Top = 416
    Width = 65
    Height = 29
    TabOrder = 4
    Text = 'Edit1'
  end
  object edtx3: TEdit
    Left = 48
    Top = 456
    Width = 65
    Height = 29
    TabOrder = 5
    Text = 'Edit1'
  end
  object edty3: TEdit
    Left = 48
    Top = 496
    Width = 65
    Height = 29
    TabOrder = 6
    Text = 'Edit1'
  end
  object edtCustom1: TEdit
    Left = 160
    Top = 296
    Width = 65
    Height = 29
    TabOrder = 7
    Text = 'edtCustom1'
  end
  object edtCustom2: TEdit
    Left = 160
    Top = 336
    Width = 65
    Height = 29
    TabOrder = 8
    Text = 'edtCustom2'
  end
  object edtCustom3: TEdit
    Left = 160
    Top = 376
    Width = 65
    Height = 29
    TabOrder = 9
    Text = 'edtx1'
  end
  object Button1: TButton
    Left = 136
    Top = 480
    Width = 137
    Height = 41
    Caption = 'Button1'
    TabOrder = 10
    OnClick = Button1Click
  end
end
