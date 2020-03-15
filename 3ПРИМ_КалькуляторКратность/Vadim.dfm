object Form1: TForm1
  Left = 192
  Top = 125
  Width = 809
  Height = 215
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
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
    Left = 22
    Top = 51
    Width = 118
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1095#1080#1089#1083#1086
  end
  object Label2: TLabel
    Left = 38
    Top = 75
    Width = 30
    Height = 21
    Caption = 'x = '
  end
  object edt_x: TEdit
    Left = 70
    Top = 75
    Width = 49
    Height = 29
    TabOrder = 0
    Text = '21'
  end
  object GroupBox1: TGroupBox
    Left = 158
    Top = 19
    Width = 169
    Height = 137
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1101#1083#1077#1084#1077#1085#1090
    TabOrder = 1
    object chkBx3: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = #1050#1088#1072#1090#1085#1086' 3'
      TabOrder = 0
    end
    object chkBx5: TCheckBox
      Left = 16
      Top = 64
      Width = 97
      Height = 17
      Caption = #1050#1088#1072#1090#1085#1086' 5'
      TabOrder = 1
    end
    object chkBx7: TCheckBox
      Left = 16
      Top = 96
      Width = 97
      Height = 17
      Caption = #1050#1088#1072#1090#1085#1086' 7'
      TabOrder = 2
    end
  end
  object bth_check: TButton
    Left = 342
    Top = 27
    Width = 417
    Height = 25
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1082#1088#1072#1090#1085#1086#1089#1090#1100' '#1095#1080#1089#1083#1072' X'
    TabOrder = 2
    OnClick = bth_checkClick
  end
  object Memo1: TMemo
    Left = 342
    Top = 67
    Width = 417
    Height = 89
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 3
  end
end
