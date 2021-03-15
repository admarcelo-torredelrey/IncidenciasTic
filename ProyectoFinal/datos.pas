unit datos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Txdatos = class(TForm)
    dbincidencias: TFDConnection;
    mysqlLib: TFDPhysMySQLDriverLink;
    tUsuario: TFDTable;
    tUsuarioid: TFDAutoIncField;
    tUsuariousername: TStringField;
    tUsuariopassword: TStringField;
    dtUsuario: TDataSource;
    tUsuariotipo: TStringField;
    tTipoUsuarios: TFDTable;
    dtTipoUsuarios: TDataSource;
    tTipoUsuariosid: TFDAutoIncField;
    tTipoUsuariostipo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xdatos: Txdatos;

implementation

{$R *.dfm}

end.
