object xmanageusers: Txmanageusers
  Left = 0
  Top = 0
  Caption = 'Gesti'#243'n Usuarios'
  ClientHeight = 387
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clTeal
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object lblChangePassword: TLabel
    Left = 56
    Top = 103
    Width = 143
    Height = 16
    Caption = 'Cambiar Contrase'#241'a...'
    OnClick = lblChangePasswordClick
  end
  object lblNewPassword: TLabel
    Left = 472
    Top = 73
    Width = 104
    Height = 16
    Caption = 'Nueva Contrase'#241'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblSelectUser: TLabel
    Left = 280
    Top = 73
    Width = 107
    Height = 16
    Caption = 'Selecciona usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblDeleteUser: TLabel
    Left = 56
    Top = 288
    Width = 113
    Height = 16
    Caption = 'Eliminar usuario...'
    Visible = False
    OnClick = lblDeleteUserClick
  end
  object lblCreateUser: TLabel
    Left = 56
    Top = 192
    Width = 100
    Height = 16
    Caption = 'Crear usuario...'
    Visible = False
    OnClick = lblCreateUserClick
  end
  object lblUserName: TLabel
    Left = 278
    Top = 186
    Width = 109
    Height = 16
    Caption = 'Nombre de usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblTipo: TLabel
    Left = 455
    Top = 184
    Width = 89
    Height = 16
    Caption = 'Tipo de usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblSelectUserDelete: TLabel
    Left = 272
    Top = 258
    Width = 107
    Height = 16
    Caption = 'Selecciona usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object txtNewPassword: TEdit
    Left = 472
    Top = 95
    Width = 137
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    Visible = False
  end
  object chbxVisible: TCheckBox
    Left = 632
    Top = 97
    Width = 97
    Height = 17
    Caption = 'Visible'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = chbxVisibleClick
  end
  object btnChangePassword: TButton
    Left = 472
    Top = 130
    Width = 128
    Height = 25
    Caption = 'Guardar Cambios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = btnChangePasswordClick
  end
  object cbxUsuarios: TComboBox
    Left = 280
    Top = 95
    Width = 161
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object txtUsername: TEdit
    Left = 280
    Top = 208
    Width = 129
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object cbxTipo: TComboBox
    Left = 455
    Top = 208
    Width = 145
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object btnCreateUser: TButton
    Left = 621
    Top = 206
    Width = 105
    Height = 25
    Caption = 'Crear Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = btnCreateUserClick
  end
  object cbxDeleteUser: TComboBox
    Left = 272
    Top = 280
    Width = 161
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  object btnBorrar: TButton
    Left = 469
    Top = 280
    Width = 107
    Height = 25
    Caption = 'Borrar usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    OnClick = btnBorrarClick
  end
  object btnVolver: TButton
    Left = 632
    Top = 0
    Width = 175
    Height = 41
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = bsCommandLink
    TabOrder = 9
    OnClick = btnVolverClick
  end
end
