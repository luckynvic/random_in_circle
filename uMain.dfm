object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Random In Circle'
  ClientHeight = 401
  ClientWidth = 611
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object meLog: TMemo
    Left = 426
    Top = 0
    Width = 185
    Height = 360
    Align = alRight
    Lines.Strings = (
      '')
    TabOrder = 0
    ExplicitLeft = 318
    ExplicitTop = 60
    ExplicitHeight = 89
  end
  object Panel1: TPanel
    Left = 0
    Top = 360
    Width = 611
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 204
    ExplicitTop = 348
    ExplicitWidth = 185
    object btDraw1: TButton
      Left = 140
      Top = 1
      Width = 114
      Height = 39
      Align = alLeft
      Caption = 'Draw 1'
      TabOrder = 0
      OnClick = btDraw1Click
      ExplicitLeft = 1
    end
    object btDraw1000: TButton
      Left = 1
      Top = 1
      Width = 139
      Height = 39
      Align = alLeft
      Caption = 'Draw 1000'
      TabOrder = 1
      OnClick = btDraw1000Click
      ExplicitLeft = -5
    end
    object btClear: TButton
      Left = 254
      Top = 1
      Width = 107
      Height = 39
      Align = alLeft
      Caption = 'Clear'
      TabOrder = 2
      OnClick = btClearClick
      ExplicitLeft = 260
    end
  end
end
