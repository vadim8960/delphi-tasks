object Form1: TForm1
  Left = 319
  Top = 166
  Width = 345
  Height = 364
  Caption = 'Valerievich'
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
    Left = 40
    Top = 16
    Width = 244
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
  end
  object Label2: TLabel
    Left = 16
    Top = 48
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
    Left = 128
    Top = 48
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
    Top = 48
    Width = 30
    Height = 21
    Caption = 'z = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object edt_x: TEdit
    Left = 48
    Top = 48
    Width = 49
    Height = 29
    TabOrder = 0
    Text = '1,1'
  end
  object edt_y: TEdit
    Left = 160
    Top = 48
    Width = 49
    Height = 29
    TabOrder = 1
    Text = '0,2'
  end
  object Button1: TButton
    Left = 8
    Top = 88
    Width = 313
    Height = 25
    Caption = ' '#1042#1099#1095#1080#1089#1083#1080#1090#1100' u = sec(x + '#1091') + '#1045#1093#1088'('#1091' - z)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 128
    Width = 313
    Height = 185
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object edt_z: TEdit
    Left = 272
    Top = 48
    Width = 49
    Height = 29
    TabOrder = 4
    Text = '1,5'
  end
end
