object xTraslado: TxTraslado
  Left = 0
  Top = 0
  Caption = 'Trasladar Equipo'
  ClientHeight = 289
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblOrigen: TLabel
    Left = 152
    Top = 98
    Width = 38
    Height = 16
    Caption = 'Origen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDestino: TLabel
    Left = 328
    Top = 98
    Width = 42
    Height = 16
    Caption = 'Destino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnVolver: TButton
    Left = 587
    Top = 0
    Width = 86
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 0
    OnClick = btnVolverClick
  end
  object cbxOrigen: TComboBox
    Left = 152
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object cbxDestino: TComboBox
    Left = 328
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 2
  end
end
