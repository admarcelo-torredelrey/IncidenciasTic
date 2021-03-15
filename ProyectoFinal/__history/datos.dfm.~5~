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
    Left = 48
    Top = 56
  end
  object mysqlLib: TFDPhysMySQLDriverLink
    VendorLib = 'C:\GitHub\IncidenciasTic\ProyectoFinal\lib\libmySQL.dll'
    Left = 104
    Top = 56
  end
  object tUsuario: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'incidencias.usuario'
    TableName = 'incidencias.usuario'
    Left = 32
    Top = 120
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
    Left = 104
    Top = 120
  end
  object tTipoUsuarios: TFDTable
    IndexFieldNames = 'id'
    Connection = dbincidencias
    UpdateOptions.UpdateTableName = 'incidencias.tipousuario'
    TableName = 'incidencias.tipousuario'
    Left = 32
    Top = 192
    object tTipoUsuariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tTipoUsuariostipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
    end
  end
  object dtTipoUsuarios: TDataSource
    DataSet = tTipoUsuarios
    Left = 104
    Top = 192
  end
end
