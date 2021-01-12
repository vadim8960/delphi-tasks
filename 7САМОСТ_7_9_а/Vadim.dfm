object Form1: TForm1
  Left = 205
  Top = 124
  Width = 1334
  Height = 868
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1086#1073#1083#1072#1089#1090#1080
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
  object Chart1: TChart
    Left = 16
    Top = 16
    Width = 905
    Height = 793
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    PrintProportional = False
    Title.Font.Charset = RUSSIAN_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -21
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = []
    Title.Text.Strings = (
      #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1086#1073#1083#1072#1089#1090#1080)
    BottomAxis.PositionPercent = 50.000000000000000000
    BottomAxis.Title.Caption = 'x1'
    BottomAxis.Title.Font.Charset = RUSSIAN_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -19
    BottomAxis.Title.Font.Name = 'Times New Roman'
    BottomAxis.Title.Font.Style = []
    LeftAxis.PositionPercent = 50.000000000000000000
    LeftAxis.Title.Angle = 0
    LeftAxis.Title.Caption = 'x2'
    LeftAxis.Title.Font.Charset = RUSSIAN_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -19
    LeftAxis.Title.Font.Name = 'Times New Roman'
    LeftAxis.Title.Font.Style = []
    Legend.Font.Charset = RUSSIAN_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -19
    Legend.Font.Name = 'Times New Roman'
    Legend.Font.Style = []
    Legend.ShadowSize = 0
    View3D = False
    TabOrder = 0
    OnMouseMove = Chart1MoveMouse
    OnMouseWheel = Chart1MouseWheel
    object Series1: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'x1 + x2 = 12'
      LinePen.Color = clRed
      LinePen.Width = 4
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
      Title = '2x1 - x2 = 12'
      LinePen.Color = clGreen
      LinePen.Width = 4
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
      SeriesColor = 16744703
      Title = '2x1 - x2 = 0'
      LinePen.Color = 16744703
      LinePen.Width = 4
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series4: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      Title = 'x21 + x2 = 4'
      LinePen.Width = 4
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series5: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 4210816
      Title = 'x2 = 0'
      LinePen.Color = 4210816
      LinePen.Width = 4
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series6: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      Title = #1054#1073#1083#1072#1089#1090#1100
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.Visible = True
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
  object GroupBox1: TGroupBox
    Left = 1040
    Top = 24
    Width = 265
    Height = 201
    Caption = #1055#1077#1088#1074#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
    TabOrder = 1
    OnClick = GroupBox1Click
    object Image1: TImage
      Left = 32
      Top = 40
      Width = 200
      Height = 130
      OnClick = Image1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 1040
    Top = 272
    Width = 265
    Height = 201
    Caption = #1042#1090#1086#1088#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
    TabOrder = 2
    OnClick = GroupBox2Click
    object Image2: TImage
      Left = 32
      Top = 40
      Width = 200
      Height = 130
      OnClick = Image2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 1040
    Top = 520
    Width = 265
    Height = 201
    Caption = #1058#1088#1077#1090#1100#1103' '#1086#1073#1083#1072#1089#1090#1100
    TabOrder = 3
    OnClick = GroupBox3Click
    object Image3: TImage
      Left = 32
      Top = 40
      Width = 200
      Height = 130
      OnClick = Image3Click
    end
  end
  object Button1: TButton
    Left = 944
    Top = 360
    Width = 73
    Height = 65
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
end
