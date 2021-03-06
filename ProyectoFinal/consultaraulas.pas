unit consultaraulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,datos,
  Vcl.DBGrids;

type
  Txconsultaraulas = class(TForm)
    txtValor: TEdit;
    cbxColumna: TComboBox;
    cbxUbicacion: TComboBox;
    btnFiltro: TButton;
    gridAula: TDBGrid;
    btnVolver: TButton;
    btnReiniciar: TButton;
    btnInforme: TButton;
    lblColumna1: TLabel;
    lblColumna2: TLabel;
    procedure cbxColumnaChange(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
    procedure btnInformeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xconsultaraulas: Txconsultaraulas;
  PRIMERAVEZ : Boolean;

implementation

{$R *.dfm}

uses informeaulas;

procedure Txconsultaraulas.btnFiltroClick(Sender: TObject);
begin
        xdatos.queryAulas.Close;

        //Comprobamos si es la primera vez que entra o no en el filtro para usar la clausula WHERE o AND

        if PRIMERAVEZ then
        begin
              xdatos.queryAulas.SQL.Text:=xdatos.queryAulas.SQL.Text+' WHERE';
        end
        else
        begin
              xdatos.queryAulas.SQL.Text:=xdatos.queryAulas.SQL.Text+' AND';
        end;



        //Comprobamos por donde tiene que entrar segun lo seleccionado

        if txtValor.Enabled=true then
        begin



            if txtValor.NumbersOnly=true then
            begin
                 xdatos.queryAulas.SQL.Text:=xdatos.queryAulas.SQL.Text+' id =:ID';
                 xdatos.queryAulas.ParamByName('ID').AsInteger:=strtoint(txtValor.Text);
            end
            else
            begin
                 xdatos.queryAulas.SQL.Text:=xdatos.queryAulas.SQL.Text+' nombre =:NOMBRE';
                 xdatos.queryAulas.ParamByName('NOMBRE').AsString:=txtValor.Text;

            end;
        end
        else
        begin
          xdatos.queryAulas.SQL.Text:=xdatos.queryAulas.SQL.Text+' ubicacion =:UBICACION';
          xdatos.queryAulas.ParamByName('UBICACION').AsString:=cbxUbicacion.Text;
        end;

        xdatos.queryAulas.Open();
        PRIMERAVEZ:=false;
        txtValor.Text:='';
end;

procedure Txconsultaraulas.btnReiniciarClick(Sender: TObject);
begin
    xdatos.queryAulas.Close;
    xdatos.queryAulas.SQL.Text:='Select * from aula';
    xdatos.queryAulas.Open();
end;

procedure Txconsultaraulas.btnVolverClick(Sender: TObject);
begin
    ModalResult:=mrok;
end;

procedure Txconsultaraulas.btnInformeClick(Sender: TObject);
begin
    xinformeaulas.QuickRep1.Preview;
end;

procedure Txconsultaraulas.cbxColumnaChange(Sender: TObject);
begin
    if cbxColumna.Text='nombre' then
    begin
      txtValor.NumbersOnly:=false;
      txtValor.Enabled:=true;
      cbxUbicacion.Enabled:=false;
      txtValor.Text:='';
      lblColumna1.Caption:='Nombre';
    end;

    if cbxColumna.Text='id' then
    begin
      txtValor.NumbersOnly:=true;
      txtValor.Enabled:=true;
      cbxUbicacion.Enabled:=false;
      txtValor.Text:='';
      lblColumna1.Caption:='Id';
    end;

    if cbxColumna.Text='ubicacion' then
    begin
      txtValor.Enabled:=false;
      cbxUbicacion.Enabled:=true;

    end;



end;

procedure Txconsultaraulas.FormActivate(Sender: TObject);
begin
    cbxColumna.ItemIndex:=0;
    txtValor.NumbersOnly:=true;
    cbxUbicacion.Enabled:=false;
    xdatos.queryAulas.Close;
    xdatos.queryAulas.SQL.Text:='Select * from aula';
    xdatos.queryAulas.Open();
    PRIMERAVEZ:=true;
    lblColumna2.Caption:='Ubicaci?n';
    lblColumna1.Caption:='Id';


end;

end.
