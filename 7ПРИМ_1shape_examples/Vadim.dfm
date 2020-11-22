object Form1: TForm1
  Left = 195
  Top = 157
  Width = 892
  Height = 634
  Caption = #1053#1077#1082#1086#1090#1086#1088#1099#1077' '#1086#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1086#1081#1089#1090#1074#1072' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' Shape'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 281
    Height = 561
    Caption = 'Shape'
    TabOrder = 0
    object Shape1: TShape
      Left = 16
      Top = 40
      Width = 113
      Height = 105
      Shape = stCircle
    end
    object Shape2: TShape
      Left = 8
      Top = 176
      Width = 129
      Height = 105
      Shape = stEllipse
    end
    object Shape3: TShape
      Left = 16
      Top = 304
      Width = 113
      Height = 105
      Shape = stRoundRect
    end
    object Shape4: TShape
      Left = 16
      Top = 432
      Width = 113
      Height = 105
      Shape = stSquare
    end
    object Label1: TLabel
      Left = 152
      Top = 80
      Width = 57
      Height = 21
      Caption = 'stCircle'
    end
    object Label2: TLabel
      Left = 160
      Top = 216
      Width = 62
      Height = 21
      Caption = 'stEllipse'
    end
    object Label3: TLabel
      Left = 160
      Top = 352
      Width = 99
      Height = 21
      Caption = 'stRoundRect'
    end
    object Label4: TLabel
      Left = 160
      Top = 480
      Width = 65
      Height = 21
      Caption = 'stSquare'
    end
  end
  object GroupBox2: TGroupBox
    Left = 320
    Top = 16
    Width = 257
    Height = 561
    Caption = 'BrushStyle'
    TabOrder = 1
    object Shape5: TShape
      Left = 16
      Top = 40
      Width = 113
      Height = 105
      Brush.Color = clBlack
      Brush.Style = bsBDiagonal
      Shape = stCircle
    end
    object Shape7: TShape
      Left = 16
      Top = 304
      Width = 113
      Height = 105
      Brush.Color = clBlack
      Brush.Style = bsHorizontal
      Shape = stCircle
    end
    object Shape8: TShape
      Left = 16
      Top = 432
      Width = 113
      Height = 105
      Brush.Color = clHighlightText
      Shape = stCircle
    end
    object Label5: TLabel
      Left = 136
      Top = 80
      Width = 95
      Height = 21
      Caption = 'bsBDiagonal'
    end
    object Label6: TLabel
      Left = 144
      Top = 216
      Width = 63
      Height = 21
      Caption = 'bsCross'
    end
    object Label7: TLabel
      Left = 144
      Top = 352
      Width = 95
      Height = 21
      Caption = 'bsHorizontal'
    end
    object Label8: TLabel
      Left = 144
      Top = 480
      Width = 57
      Height = 21
      Caption = 'bsClear'
    end
    object Shape6: TShape
      Left = 16
      Top = 176
      Width = 113
      Height = 105
      Brush.Color = clBlack
      Brush.Style = bsCross
      Shape = stCircle
    end
  end
  object GroupBox3: TGroupBox
    Left = 600
    Top = 16
    Width = 257
    Height = 561
    Caption = 'PenStyle'
    TabOrder = 2
    object Shape9: TShape
      Left = 16
      Top = 40
      Width = 113
      Height = 105
      Pen.Style = psClear
      Shape = stSquare
    end
    object Shape10: TShape
      Left = 16
      Top = 304
      Width = 113
      Height = 105
      Pen.Style = psDash
      Shape = stSquare
    end
    object Shape11: TShape
      Left = 16
      Top = 432
      Width = 113
      Height = 105
      Pen.Style = psDot
      Shape = stSquare
    end
    object Label9: TLabel
      Left = 136
      Top = 80
      Width = 57
      Height = 21
      Caption = 'psClear'
    end
    object Label10: TLabel
      Left = 144
      Top = 216
      Width = 57
      Height = 21
      Caption = 'psSolid'
    end
    object Label11: TLabel
      Left = 144
      Top = 352
      Width = 56
      Height = 21
      Caption = 'psDash'
    end
    object Label12: TLabel
      Left = 144
      Top = 480
      Width = 46
      Height = 21
      Caption = 'psDot'
    end
    object Shape12: TShape
      Left = 16
      Top = 176
      Width = 113
      Height = 105
      Shape = stSquare
    end
  end
end
