object Form1: TForm1
  Left = 281
  Top = 312
  Width = 264
  Height = 167
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1092#1086#1088#1084#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 15
    Top = 72
    Width = 222
    Height = 21
    Caption = #1059#1082#1072#1079#1072#1090#1077#1083#1080' '#1084#1099#1096#1082#1080' '#1085#1072' '#1092#1086#1088#1084#1077
  end
  object btn_size5x5: TButton
    Left = 7
    Top = 8
    Width = 75
    Height = 25
    Caption = '500x500'
    TabOrder = 0
    OnClick = btn_size5x5Click
  end
  object btn_place1x1: TButton
    Left = 7
    Top = 40
    Width = 75
    Height = 25
    Caption = '(100;100)'
    TabOrder = 1
    OnClick = btn_place1x1Click
  end
  object btn_size4x4: TButton
    Left = 87
    Top = 8
    Width = 75
    Height = 25
    Caption = '400x400'
    TabOrder = 2
    OnClick = btn_size4x4Click
  end
  object btn_place4x4: TButton
    Left = 87
    Top = 40
    Width = 75
    Height = 25
    Caption = '(400;400)'
    TabOrder = 3
    OnClick = btn_place4x4Click
  end
  object btn_size3x3: TButton
    Left = 167
    Top = 8
    Width = 75
    Height = 25
    Caption = '300x300'
    TabOrder = 4
    OnClick = btn_size3x3Click
  end
  object btn_place6x6: TButton
    Left = 167
    Top = 40
    Width = 75
    Height = 25
    Caption = '(600;600)'
    TabOrder = 5
    OnClick = btn_place6x6Click
  end
  object btn_help: TButton
    Left = 7
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Help'
    TabOrder = 6
    OnClick = btn_helpClick
  end
  object btn_split: TButton
    Left = 87
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Split'
    TabOrder = 7
    OnClick = btn_splitClick
  end
  object btn_cross: TButton
    Left = 167
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cross'
    TabOrder = 8
    OnClick = btn_crossClick
  end
end
