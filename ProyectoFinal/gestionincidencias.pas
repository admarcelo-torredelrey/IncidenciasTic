unit gestionincidencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TxgestionIncidencias = class(TForm)
    imgPrior: TImage;
    imgPrevious: TImage;
    imgNext: TImage;
    imgLast: TImage;
    imgPost: TImage;
    imgDelete: TImage;
    gridIncidencias: TDBGrid;
    txtAula: TEdit;
    txtEquipamiento: TEdit;
    txtFecha: TEdit;
    txtProfesor: TEdit;
    cbxEstado: TComboBox;
    lblAula: TLabel;
    lblEquipamiento: TLabel;
    lblFecha: TLabel;
    lblProfesor: TLabel;
    lblEstado: TLabel;
    procedure imgPriorClick(Sender: TObject);
    procedure imgPreviousClick(Sender: TObject);
    procedure imgNextClick(Sender: TObject);
    procedure imgLastClick(Sender: TObject);
    procedure imgDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridIncidenciasCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xgestionIncidencias: TxgestionIncidencias;

implementation

{$R *.dfm}

procedure TxgestionIncidencias.FormActivate(Sender: TObject);
begin
      xdatos.tIncidencias.First;
      if not xdatos.tIncidencias.Eof then
      begin
        txtAula.Text:=xdatos.tIncidenciasaula.Value;
        txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
        txtFecha.Text:=DateToStr(xdatos.tIncidenciasfecha.Value);
        txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
        cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
      end;
end;

procedure TxgestionIncidencias.gridIncidenciasCellClick(Column: TColumn);
begin
txtAula.Text:=xdatos.tIncidenciasaula.Value;
txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
txtFecha.Text:=DateToStr(xdatos.tIncidenciasfecha.Value);
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgDeleteClick(Sender: TObject);
begin
xdatos.tIncidencias.Delete;
end;

procedure TxgestionIncidencias.imgLastClick(Sender: TObject);
begin
xdatos.tIncidencias.Last;
txtAula.Text:=xdatos.tIncidenciasaula.Value;
txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
txtFecha.Text:=DateToStr(xdatos.tIncidenciasfecha.Value);
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgNextClick(Sender: TObject);
begin
xdatos.tIncidencias.Next();
txtAula.Text:=xdatos.tIncidenciasaula.Value;
txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
txtFecha.Text:=DateToStr(xdatos.tIncidenciasfecha.Value);
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgPreviousClick(Sender: TObject);
begin
xdatos.tIncidencias.Prior;
txtAula.Text:=xdatos.tIncidenciasaula.Value;
txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
txtFecha.Text:=DateToStr(xdatos.tIncidenciasfecha.Value);
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgPriorClick(Sender: TObject);
begin
    xdatos.tIncidencias.First();
    txtAula.Text:=xdatos.tIncidenciasaula.Value;
    txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
    txtFecha.Text:=DateToStr(xdatos.tIncidenciasfecha.Value);
    txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
    cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

end.
