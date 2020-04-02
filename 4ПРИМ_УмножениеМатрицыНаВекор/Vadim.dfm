object Valerievich: TValerievich
  Left = 192
  Top = 125
  Width = 722
  Height = 419
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
end
