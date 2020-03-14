object Form1: TForm1
  Left = 181
  Top = 233
  Width = 323
  Height = 130
  Caption = 'Valerievich '
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
  object lbl_time: TLabel
    Left = 136
    Top = 16
    Width = 31
    Height = 21
    Caption = '0:00'
  end
  object btn_timer: TButton
    Left = 16
    Top = 48
    Width = 129
    Height = 25
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 0
    OnClick = btn_timerClick
  end
  object btn_reset: TButton
    Left = 160
    Top = 48
    Width = 129
    Height = 25
    Caption = #1057#1073#1088#1086#1089
    TabOrder = 1
    OnClick = btn_resetClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 272
    Top = 8
  end
end
