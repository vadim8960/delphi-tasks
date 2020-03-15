object Valerievich: TValerievich
  Left = 238
  Top = 252
  Width = 541
  Height = 559
  Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077' '#1076#1083#1080#1085#1099' '#1086#1090#1088#1077#1079#1082#1086#1074
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
    Left = 24
    Top = 16
    Width = 217
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1090#1086#1095#1077#1082
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 41
    Height = 21
    Caption = 'x1 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 144
    Top = 48
    Width = 41
    Height = 21
    Caption = 'y1 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 88
    Width = 41
    Height = 21
    Caption = 'x2 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 144
    Top = 88
    Width = 41
    Height = 21
    Caption = 'y2 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 128
    Width = 41
    Height = 21
    Caption = 'x3 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 144
    Top = 128
    Width = 41
    Height = 21
    Caption = 'y3 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 168
    Width = 41
    Height = 21
    Caption = 'x4 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 144
    Top = 168
    Width = 41
    Height = 21
    Caption = 'y4 = '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Image1: TImage
    Left = 16
    Top = 256
    Width = 225
    Height = 241
  end
  object edt_x1: TEdit
    Left = 64
    Top = 48
    Width = 57
    Height = 29
    TabOrder = 0
    Text = '0'
  end
  object edt_y1: TEdit
    Left = 184
    Top = 48
    Width = 57
    Height = 29
    TabOrder = 1
    Text = '1'
  end
  object edt_x2: TEdit
    Left = 64
    Top = 88
    Width = 57
    Height = 29
    TabOrder = 2
    Text = '0'
  end
  object edt_y2: TEdit
    Left = 184
    Top = 88
    Width = 57
    Height = 29
    TabOrder = 3
    Text = '0'
  end
  object edt_x3: TEdit
    Left = 64
    Top = 128
    Width = 57
    Height = 29
    TabOrder = 4
    Text = '1'
  end
  object edt_y3: TEdit
    Left = 184
    Top = 128
    Width = 57
    Height = 29
    TabOrder = 5
    Text = '0'
  end
  object edt_x4: TEdit
    Left = 64
    Top = 168
    Width = 57
    Height = 29
    TabOrder = 6
    Text = '1'
  end
  object edt_y4: TEdit
    Left = 184
    Top = 168
    Width = 57
    Height = 29
    TabOrder = 7
    Text = '1'
  end
  object Memo1: TMemo
    Left = 264
    Top = 16
    Width = 241
    Height = 481
    TabOrder = 8
  end
  object Button1: TButton
    Left = 56
    Top = 216
    Width = 137
    Height = 25
    Caption = 'Calculate'
    TabOrder = 9
    OnClick = Button1Click
  end
end
