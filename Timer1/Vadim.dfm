object Form1: TForm1
  Left = 186
  Top = 195
  Width = 267
  Height = 150
  Caption = 'Valerievich'
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
  object lbl_start: TLabel
    Left = 16
    Top = 16
    Width = 60
    Height = 21
    Caption = 'lbl_start'
  end
  object lbl_now: TLabel
    Left = 16
    Top = 48
    Width = 60
    Height = 21
    Caption = 'lbl_now'
  end
  object lbl_begin: TLabel
    Left = 16
    Top = 80
    Width = 68
    Height = 21
    Caption = 'lbl_begin'
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 160
    Top = 8
  end
end
