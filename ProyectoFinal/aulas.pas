unit aulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TxAulas = class(TForm)
    gridAulas: TDBGrid;
    navegador: TDBNavigator;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xAulas: TxAulas;

implementation

{$R *.dfm}

procedure TxAulas.FormActivate(Sender: TObject);
begin
    xdatos.tAulas.Open();
end;

end.
