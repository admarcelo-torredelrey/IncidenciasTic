object xconsultaraulas: Txconsultaraulas
  Left = 0
  Top = 0
  Caption = 'Consultar Altas'
  ClientHeight = 308
  ClientWidth = 578
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
  object txtValor: TEdit
    Left = 152
    Top = 19
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cbxColumna: TComboBox
    Left = 16
    Top = 19
    Width = 113
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'id'
    OnChange = cbxColumnaChange
    Items.Strings = (
      'id'
      'nombre'
      'ubicacion')
  end
  object cbxUbicacion: TComboBox
    Left = 304
    Top = 19
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Planta baja'
      'Primera planta'
      'Segunda planta')
  end
  object btnFiltro: TButton
    Left = 198
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 3
    OnClick = btnFiltroClick
  end
  object gridAula: TDBGrid
    Left = 64
    Top = 112
    Width = 449
    Height = 169
    DataSource = xdatos.dsqueryAula
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnVolver: TButton
    Left = 482
    Top = 7
    Width = 95
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 5
    OnClick = btnVolverClick
  end
  object btnReiniciar: TButton
    Left = 304
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Reiniciar'
    TabOrder = 6
    OnClick = btnReiniciarClick
  end
end
