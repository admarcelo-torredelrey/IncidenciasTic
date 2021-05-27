object xaltasEquipo: TxaltasEquipo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Altas Equipos'
  ClientHeight = 211
  ClientWidth = 622
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
    Left = 144
    Top = 44
    Width = 49
    Height = 16
    Caption = 'Nombre '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDescripcion: TLabel
    Left = 144
    Top = 83
    Width = 65
    Height = 16
    Caption = 'Descripci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblUbicacion: TLabel
    Left = 144
    Top = 123
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
  object txtDescripcion: TEdit
    Left = 264
    Top = 79
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtNombre: TEdit
    Left = 264
    Top = 39
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cbxUbicacion: TComboBox
    Left = 264
    Top = 119
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnGuardar: TButton
    Left = 216
    Top = 153
    Width = 129
    Height = 24
    Caption = 'Guardar'
    TabOrder = 3
    OnClick = btnGuardarClick
  end
  object btnVolver: TButton
    Left = 528
    Top = -1
    Width = 84
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 4
    OnClick = btnVolverClick
  end
end
