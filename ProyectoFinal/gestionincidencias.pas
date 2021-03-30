unit gestionincidencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

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
    txtProfesor: TEdit;
    cbxEstado: TComboBox;
    lblAula: TLabel;
    lblEquipamiento: TLabel;
    lblFecha: TLabel;
    lblProfesor: TLabel;
    lblEstado: TLabel;
    dtFecha: TDateTimePicker;
    procedure imgPriorClick(Sender: TObject);
    procedure imgPreviousClick(Sender: TObject);
    procedure imgNextClick(Sender: TObject);
    procedure imgLastClick(Sender: TObject);
    procedure imgDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridIncidenciasCellClick(Column: TColumn);
    procedure imgPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xgestionIncidencias: TxgestionIncidencias;

implementation

{$R *.dfm}

uses menuprincipal;

procedure TxgestionIncidencias.FormActivate(Sender: TObject);
var
USERID : Integer;
usertype : String;
begin
       USERID:=strtoint(xmainmenu.lblid.caption);

       if xdatos.tUsuario.Locate('id',USERID) then
       begin
         usertype:=xdatos.tUsuariotipo.value;
       end;


       //Si el usuario es administrador, se habilita el seleccionar usuario
       if usertype='Admin' then
       begin
          cbxEstado.enabled:=true;
       end
       else
       begin
         cbxEstado.enabled:=false;
       end;

      xdatos.tIncidencias.Open();
      xdatos.tIncidencias.First;
      if not xdatos.tIncidencias.Eof then
      begin
        txtAula.Text:=xdatos.tIncidenciasaula.Value;
        txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
        dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
        txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
        cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
      end;
end;

procedure TxgestionIncidencias.gridIncidenciasCellClick(Column: TColumn);
begin
txtAula.Text:=xdatos.tIncidenciasaula.Value;
txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
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
dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgNextClick(Sender: TObject);
begin
xdatos.tIncidencias.Next();
txtAula.Text:=xdatos.tIncidenciasaula.Value;
txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgPostClick(Sender: TObject);
begin
      if (txtAula.Text='') or (txtEquipamiento.Text='') or (txtProfesor.Text='') or (cbxEstado.Text='') then
      begin
        ShowMessage('No puedes dejar campos vacios!');
      end
      else
      begin
        xdatos.tIncidencias.Edit;
        xdatos.tIncidenciasaula.Value:=txtAula.Text;
        xdatos.tIncidenciasequipamiento.Value:=txtEquipamiento.Text;
        xdatos.tIncidenciasfecha.Value:=dtFecha.DateTime;
        xdatos.tIncidenciasprofesor.Value:=txtProfesor.Text;
        xdatos.tIncidenciasestado.Value:=cbxEstado.Text;
        xdatos.tIncidencias.Post;
      end;

end;

procedure TxgestionIncidencias.imgPreviousClick(Sender: TObject);
begin
xdatos.tIncidencias.Prior;
txtAula.Text:=xdatos.tIncidenciasaula.Value;
txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgPriorClick(Sender: TObject);
begin
    xdatos.tIncidencias.First();
    txtAula.Text:=xdatos.tIncidenciasaula.Value;
    txtEquipamiento.Text:=xdatos.tIncidenciasequipamiento.Value;
    dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
    txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
    cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

end.
