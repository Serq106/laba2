object Form3: TForm3
  Left = 324
  Top = 265
  Width = 870
  Height = 640
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Memo1: TMemo
    Left = 56
    Top = 64
    Width = 257
    Height = 161
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 296
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object Button1: TButton
    Left = 96
    Top = 288
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button1Click
  end
end
