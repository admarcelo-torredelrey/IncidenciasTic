object xconsultarTraslados: TxconsultarTraslados
  Left = 0
  Top = 0
  Caption = 'Consultar Traslados'
  ClientHeight = 363
  ClientWidth = 759
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
  object cbxColumna: TComboBox
    Left = 32
    Top = 56
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'equipo'
    Items.Strings = (
      'equipo'
      'origen'
      'destino'
      'fecha')
  end
  object cbxValor: TComboBox
    Left = 248
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object dtFecha: TDateTimePicker
    Left = 456
    Top = 56
    Width = 186
    Height = 21
    Date = 44324.000000000000000000
    Time = 0.752630625000165300
    TabOrder = 2
  end
  object btnVolver: TButton
    Left = 672
    Top = 1
    Width = 89
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 3
    OnClick = btnVolverClick
  end
  object Button2: TButton
    Left = 408
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 240
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
  end
  object gridTraslados: TDBGrid
    Left = 8
    Top = 143
    Width = 737
    Height = 212
    DataSource = xdatos.dsqueryTraslado
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'equipo'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'origen'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'destino'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Width = 140
        Visible = True
      end>
  end
end
