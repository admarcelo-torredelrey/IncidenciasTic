object xconsultarEquipo: TxconsultarEquipo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consultar Equipo'
  ClientHeight = 392
  ClientWidth = 760
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
  object lblColumna1: TLabel
    Left = 306
    Top = 29
    Width = 45
    Height = 13
    Caption = 'Ubicaci'#243'n'
  end
  object lblColumna2: TLabel
    Left = 488
    Top = 29
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object gridEquipos: TDBGrid
    Left = 24
    Top = 136
    Width = 697
    Height = 225
    DataSource = xdatos.dsqueryEquipo
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descripcion'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ubicacion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Width = 123
        Visible = True
      end>
  end
  object btnVolver: TButton
    Left = 664
    Top = 0
    Width = 89
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 1
    OnClick = btnVolverClick
  end
  object cbxColumna: TComboBox
    Left = 136
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ubicacion'
    OnChange = cbxColumnaChange
    Items.Strings = (
      'ubicacion'
      'fecha')
  end
  object cbxUbicacion: TComboBox
    Left = 306
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object dtFecha: TDateTimePicker
    Left = 488
    Top = 48
    Width = 153
    Height = 21
    Date = 44299.000000000000000000
    Time = 0.587701400465448400
    TabOrder = 4
  end
  object btnFiltrar: TButton
    Left = 232
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 5
    OnClick = btnFiltrarClick
  end
  object btnReiniciar: TButton
    Left = 352
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Reiniciar'
    TabOrder = 6
    OnClick = btnReiniciarClick
  end
  object btnInforme: TButton
    Left = 464
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Informe'
    TabOrder = 7
    OnClick = btnInformeClick
  end
end
