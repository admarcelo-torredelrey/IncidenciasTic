object xAltasAulas: TxAltasAulas
  Left = 0
  Top = 0
  Caption = 'Altas Aulas'
  ClientHeight = 160
  ClientWidth = 482
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
  object lblNombre: TLabel
    Left = 64
    Top = 48
    Width = 94
    Height = 16
    Caption = 'Nombre del aula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblUbicacion: TLabel
    Left = 264
    Top = 48
    Width = 54
    Height = 16
    Caption = 'Ubicaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbxUbicacion: TComboBox
    Left = 264
    Top = 70
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Planta baja'
    Items.Strings = (
      'Planta baja'
      'Primera planta'
      'Segunda planta')
  end
  object txtNombreAula: TEdit
    Left = 64
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCrearAula: TButton
    Left = 160
    Top = 112
    Width = 137
    Height = 25
    Caption = 'Crear Aula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnCrearAulaClick
  end
  object btnVolver: TButton
    Left = 376
    Top = -8
    Width = 110
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 3
    OnClick = btnVolverClick
  end
end
