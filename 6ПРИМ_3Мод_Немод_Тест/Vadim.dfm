object Valerievich: TValerievich
  Left = 220
  Top = 150
  Width = 303
  Height = 210
  Caption = 'Main Form'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object BitBtn1: TBitBtn
    Left = 96
    Top = 64
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkClose
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = #1054#1082#1085#1086
      object OpenModalForm: TMenuItem
        Caption = #1084#1086#1076#1072#1083#1100#1085#1086#1077
        OnClick = OpenModalFormClick
      end
      object OpenModalessForm: TMenuItem
        Caption = #1085#1077#1084#1086#1076#1072#1083#1100#1085#1086#1077
        OnClick = OpenModalessFormClick
      end
    end
  end
end
