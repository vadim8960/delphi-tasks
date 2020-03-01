object Form1: TForm1
  Left = 192
  Top = 125
  Width = 529
  Height = 456
  Caption = 'Valerievich'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 224
    Top = 16
    Width = 31
    Height = 21
    Caption = 'x = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 320
    Top = 16
    Width = 31
    Height = 21
    Caption = 'y = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 416
    Top = 16
    Width = 30
    Height = 21
    Caption = 'z = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Image1: TImage
    Left = 16
    Top = 160
    Width = 481
    Height = 241
  end
  object rd_group: TRadioGroup
    Left = 16
    Top = 16
    Width = 185
    Height = 137
    Caption = #1042#1099#1073#1086#1088' '#1092#1080#1075#1091#1088#1099
    Items.Strings = (
      #1058#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082
      #1050#1088#1091#1075
      #1050#1074#1072#1076#1088#1072#1090)
    TabOrder = 0
    OnClick = rd_groupClick
  end
  object edt_x: TEdit
    Left = 256
    Top = 16
    Width = 49
    Height = 29
    TabOrder = 1
    Text = '3'
  end
  object edt_y: TEdit
    Left = 352
    Top = 16
    Width = 49
    Height = 29
    TabOrder = 2
    Text = '4'
  end
  object edt_z: TEdit
    Left = 448
    Top = 16
    Width = 49
    Height = 29
    TabOrder = 3
    Text = '5'
  end
  object Memo1: TMemo
    Left = 216
    Top = 56
    Width = 281
    Height = 97
    ScrollBars = ssBoth
    TabOrder = 4
  end
end
