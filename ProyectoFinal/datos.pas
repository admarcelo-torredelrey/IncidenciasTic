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
    tAulas: TFDTable;
    dtAulas: TDataSource;
    tAulasid: TFDAutoIncField;
    tAulasnombre: TStringField;
    tAulasubicacion: TStringField;
    tEquipos: TFDTable;
    dsEquipos: TDataSource;
    tEquiposid: TFDAutoIncField;
    tEquiposnombre: TStringField;
    tEquiposdescripcion: TStringField;
    tEquiposubicacion: TStringField;
    tEquiposfecha: TDateField;
    tTraslado: TFDTable;
    tTrasladoid: TFDAutoIncField;
    tTrasladoequipo: TStringField;
    tTrasladoorigen: TStringField;
    tTrasladodestino: TStringField;
    tTrasladofecha: TDateField;
    dsTraslado: TDataSource;
    tIncidencias: TFDTable;
    dsIncidencias: TDataSource;
    tIncidenciasid: TFDAutoIncField;
    tIncidenciasaula: TStringField;
    tIncidenciasequipamiento: TStringField;
    tIncidenciasfecha: TDateField;
    tIncidenciasprofesor: TStringField;
    tIncidenciasestado: TStringField;
    queryAulas: TFDQuery;
    dsqueryAula: TDataSource;
    queryIncidencias: TFDQuery;
    dsqueryIncidencia: TDataSource;
    queryIncidenciasid: TFDAutoIncField;
    queryIncidenciasaula: TStringField;
    queryIncidenciasequipamiento: TStringField;
    queryIncidenciasfecha: TDateField;
    queryIncidenciasprofesor: TStringField;
    queryIncidenciasestado: TStringField;
    dsqueryEquipo: TDataSource;
    queryEquipos: TFDQuery;
    queryEquiposid: TFDAutoIncField;
    queryEquiposnombre: TStringField;
    queryEquiposdescripcion: TStringField;
    queryEquiposubicacion: TStringField;
    queryEquiposfecha: TDateField;
    queryTraslados: TFDQuery;
    dsqueryTraslado: TDataSource;
    queryTrasladosid: TFDAutoIncField;
    queryTrasladosequipo: TStringField;
    queryTrasladosorigen: TStringField;
    queryTrasladosdestino: TStringField;
    queryTrasladosfecha: TDateField;
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
