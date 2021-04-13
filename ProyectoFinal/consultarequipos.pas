unit consultarequipos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  TxconsultarEquipo = class(TForm)
    gridEquipos: TDBGrid;
    btnVolver: TButton;
    cbxColumna: TComboBox;
    cbxValue: TComboBox;
    dtFecha: TDateTimePicker;
    btnFiltrar: TButton;
    btnReiniciar: TButton;
    procedure btnVolverClick(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xconsultarEquipo: TxconsultarEquipo;

implementation

{$R *.dfm}

procedure TxconsultarEquipo.btnReiniciarClick(Sender: TObject);
begin
    xdatos.queryEquipos.Close;
    xdatos.queryEquipos.SQL.Text:='Select * from equipamento';
    xdatos.queryEquipos.Open();
end;

procedure TxconsultarEquipo.btnVolverClick(Sender: TObject);
begin
    ModalResult:=mrok;
end;

end.
