object xconsultarEquipo: TxconsultarEquipo
  Left = 0
  Top = 0
  Caption = 'Consultar Equipo'
  ClientHeight = 404
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gridEquipos: TDBGrid
    Left = 40
    Top = 160
    Width = 681
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
        Width = 100
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
    Left = 72
    Top = 48
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Text = 'descripcion'
    Items.Strings = (
      'descripcion'
      'ubicacion'
      'fecha')
  end
  object cbxValue: TComboBox
    Left = 248
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object dtFecha: TDateTimePicker
    Left = 424
    Top = 48
    Width = 153
    Height = 21
    Date = 44299.000000000000000000
    Time = 0.587701400465448400
    TabOrder = 4
  end
  object btnFiltrar: TButton
    Left = 256
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 5
  end
  object btnReiniciar: TButton
    Left = 376
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Reiniciar'
    TabOrder = 6
    OnClick = btnReiniciarClick
  end
end
