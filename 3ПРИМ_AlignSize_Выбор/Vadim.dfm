object Form1: TForm1
  Left = 224
  Top = 15
  Width = 1115
  Height = 1048
  Caption = #1055#1088#1080#1084#1077#1088#1099' '#1088#1072#1079#1084#1077#1088#1086#1074' '#1080' '#1074#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1103
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
  object Image1: TImage
    Left = 29
    Top = 172
    Width = 516
    Height = 389
  end
  object Image2: TImage
    Left = 565
    Top = 172
    Width = 516
    Height = 389
  end
  object Image3: TImage
    Left = 29
    Top = 604
    Width = 516
    Height = 389
  end
  object Image4: TImage
    Left = 565
    Top = 604
    Width = 516
    Height = 389
  end
  object RadioGroup1: TRadioGroup
    Left = 29
    Top = 20
    Width = 345
    Height = 137
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077':'
    Items.Strings = (
      #1055#1086' '#1083#1077#1074#1086#1084#1091' '#1082#1088#1072#1102
      #1055#1086' '#1087#1088#1072#1074#1086#1084#1091' '#1082#1088#1102
      #1055#1086' '#1074#1077#1088#1093#1085#1077#1084#1091' '#1082#1088#1072#1102
      #1055#1086' '#1074#1077#1088#1093#1085#1077#1084#1091' '#1082#1088#1072#1102' '#1080' '#1074' '#1094#1077#1085#1090#1088#1077' '#1092#1086#1088#1084#1099)
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 565
    Top = 20
    Width = 345
    Height = 137
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1072#1079#1084#1077#1088':'
    Items.Strings = (
      #1055#1086' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1081' '#1096#1080#1088#1080#1085#1077
      #1055#1086' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1081' '#1074#1099#1089#1086#1090#1077
      #1055#1086' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1081' '#1074#1099#1089#1086#1090#1077
      #1055#1086' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1081' '#1096#1080#1088#1080#1085#1077)
    TabOrder = 1
    OnClick = RadioGroup2Click
  end
  object Button1: TButton
    Left = 464
    Top = 568
    Width = 177
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1089#1093#1086#1076#1085#1080#1082#1080
    TabOrder = 2
    OnClick = Button1Click
  end
end
