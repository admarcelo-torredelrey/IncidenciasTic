unit consultarincidencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TxconsultarIncidencias = class(TForm)
    gridIncidencias: TDBGrid;
    txtProfesor: TEdit;
    cbxColumna: TComboBox;
    lblProfesor: TLabel;
    cbxValue: TComboBox;
    lblValue: TLabel;
    dtFecha: TDateTimePicker;
    lblFecha: TLabel;
    Button1: TButton;
    Button2: TButton;
    btnVolver: TButton;
    btnInforme: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure cbxColumnaChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnInformeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xconsultarIncidencias: TxconsultarIncidencias;
  PRIMERAVEZ: Boolean;

implementation

{$R *.dfm}

uses informeincidencias;

procedure TxconsultarIncidencias.btnInformeClick(Sender: TObject);
begin
    xinformeincidencia.informe.Preview;
end;

procedure TxconsultarIncidencias.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TxconsultarIncidencias.Button1Click(Sender: TObject);
begin
    xdatos.queryIncidencias.Close;
    if PRIMERAVEZ then
    begin
         xdatos.queryIncidencias.SQL.Text:=xdatos.queryIncidencias.SQL.Text+' AND';

    end
    else
    begin
         xdatos.queryIncidencias.SQL.Text:=xdatos.queryIncidencias.SQL.Text+' WHERE';
         PRIMERAVEZ:=true;
    end;

      if cbxColumna.Text='aula' then
      begin

        xdatos.queryIncidencias.SQL.Text:=xdatos.queryIncidencias.SQL.Text+' aula =:AULA';
        xdatos.queryIncidencias.ParamByName('AULA').AsString:=cbxValue.Text;



      end else if cbxColumna.Text='equipamiento' then
      begin
           xdatos.queryIncidencias.SQL.Text:=xdatos.queryIncidencias.SQL.Text+' equipamiento =:EQUIPO';
          xdatos.queryIncidencias.ParamByName('EQUIPO').AsString:=cbxValue.Text;


      end
      else if cbxColumna.Text='fecha' then
      begin
      xdatos.queryIncidencias.SQL.Text:=xdatos.queryIncidencias.SQL.Text+' fecha =:FECHA';
        xdatos.queryIncidencias.ParamByName('FECHA').AsDate:=dtFecha.DateTime;


      end
      else if cbxColumna.Text='profesor' then
      begin
        xdatos.queryIncidencias.SQL.Text:=xdatos.queryIncidencias.SQL.Text+' profesor =:PROFESOR';
        xdatos.queryIncidencias.ParamByName('PROFESOR').AsString:=txtProfesor.Text;

      end
      else if cbxColumna.Text='estado' then
      begin
        xdatos.queryIncidencias.SQL.Text:=xdatos.queryIncidencias.SQL.Text+' estado =:ESTADO';
        xdatos.queryIncidencias.ParamByName('ESTADO').AsString:=cbxValue.Text;


      end;


      xdatos.queryIncidencias.Open();






end;

procedure TxconsultarIncidencias.Button2Click(Sender: TObject);
begin
    xdatos.queryIncidencias.Close;
    xdatos.queryIncidencias.SQL.Text:='Select * from incidencia';
    xdatos.queryIncidencias.Open();
end;

procedure TxconsultarIncidencias.cbxColumnaChange(Sender: TObject);
begin     //Si selecciona aula, se rellana el combobox con las aulas dadas de alta
      if cbxColumna.Text='aula' then
      begin

        txtProfesor.Enabled:=false;
        cbxValue.Enabled:=true;
        dtFecha.Enabled:=false;


        cbxValue.Items.Clear;

        xdatos.tAulas.First;

        while not xdatos.tAulas.Eof do
        begin
          cbxValue.Items.Add(xdatos.tAulasnombre.Value);
          xdatos.tAulas.Next
        end;

        cbxValue.ItemIndex:=0;
        lblValue.Caption:='Aula';

      end
      //Si selecciona equipamiento, se rellena el combobox con los equipos dados de altas.
      else if cbxColumna.Text='equipamiento' then
      begin
        txtProfesor.Enabled:=false;
        cbxValue.Enabled:=true;
        dtFecha.Enabled:=false;


        cbxValue.Items.Clear;

        xdatos.tEquipos.First;

        while not xdatos.tEquipos.Eof do
        begin
          cbxValue.Items.Add(xdatos.tEquiposnombre.Value);
          xdatos.tEquipos.Next;

        end;

        cbxValue.ItemIndex:=0;
        lblValue.Caption:='Equipo';

      end
      else if cbxColumna.Text='fecha' then
      begin
          dtFecha.Enabled:=true;
          cbxValue.Enabled:=false;
          txtProfesor.Enabled:=false;


      end
      else if cbxColumna.Text='profesor' then
      begin
        txtProfesor.Enabled:=true;
        cbxValue.Enabled:=false;
        dtFecha.Enabled:=false;

      end
      else if cbxColumna.Text='estado' then
      begin
        txtProfesor.Enabled:=false;
        cbxValue.Enabled:=true;
        dtFecha.Enabled:=false;

        cbxValue.Items.Clear;

        cbxValue.Items.Add('alta');
        cbxValue.Items.Add('en proceso de revision');
        cbxValue.Items.Add('solucionado');

        cbxValue.ItemIndex:=0;
        lblValue.Caption:='Estado';


      end;




end;

procedure TxconsultarIncidencias.FormActivate(Sender: TObject);
begin


    xdatos.queryIncidencias.close;
    xdatos.queryIncidencias.SQL.Text:='Select * from incidencia';
    xdatos.queryIncidencias.Open();
    PRIMERAVEZ:=false;


end;

end.
