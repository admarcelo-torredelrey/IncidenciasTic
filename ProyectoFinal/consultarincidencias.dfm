object xconsultarIncidencias: TxconsultarIncidencias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consultar Incidencias'
  ClientHeight = 397
  ClientWidth = 765
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
  object lblProfesor: TLabel
    Left = 248
    Top = 37
    Width = 41
    Height = 13
    Caption = 'Profesor'
  end
  object lblValue: TLabel
    Left = 392
    Top = 37
    Width = 3
    Height = 13
  end
  object lblFecha: TLabel
    Left = 551
    Top = 37
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object gridIncidencias: TDBGrid
    Left = 24
    Top = 160
    Width = 705
    Height = 209
    DataSource = xdatos.dsqueryIncidencia
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aula'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'equipamiento'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'profesor'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Width = 140
        Visible = True
      end>
  end
  object txtProfesor: TEdit
    Left = 248
    Top = 56
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object cbxColumna: TComboBox
    Left = 80
    Top = 56
    Width = 129
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Text = 'aula'
    OnChange = cbxColumnaChange
    Items.Strings = (
      'aula'
      'equipamiento'
      'fecha'
      'profesor'
      'estado')
  end
  object cbxValue: TComboBox
    Left = 392
    Top = 56
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object dtFecha: TDateTimePicker
    Left = 551
    Top = 56
    Width = 138
    Height = 21
    Date = 44296.000000000000000000
    Time = 0.528445266201742900
    TabOrder = 4
  end
  object Button1: TButton
    Left = 246
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Reiniciar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object btnVolver: TButton
    Left = 671
    Top = 0
    Width = 90
    Height = 41
    Caption = 'Volver'
    Style = bsCommandLink
    TabOrder = 7
    OnClick = btnVolverClick
  end
  object btnInforme: TButton
    Left = 457
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Informe'
    TabOrder = 8
    OnClick = btnInformeClick
  end
end
