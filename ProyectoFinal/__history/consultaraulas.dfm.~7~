object xconsultaraulas: Txconsultaraulas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consultar Altas'
  ClientHeight = 400
  ClientWidth = 746
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
    Left = 254
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cbxColumna: TComboBox
    Left = 118
    Top = 35
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
    Left = 406
    Top = 35
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
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 3
    OnClick = btnFiltroClick
  end
  object gridAula: TDBGrid
    Left = 24
    Top = 112
    Width = 681
    Height = 257
    DataSource = xdatos.dsqueryAula
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnVolver: TButton
    Left = 649
    Top = -1
    Width = 95
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 5
    OnClick = btnVolverClick
  end
  object btnReiniciar: TButton
    Left = 304
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Reiniciar'
    TabOrder = 6
    OnClick = btnReiniciarClick
  end
  object btnInforme: TButton
    Left = 406
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Informe'
    TabOrder = 7
    OnClick = btnInformeClick
  end
end
