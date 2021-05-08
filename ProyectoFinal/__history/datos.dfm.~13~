object xdatos: Txdatos
  Left = 0
  Top = 0
  Caption = 'DATOS'
  ClientHeight = 536
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbincidencias: TFDConnection
    Params.Strings = (
      'Database=incidencias'
      'Password=admin'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object mysqlLib: TFDPhysMySQLDriverLink
    VendorLib = 'C:\GitHub\IncidenciasTic\ProyectoFinal\lib\libmySQL.dll'
    Left = 80
    Top = 8
  end
  object tUsuario: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'incidencias.usuario'
    TableName = 'incidencias.usuario'
    Left = 16
    Top = 64
    object tUsuarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tUsuariousername: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'username'
      Origin = 'username'
      Size = 30
    end
    object tUsuariopassword: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'password'
      Origin = 'password'
    end
    object tUsuariotipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
    end
  end
  object dtUsuario: TDataSource
    DataSet = tUsuario
    Left = 88
    Top = 64
  end
  object tTipoUsuarios: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'incidencias.tipousuario'
    TableName = 'incidencias.tipousuario'
    Left = 16
    Top = 120
    object tTipoUsuariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tTipoUsuariostipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
    end
  end
  object dtTipoUsuarios: TDataSource
    DataSet = tTipoUsuarios
    Left = 88
    Top = 120
  end
  object tAulas: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'incidencias.aula'
    TableName = 'incidencias.aula'
    Left = 16
    Top = 176
    object tAulasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tAulasnombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nombre'
      Origin = 'nombre'
      Size = 30
    end
    object tAulasubicacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ubicacion'
      Origin = 'ubicacion'
      Size = 30
    end
  end
  object dtAulas: TDataSource
    DataSet = tAulas
    Left = 88
    Top = 176
  end
  object tEquipos: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'incidencias.equipamento'
    TableName = 'incidencias.equipamento'
    Left = 16
    Top = 240
    object tEquiposid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tEquiposnombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nombre'
      Origin = 'nombre'
      Size = 50
    end
    object tEquiposdescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 100
    end
    object tEquiposubicacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ubicacion'
      Origin = 'ubicacion'
      Size = 30
    end
    object tEquiposfecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha'
      Origin = 'fecha'
    end
  end
  object dsEquipos: TDataSource
    DataSet = tEquipos
    Left = 88
    Top = 240
  end
  object tTraslado: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'traslado'
    TableName = 'traslado'
    Left = 16
    Top = 296
    object tTrasladoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tTrasladoequipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'equipo'
      Origin = 'equipo'
      Size = 50
    end
    object tTrasladoorigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'origen'
      Origin = 'origen'
      Size = 30
    end
    object tTrasladodestino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'destino'
      Origin = 'destino'
      Size = 30
    end
    object tTrasladofecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha'
      Origin = 'fecha'
    end
  end
  object dsTraslado: TDataSource
    DataSet = tTraslado
    Left = 88
    Top = 296
  end
  object tIncidencias: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'incidencias.incidencia'
    TableName = 'incidencias.incidencia'
    Left = 16
    Top = 352
    object tIncidenciasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tIncidenciasaula: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aula'
      Origin = 'aula'
      Size = 30
    end
    object tIncidenciasequipamiento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'equipamiento'
      Origin = 'equipamiento'
      Size = 250
    end
    object tIncidenciasfecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha'
      Origin = 'fecha'
    end
    object tIncidenciasprofesor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'profesor'
      Origin = 'profesor'
      Size = 30
    end
    object tIncidenciasestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 30
    end
  end
  object dsIncidencias: TDataSource
    DataSet = tIncidencias
    Left = 88
    Top = 352
  end
  object queryAulas: TFDQuery
    Connection = dbincidencias
    SQL.Strings = (
      'select * from aula')
    Left = 152
    Top = 176
  end
  object dsqueryAula: TDataSource
    DataSet = queryAulas
    Left = 216
    Top = 176
  end
  object queryIncidencias: TFDQuery
    Connection = dbincidencias
    SQL.Strings = (
      'select * from incidencia')
    Left = 176
    Top = 352
    object queryIncidenciasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryIncidenciasaula: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aula'
      Origin = 'aula'
      Size = 30
    end
    object queryIncidenciasequipamiento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'equipamiento'
      Origin = 'equipamiento'
      Size = 250
    end
    object queryIncidenciasfecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha'
      Origin = 'fecha'
    end
    object queryIncidenciasprofesor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'profesor'
      Origin = 'profesor'
      Size = 30
    end
    object queryIncidenciasestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 30
    end
  end
  object dsqueryIncidencia: TDataSource
    DataSet = queryIncidencias
    Left = 272
    Top = 352
  end
  object dsqueryEquipo: TDataSource
    DataSet = queryEquipos
    Left = 224
    Top = 240
  end
  object queryEquipos: TFDQuery
    Connection = dbincidencias
    SQL.Strings = (
      'select * from equipamento')
    Left = 152
    Top = 240
    object queryEquiposid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object queryEquiposnombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nombre'
      Origin = 'nombre'
      Size = 50
    end
    object queryEquiposdescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 100
    end
    object queryEquiposubicacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ubicacion'
      Origin = 'ubicacion'
      Size = 30
    end
    object queryEquiposfecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha'
      Origin = 'fecha'
    end
  end
end
