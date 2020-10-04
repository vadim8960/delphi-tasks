object Valerievich: TValerievich
  Left = 246
  Top = 233
  Width = 1335
  Height = 485
  Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 56
    Height = 21
    Caption = #1060'.'#1048'.'#1054'.'
  end
  object Label6: TLabel
    Left = 16
    Top = 288
    Width = 183
    Height = 21
    Caption = #1052#1080#1085'. '#1079#1072#1088#1072#1073#1086#1090#1085#1072#1103' '#1087#1083#1072#1090#1072
  end
  object edtName: TEdit
    Left = 16
    Top = 48
    Width = 209
    Height = 29
    TabOrder = 0
    Text = 'edtName'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 96
    Width = 209
    Height = 177
    Caption = #1044#1072#1085#1085#1099#1077
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 118
      Height = 21
      Caption = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 112
      Height = 21
      Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 123
      Height = 21
      Caption = #1044#1086#1093#1086#1076' '#1085#1072' '#1095#1083#1077#1085#1072
    end
    object Label5: TLabel
      Left = 48
      Top = 144
      Width = 48
      Height = 21
      Caption = #1089#1077#1084#1100#1080
    end
    object edtGroup: TEdit
      Left = 136
      Top = 40
      Width = 65
      Height = 29
      TabOrder = 0
      Text = 'edtGroup'
    end
    object edtRating: TEdit
      Left = 136
      Top = 88
      Width = 65
      Height = 29
      TabOrder = 1
      Text = 'edtRating'
    end
    object edtMoney: TEdit
      Left = 136
      Top = 128
      Width = 65
      Height = 29
      TabOrder = 2
      Text = 'edtMoney'
    end
  end
  object btnCreate: TButton
    Left = 16
    Top = 368
    Width = 209
    Height = 33
    Caption = 'btnCreate'
    TabOrder = 2
    OnClick = btnCreateClick
  end
  object sgrdTable: TStringGrid
    Left = 248
    Top = 48
    Width = 513
    Height = 305
    ColCount = 4
    ScrollBars = ssVertical
    TabOrder = 3
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object btnClose: TButton
    Left = 728
    Top = 368
    Width = 83
    Height = 33
    Caption = 'btnClose'
    TabOrder = 4
    OnClick = btnCloseClick
  end
  object sgrdTable2: TStringGrid
    Left = 784
    Top = 48
    Width = 513
    Height = 305
    ColCount = 4
    ScrollBars = ssVertical
    TabOrder = 5
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object edtMinMoney: TEdit
    Left = 16
    Top = 320
    Width = 209
    Height = 29
    TabOrder = 6
    Text = 'edtMinMoney'
  end
  object MainMenu1: TMainMenu
    Left = 496
    Top = 65520
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object MenuCreate: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100
        OnClick = MenuCreateClick
      end
      object MenuOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = MenuOpenClick
      end
      object MenuSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = MenuSaveClick
      end
      object MenuSaveAs: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082' ...'
        OnClick = MenuSaveAsClick
      end
    end
    object N2: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object MenuSortAscending: TMenuItem
        Caption = #1055#1086' '#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1102
        OnClick = MenuSortAscendingClick
      end
      object MenuSortDescending: TMenuItem
        Caption = #1055#1086' '#1091#1073#1099#1074#1072#1085#1080#1102
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.dat'
    Filter = #1060#1072#1081#1083#1099' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 408
    Top = 368
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = #1060#1072#1081#1083#1099' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 472
    Top = 368
  end
end
