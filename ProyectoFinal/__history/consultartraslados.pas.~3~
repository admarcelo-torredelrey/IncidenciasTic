unit consultartraslados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids,datos;

type
  TxconsultarTraslados = class(TForm)
    cbxColumna: TComboBox;
    cbxValor: TComboBox;
    dtFecha: TDateTimePicker;
    btnVolver: TButton;
    Button2: TButton;
    Button3: TButton;
    gridTraslados: TDBGrid;
    procedure btnVolverClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xconsultarTraslados: TxconsultarTraslados;

implementation

{$R *.dfm}

procedure TxconsultarTraslados.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TxconsultarTraslados.FormActivate(Sender: TObject);
begin
    xdatos.queryTraslados.Close;
    xdatos.queryTraslados.SQL.Text:='select * from traslado';
    xdatos.queryTraslados.Open();
end;

end.
