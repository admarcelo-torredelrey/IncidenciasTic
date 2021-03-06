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
    cbxUbicacion: TComboBox;
    dtFecha: TDateTimePicker;
    btnFiltrar: TButton;
    btnReiniciar: TButton;
    btnInforme: TButton;
    lblColumna1: TLabel;
    lblColumna2: TLabel;
    procedure btnVolverClick(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbxColumnaChange(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnInformeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xconsultarEquipo: TxconsultarEquipo;
  PRIMERAVEZ: Boolean;

implementation

{$R *.dfm}

uses informeequipo;

procedure TxconsultarEquipo.btnFiltrarClick(Sender: TObject);
begin
    xdatos.queryEquipos.Close;

    if PRIMERAVEZ then
    begin
        xdatos.queryEquipos.SQL.Text:=xdatos.queryEquipos.SQL.Text+' Where';
        PRIMERAVEZ:=false;
    end
    else
    begin
        xdatos.queryEquipos.SQL.Text:=xdatos.queryEquipos.SQL.Text+' and'
    end;




    if cbxColumna.Text='ubicacion' then
    begin
         xdatos.queryEquipos.SQL.Text:= xdatos.queryEquipos.sql.Text+' ubicacion =:ubicacion';
         xdatos.queryEquipos.ParamByName('ubicacion').AsString:=cbxUbicacion.Text;

    end
    else
    begin
        xdatos.queryEquipos.SQL.Text:= xdatos.queryEquipos.sql.Text+' fecha =:fecha';
        xdatos.queryEquipos.ParamByName('fecha').AsDate:=dtFecha.DateTime;

    end;

    xdatos.queryEquipos.Open();



end;

procedure TxconsultarEquipo.btnInformeClick(Sender: TObject);
begin
  xinformeequipo.informe.Preview;
end;

procedure TxconsultarEquipo.btnReiniciarClick(Sender: TObject);
begin
    xdatos.queryEquipos.Close;
    xdatos.queryEquipos.SQL.Text:='Select * from equipamento';
    xdatos.queryEquipos.Open();
    PRIMERAVEZ:=true;
end;

procedure TxconsultarEquipo.btnVolverClick(Sender: TObject);
begin
    ModalResult:=mrok;
end;

procedure TxconsultarEquipo.cbxColumnaChange(Sender: TObject);
begin
      if cbxColumna.Text='ubicacion' then
      begin
        cbxUbicacion.Enabled:=true;
        dtFecha.Enabled:=false;
        btnFiltrar.Enabled:=true;
      end
      else if cbxColumna.Text='fecha' then

      begin
        cbxUbicacion.Enabled:=false;
        dtFecha.Enabled:=true;
        btnFiltrar.Enabled:=true;

      end
      else
      begin
        dtFecha.Enabled:=false;
        cbxUbicacion.Enabled:=false;
        btnFiltrar.Enabled:=false;
      end;
end;

procedure TxconsultarEquipo.FormActivate(Sender: TObject);
begin
    xdatos.queryEquipos.Close;
    xdatos.queryEquipos.SQL.Text:='Select * from equipamento';
    xdatos.queryEquipos.Open();
    PRIMERAVEZ:=True;
    xdatos.tAulas.Open();
    xdatos.tAulas.First;
    cbxUbicacion.Items.Clear;
    cbxUbicacion.Enabled:=True;
    cbxColumna.ItemIndex:=0;
    dtFecha.Enabled:=false;

    while not xdatos.tAulas.Eof do
    begin
      cbxUbicacion.Items.Add(xdatos.tAulasnombre.Text);
      xdatos.tAulas.Next;
    end;

    cbxUbicacion.ItemIndex:=0;



end;

end.
