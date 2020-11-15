object Form1: TForm1
  Left = 192
  Top = 125
  Width = 505
  Height = 230
  Caption = #1062#1074#1077#1090#1085#1099#1077' '#1092#1080#1075#1091#1088#1082#1080
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Shape1: TShape
    Left = 16
    Top = 16
    Width = 185
    Height = 153
  end
  object ComboBox1: TComboBox
    Left = 240
    Top = 56
    Width = 225
    Height = 29
    ItemHeight = 21
    TabOrder = 0
    Text = #1060#1080#1075#1091#1088#1072
    OnChange = ComboBox1Change
    Items.Strings = (
      #1050#1088#1091#1075
      #1069#1083#1083#1080#1087#1089
      #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082
      #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082' '#1089' '#1082#1088#1091#1075#1083#1077#1085#1085#1099#1084#1080' '#1082#1088#1072#1103#1084#1080
      #1050#1074#1072#1076#1088#1072#1090' '#1089' '#1082#1088#1091#1075#1083#1077#1085#1085#1099#1084#1080' '#1082#1088#1072#1103#1084#1080
      #1050#1074#1072#1076#1088#1072#1090)
  end
  object Button1: TButton
    Left = 240
    Top = 104
    Width = 225
    Height = 33
    Caption = #1062#1074#1077#1090
    TabOrder = 1
    OnClick = Button1Click
  end
  object ColorDialog1: TColorDialog
    Left = 328
    Top = 8
  end
end
