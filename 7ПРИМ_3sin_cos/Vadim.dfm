object Form1: TForm1
  Left = 192
  Top = 125
  Width = 539
  Height = 470
  Caption = #1057#1080#1085#1091#1082#1086#1089#1080#1082#1080
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
    Width = 56
    Height = 21
    Caption = 'Xmin ='
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 61
    Height = 21
    Caption = 'Ymin = '
  end
  object Label3: TLabel
    Left = 152
    Top = 16
    Width = 65
    Height = 21
    Caption = 'Xmax = '
  end
  object Label4: TLabel
    Left = 152
    Top = 56
    Width = 60
    Height = 21
    Caption = 'Ymax ='
  end
  object Label5: TLabel
    Left = 288
    Top = 16
    Width = 34
    Height = 21
    Caption = 'hx ='
  end
  object Label6: TLabel
    Left = 288
    Top = 56
    Width = 39
    Height = 21
    Caption = 'hy = '
  end
  object Label7: TLabel
    Left = 408
    Top = 40
    Width = 25
    Height = 21
    Caption = 'h ='
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 65
    Height = 29
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 80
    Top = 56
    Width = 65
    Height = 29
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 216
    Top = 16
    Width = 65
    Height = 29
    TabOrder = 2
    Text = '0'
  end
  object Edit4: TEdit
    Left = 216
    Top = 56
    Width = 65
    Height = 29
    TabOrder = 3
    Text = '0'
  end
  object Edit5: TEdit
    Left = 328
    Top = 16
    Width = 65
    Height = 29
    TabOrder = 4
    Text = '0'
  end
  object Edit6: TEdit
    Left = 328
    Top = 56
    Width = 65
    Height = 29
    TabOrder = 5
    Text = '0'
  end
  object Edit7: TEdit
    Left = 440
    Top = 40
    Width = 65
    Height = 29
    TabOrder = 6
    Text = '0'
  end
  object Chart1: TChart
    Left = 16
    Top = 104
    Width = 489
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = RUSSIAN_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -19
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = []
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1092#1091#1085#1082#1094#1080#1081)
    View3D = False
    TabOrder = 7
    object Series1: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'sin(x)'
      LinePen.Color = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'cos(x)'
      LinePen.Color = clGreen
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series3: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 16711808
      Title = 'sin(x) * cos(x)'
      LinePen.Color = 16711808
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 16
    Top = 376
    Width = 161
    Height = 41
    Caption = #1056#1072#1079#1084#1077#1090#1080#1090#1100' '#1086#1089#1080
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 376
    Width = 161
    Height = 41
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 384
    Top = 376
    Width = 121
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 10
    OnClick = Button3Click
  end
end
