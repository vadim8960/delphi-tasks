object Valerievich: TValerievich
  Left = 163
  Top = 129
  Width = 797
  Height = 393
  Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1072#1073#1080#1090#1091#1088#1080#1077#1090#1085#1086#1074
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
    Caption = #1054#1094#1077#1085#1082#1080
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 95
      Height = 21
      Caption = #1052#1072#1090#1077#1084#1072#1090#1080#1082#1072
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 59
      Height = 21
      Caption = #1060#1080#1079#1080#1082#1072
    end
    object Label4: TLabel
      Left = 8
      Top = 136
      Width = 89
      Height = 21
      Caption = #1057#1086#1095#1080#1085#1077#1085#1080#1077
    end
    object edtMath: TEdit
      Left = 128
      Top = 40
      Width = 49
      Height = 29
      TabOrder = 0
      Text = 'edtMath'
    end
    object edtPhis: TEdit
      Left = 128
      Top = 88
      Width = 49
      Height = 29
      TabOrder = 1
      Text = 'edtPhis'
    end
    object edtLetter: TEdit
      Left = 128
      Top = 136
      Width = 49
      Height = 29
      TabOrder = 2
      Text = 'edtLetter'
    end
  end
  object btnCreate: TButton
    Left = 16
    Top = 288
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
    Height = 225
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnClose: TButton
    Left = 336
    Top = 288
    Width = 83
    Height = 33
    Caption = 'btnClose'
    TabOrder = 4
    OnClick = btnCloseClick
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
        OnClick = MenuSortDescendingClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.dat'
    Filter = #1060#1072#1081#1083#1099' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 552
    Top = 288
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = #1060#1072#1081#1083#1099' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 616
    Top = 288
  end
end
