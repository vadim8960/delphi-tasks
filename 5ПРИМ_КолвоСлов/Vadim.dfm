object Form1: TForm1
  Left = 1162
  Top = 341
  Width = 581
  Height = 284
  Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1083#1086#1074
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
    Left = 64
    Top = 16
    Width = 126
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1080
  end
  object Label2: TLabel
    Left = 168
    Top = 168
    Width = 158
    Height = 21
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1083#1086#1074' = '
  end
  object Label3: TLabel
    Left = 328
    Top = 168
    Width = 82
    Height = 21
    Caption = #1087#1086#1089#1095#1080#1090#1072#1090#1100
    OnClick = ComboBox1Click
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 200
    Width = 89
    Height = 25
    TabOrder = 0
    Kind = bkClose
  end
  object Edit1: TEdit
    Left = 8
    Top = 48
    Width = 545
    Height = 29
    TabOrder = 1
    Text = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091' '#1080' '#1085#1072#1078#1084#1080#1090#1077' Enter'
    OnKeyPress = ComboBox1KeyPress
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 80
    Width = 545
    Height = 29
    ItemHeight = 21
    TabOrder = 2
    Text = #1042#1099#1073#1088#1072#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1080#1079' '#1090#1077#1082#1089#1090#1072' '#1080' '#1085#1072#1078#1072#1090#1100' '#1085#1072' '#1089#1083#1086#1074#1086' '#1087#1086#1089#1095#1080#1090#1072#1090#1100
    Items.Strings = (
      
        'Delphi - '#1089#1088#1077#1076#1072' '#1074#1080#1079#1091#1072#1083#1100#1085#1086#1075#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1074' Windows '#1085#1072' '#1103#1079#1099#1082#1077' O' +
        'bject Pascal, '#1088#1072#1079#1088#1072#1073#1086#1090#1072#1085#1085#1072#1103' '#1092#1080#1088#1084#1086#1081' Borland.')
  end
end
