object Valerievich: TValerievich
  Left = 192
  Top = 125
  Width = 1115
  Height = 399
  Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
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
    Width = 188
    Height = 21
    Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1090#1088#1080#1094#1099': '
  end
  object Label2: TLabel
    Left = 264
    Top = 16
    Width = 9
    Height = 21
    Caption = 'x'
  end
  object Label3: TLabel
    Left = 488
    Top = 112
    Width = 105
    Height = 21
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
  end
  object Edit1: TEdit
    Left = 216
    Top = 16
    Width = 41
    Height = 29
    TabOrder = 0
    Text = '3'
  end
  object Button1: TButton
    Left = 336
    Top = 16
    Width = 97
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 56
    Width = 393
    Height = 289
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 2
  end
  object Button4: TButton
    Left = 448
    Top = 16
    Width = 177
    Height = 25
    Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1079#1085#1072#1095#1077#1085#1080#1081
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 640
    Top = 16
    Width = 97
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 4
    OnClick = Button5Click
  end
  object Edit2: TEdit
    Left = 280
    Top = 16
    Width = 41
    Height = 29
    TabOrder = 5
    Text = '3'
  end
  object StringGrid2: TStringGrid
    Left = 696
    Top = 48
    Width = 393
    Height = 289
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 424
    Top = 136
    Width = 257
    Height = 113
    Caption = #1089#1090#1088#1086#1082#1080' '#1087#1086' '#1085#1077' '#1091#1073#1099#1074#1072#1085#1080#1102
    Items.Strings = (
      #1089#1091#1084#1084#1099' '#1080#1093' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      #1080#1093' '#1085#1072#1080#1084#1077#1085#1100#1096#1080#1093' '#1101#1083#1077#1084#1077#1085#1090#1086#1074)
    TabOrder = 7
    OnClick = RadioGroup1Click
  end
end
