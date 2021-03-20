object xTraslado: TxTraslado
  Left = 0
  Top = 0
  Caption = 'Trasladar Equipo'
  ClientHeight = 247
  ClientWidth = 562
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
  object lblDestino: TLabel
    Left = 8
    Top = 74
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
  object lblFecha: TLabel
    Left = 177
    Top = 74
    Width = 88
    Height = 13
    Caption = 'Fecha de Traslado'
  end
  object lblEquipo: TLabel
    Left = 15
    Top = 28
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnVolver: TButton
    Left = 467
    Top = 0
    Width = 86
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 0
    OnClick = btnVolverClick
  end
  object cbxDestino: TComboBox
    Left = 8
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object btnTrasladar: TButton
    Left = 415
    Top = 81
    Width = 129
    Height = 33
    Caption = 'Trasladar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnTrasladarClick
  end
  object dtFechaTraslado: TDateTimePicker
    Left = 177
    Top = 93
    Width = 186
    Height = 21
    Date = 44275.000000000000000000
    Time = 0.360452754626749100
    TabOrder = 3
  end
end
