object Valerievich: TValerievich
  Left = 192
  Top = 125
  Width = 726
  Height = 661
  Caption = #1059#1084#1085#1086#1078#1077#1085#1080#1077' '#1084#1072#1090#1088#1080#1094#1099' '#1085#1072' '#1074#1077#1082#1090#1086#1088
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 179
    Height = 21
    Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1090#1088#1080#1094#1099
  end
  object Label2: TLabel
    Left = 40
    Top = 416
    Width = 180
    Height = 21
    Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1076#1083#1103' '#1087#1088#1080#1084#1077#1088#1072
  end
  object Edit1: TEdit
    Left = 208
    Top = 16
    Width = 81
    Height = 29
    TabOrder = 0
    Text = '3'
  end
  object Button1: TButton
    Left = 304
    Top = 16
    Width = 97
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 72
    Width = 385
    Height = 289
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 520
    Top = 192
    Width = 75
    Height = 25
    Caption = 'A * b ='
    TabOrder = 3
    OnClick = Button2Click
  end
  object StringGrid2: TStringGrid
    Left = 424
    Top = 72
    Width = 81
    Height = 289
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 4
  end
  object StringGrid3: TStringGrid
    Left = 608
    Top = 72
    Width = 89
    Height = 289
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 5
    RowHeights = (
      24
      24
      24
      24
      25)
  end
  object Button3: TButton
    Left = 264
    Top = 376
    Width = 217
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1076#1086#1087'. '#1085#1072#1089#1090#1088#1086#1081#1082#1080
    TabOrder = 6
    OnClick = Button3Click
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 448
    Width = 241
    Height = 153
    Caption = #1056#1072#1079#1084#1077#1088' '#1084#1072#1090#1088#1080#1094#1099
    Items.Strings = (
      '3 '#1093' 3'
      '4 '#1093' 4'
      '5 '#1093' 5')
    TabOrder = 7
    OnClick = RadioGroup1Click
  end
  object Button4: TButton
    Left = 288
    Top = 480
    Width = 265
    Height = 25
    Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1079#1085#1072#1095#1077#1085#1080#1081' '#1086#1090' -3 '#1076#1086' 3'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 288
    Top = 520
    Width = 265
    Height = 25
    Caption = #1054#1090#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077
    TabOrder = 9
    OnClick = Button5Click
  end
end
