object Form1: TForm1
  Left = 423
  Top = 164
  Width = 952
  Height = 868
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
    BottomAxis.Title.Caption = 'x1'
    BottomAxis.Title.Font.Charset = RUSSIAN_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -19
    BottomAxis.Title.Font.Name = 'Times New Roman'
    BottomAxis.Title.Font.Style = []
    LeftAxis.Title.Angle = 0
    LeftAxis.Title.Caption = 'x2'
    LeftAxis.Title.Font.Charset = RUSSIAN_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -19
    LeftAxis.Title.Font.Name = 'Times New Roman'
    LeftAxis.Title.Font.Style = []
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
    object Series6: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clAqua
      Title = #1054#1073#1083#1072#1089#1090#1100
      LinePen.Color = clAqua
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
end
