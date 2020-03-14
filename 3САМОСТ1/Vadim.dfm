object Valerievich: TValerievich
  Left = 319
  Top = 166
  Width = 933
  Height = 216
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' '#1092#1091#1085#1082#1094#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 244
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
  end
  object Label2: TLabel
    Left = 88
    Top = 56
    Width = 31
    Height = 21
    Caption = 'x = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 96
    Width = 31
    Height = 21
    Caption = 'y = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 80
    Width = 67
    Height = 21
    Caption = 'f(x, y) = '
  end
  object edt_x: TEdit
    Left = 120
    Top = 56
    Width = 49
    Height = 29
    TabOrder = 0
    Text = '1,1'
  end
  object edt_y: TEdit
    Left = 120
    Top = 96
    Width = 49
    Height = 29
    TabOrder = 1
    Text = '0,2'
  end
  object Memo1: TMemo
    Left = 592
    Top = 16
    Width = 305
    Height = 137
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object rg_functions: TRadioGroup
    Left = 312
    Top = 16
    Width = 241
    Height = 137
    Caption = 'rg_functions'
    Items.Strings = (
      'sin(x^2 + y^2) + exp(y - x)'
      'tg(x + y^2) + y * log(x)'
      '|cos(x)| + arctg(1 / y)'
      'cos^2(x) + |y| / arctg(x)')
    TabOrder = 3
    OnClick = rg_functionsClick
  end
end
