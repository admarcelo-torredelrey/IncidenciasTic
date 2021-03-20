object xdatos: Txdatos
  Left = 0
  Top = 0
  Caption = 'DATOS'
  ClientHeight = 425
  ClientWidth = 575
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
end
