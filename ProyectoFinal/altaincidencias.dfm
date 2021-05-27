object xaltaIncidencias: TxaltaIncidencias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Alta Incidencias'
  ClientHeight = 275
  ClientWidth = 576
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
  object lblAula: TLabel
    Left = 152
    Top = 57
    Width = 25
    Height = 16
    Caption = 'Aula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblEquipamiento: TLabel
    Left = 152
    Top = 108
    Width = 77
    Height = 16
    Caption = 'Equipamiento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblProfesor: TLabel
    Left = 152
    Top = 164
    Width = 48
    Height = 16
    Caption = 'Profesor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbxAula: TComboBox
    Left = 264
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'cbxAula'
  end
  object cbxEquipo: TComboBox
    Left = 264
    Top = 104
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object txtProfesor: TEdit
    Left = 264
    Top = 159
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object btnVolver: TButton
    Left = 480
    Top = 0
    Width = 89
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 3
    OnClick = btnVolverClick
  end
  object btnGuardar: TButton
    Left = 208
    Top = 208
    Width = 129
    Height = 33
    Caption = 'Guardar'
    TabOrder = 4
    OnClick = btnGuardarClick
  end
end
