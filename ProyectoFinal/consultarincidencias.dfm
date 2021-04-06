object xconsultarIncidencias: TxconsultarIncidencias
  Left = 0
  Top = 0
  Caption = 'Consultar '
  ClientHeight = 404
  ClientWidth = 755
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
  object gridIncidencias: TDBGrid
    Left = 24
    Top = 176
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
    Left = 136
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
end
