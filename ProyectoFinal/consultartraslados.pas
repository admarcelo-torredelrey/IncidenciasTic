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
    btnReiniciar: TButton;
    btnFiltrar: TButton;
    gridTraslados: TDBGrid;
    btnInforme: TButton;
    lblColumna1: TLabel;
    lblColumna2: TLabel;
    procedure btnVolverClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbxColumnaChange(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
    procedure btnInformeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xconsultarTraslados: TxconsultarTraslados;
  primeraVez: Boolean;

implementation

{$R *.dfm}

uses informetraslado;

procedure TxconsultarTraslados.btnFiltrarClick(Sender: TObject);
begin

    if primeraVez then
    begin
      xdatos.queryTraslados.Close;
      xdatos.queryTraslados.SQL.Text:=xdatos.queryTraslados.SQL.Text+' WHERE';
      primeraVez:=False;
    end
    else
    begin
      xdatos.queryTraslados.Close;
      xdatos.queryTraslados.SQL.Text:=xdatos.queryTraslados.SQL.Text+' AND';
    end;

    if cbxValor.Enabled=True then
    begin
       xdatos.queryTraslados.SQL.Text:=xdatos.queryTraslados.SQL.Text+' '+cbxColumna.Text+' =:VALOR';
       xdatos.queryTraslados.ParamByName('VALOR').AsString:=cbxValor.Text;

    end
    else if dtFecha.Enabled=true then
    begin
        xdatos.queryTraslados.SQL.Text:=xdatos.queryTraslados.SQL.Text+' '+cbxColumna.Text+' = :FECHA';
        xdatos.queryTraslados.ParamByName('FECHA').AsDate:=dtFecha.DateTime;
    end;

    xdatos.queryTraslados.Open();

end;

procedure TxconsultarTraslados.btnInformeClick(Sender: TObject);
begin

  xinformetraslado.qrTraslado.Preview;
end;

procedure TxconsultarTraslados.btnReiniciarClick(Sender: TObject);
begin

    xdatos.queryTraslados.Close;
    xdatos.queryTraslados.SQL.Text:='select * from traslado';
    xdatos.queryTraslados.Open();

    primeraVez:=True;

end;

procedure TxconsultarTraslados.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TxconsultarTraslados.cbxColumnaChange(Sender: TObject);
begin

      if cbxColumna.Text='equipo' then
      begin
            xdatos.tEquipos.First;

            cbxValor.Items.Clear;

            while not xdatos.tEquipos.Eof do
            begin
              cbxValor.Items.Add(xdatos.tEquiposnombre.Value);
              xdatos.tEquipos.Next;
            end;

            cbxValor.ItemIndex:=0;

            cbxValor.Enabled:=true;
            dtFecha.Enabled:=False;
            lblColumna1.Caption:='Equipo';


      end
      else if (cbxColumna.Text='origen') or (cbxColumna.Text='destino') then
      begin

          xdatos.tAulas.Open();
          xdatos.tAulas.First;

          cbxValor.Items.Clear;

          while not xdatos.tAulas.Eof do
            begin
              cbxValor.Items.Add(xdatos.tAulasnombre.Value);
              xdatos.tAulas.Next;
            end;

            cbxValor.ItemIndex:=0;

            cbxValor.Enabled:=true;
            dtFecha.Enabled:=False;
            lblColumna1.Caption:=cbxColumna.Text;


      end
      else if cbxColumna.Text='fecha' then
      begin

          cbxValor.Enabled:=False;
          dtFecha.Enabled:=True;

      end
      else
      begin

          cbxColumna.Text:='fecha';
          cbxValor.Enabled:=False;
          dtFecha.Enabled:=True;
      end;




end;

procedure TxconsultarTraslados.FormActivate(Sender: TObject);
begin
    xdatos.queryTraslados.Close;
    xdatos.queryTraslados.SQL.Text:='select * from traslado';
    xdatos.queryTraslados.Open();

    //rellenar el combobox con equipo

    xdatos.tEquipos.Open();
    xdatos.tEquipos.First;

    cbxValor.Items.Clear;

    while not xdatos.tEquipos.Eof do
    begin
      cbxValor.Items.Add(xdatos.tEquiposnombre.Value);
      xdatos.tEquipos.Next;
    end;

    cbxValor.ItemIndex:=0;

    primeraVez:=true;

    cbxValor.Enabled:=true;
    dtFecha.Enabled:=False;
    cbxColumna.ItemIndex:=0;
    lblColumna1.Caption:=cbxColumna.Text;



end;

end.
