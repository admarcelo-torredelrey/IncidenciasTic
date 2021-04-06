unit consultarincidencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TxconsultarIncidencias = class(TForm)
    gridIncidencias: TDBGrid;
    txtProfesor: TEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xconsultarIncidencias: TxconsultarIncidencias;

implementation

{$R *.dfm}

procedure TxconsultarIncidencias.FormActivate(Sender: TObject);
begin


    xdatos.queryIncidencias.close;
    xdatos.queryIncidencias.SQL.Text:='Select * from incidencia';
    xdatos.queryIncidencias.Open();


end;

end.
