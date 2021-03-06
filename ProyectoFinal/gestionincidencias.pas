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
    txtProfesor: TEdit;
    cbxEstado: TComboBox;
    lblAula: TLabel;
    lblEquipamiento: TLabel;
    lblFecha: TLabel;
    lblProfesor: TLabel;
    lblEstado: TLabel;
    dtFecha: TDateTimePicker;
    cbxAula: TComboBox;
    cbxEquipo: TComboBox;
    btnVolver: TButton;
    btnAlta: TButton;
    txtValor: TEdit;
    Button1: TButton;
    lblValor: TLabel;
    btnConsultar: TButton;
    procedure imgPriorClick(Sender: TObject);
    procedure imgPreviousClick(Sender: TObject);
    procedure imgNextClick(Sender: TObject);
    procedure imgLastClick(Sender: TObject);
    procedure imgDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridIncidenciasCellClick(Column: TColumn);
    procedure imgPostClick(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAltaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xgestionIncidencias: TxgestionIncidencias;

implementation

{$R *.dfm}

uses menuprincipal, altaincidencias, consultarincidencias;

procedure TxgestionIncidencias.btnAltaClick(Sender: TObject);
begin
  xaltaIncidencias.showmodal;
end;

procedure TxgestionIncidencias.btnConsultarClick(Sender: TObject);
begin
    xconsultarIncidencias.showmodal;
end;

procedure TxgestionIncidencias.btnVolverClick(Sender: TObject);
begin
    ModalResult:=mrok;
end;

procedure TxgestionIncidencias.Button1Click(Sender: TObject);
begin
      if txtValor.Text='' then
      begin
        ShowMessage('Rellena el campo para localizar registros');
      end
      else
      begin
        if xdatos.tIncidencias.Locate('id',StrToInt(txtValor.Text)) then
        begin
          txtValor.Text:='';
        end
        else
        begin
            ShowMessage('No se ha encontrado ning?n registro asociado a ese identificador');
        end;


      end;

end;

procedure TxgestionIncidencias.FormActivate(Sender: TObject);

begin


      xdatos.tIncidencias.Open();
      xdatos.tIncidencias.First;
      if not xdatos.tIncidencias.Eof then
      begin
        xdatos.tIncidencias.First;
        cbxAula.Text:=xdatos.tIncidenciasaula.Value;
        cbxEquipo.Text:=xdatos.tIncidenciasequipamiento.Value;
        dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
        txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
        cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
      end;

      //rellenamos los combobox con las aulas y los equipamentos

      xdatos.tAulas.Open();
      xdatos.tEquipos.Open();

      xdatos.tAulas.First;
      xdatos.tEquipos.First;

      cbxAula.Items.Clear;
      cbxEquipo.Items.Clear;

      while not xdatos.tAulas.Eof do
      begin
        cbxAula.Items.Add(xdatos.tAulasnombre.Value);
        xdatos.tAulas.Next;
      end;

      while not xdatos.tEquipos.Eof do
      begin
        cbxEquipo.Items.Add(xdatos.tEquiposnombre.Value);
        xdatos.tEquipos.Next;
      end;


      cbxAula.ItemIndex:=0;
      cbxEquipo.ItemIndex:=0;



end;

procedure TxgestionIncidencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  xmainmenu.Visible:=true;
end;

procedure TxgestionIncidencias.gridIncidenciasCellClick(Column: TColumn);
begin
cbxAula.Text:=xdatos.tIncidenciasaula.Value;
cbxEquipo.Text:=xdatos.tIncidenciasequipamiento.Value;
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
cbxAula.Text:=xdatos.tIncidenciasaula.Value;
cbxEquipo.Text:=xdatos.tIncidenciasequipamiento.Value;
dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgNextClick(Sender: TObject);
begin
xdatos.tIncidencias.Next();
cbxAula.Text:=xdatos.tIncidenciasaula.Value;
cbxEquipo.Text:=xdatos.tIncidenciasequipamiento.Value;
dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgPostClick(Sender: TObject);
begin
      if xdatos.tIncidencias.Eof then
      begin
         ShowMessage('No existe ning?n registro');
      end
      else if (cbxAula.Text='') or (cbxEquipo.Text='') or (txtProfesor.Text='') or (cbxEstado.Text='') then
      begin
        ShowMessage('No puedes dejar campos vacios!');
      end
      else
      begin
        xdatos.tIncidencias.Edit;
        xdatos.tIncidenciasaula.Value:=cbxAula.Text;
        xdatos.tIncidenciasequipamiento.Value:=cbxEquipo.Text;
        xdatos.tIncidenciasfecha.Value:=dtFecha.DateTime;
        xdatos.tIncidenciasprofesor.Value:=txtProfesor.Text;
        xdatos.tIncidenciasestado.Value:=cbxEstado.Text;
        xdatos.tIncidencias.Post;
      end;

end;

procedure TxgestionIncidencias.imgPreviousClick(Sender: TObject);
begin
xdatos.tIncidencias.Prior;
cbxAula.Text:=xdatos.tIncidenciasaula.Value;
cbxEquipo.Text:=xdatos.tIncidenciasequipamiento.Value;
dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

procedure TxgestionIncidencias.imgPriorClick(Sender: TObject);
begin
    xdatos.tIncidencias.First();
    cbxAula.Text:=xdatos.tIncidenciasaula.Value;
    cbxEquipo.Text:=xdatos.tIncidenciasequipamiento.Value;
    dtFecha.DateTime:=xdatos.tIncidenciasfecha.Value;
    txtProfesor.Text:=xdatos.tIncidenciasprofesor.Value;
    cbxEstado.Text:=xdatos.tIncidenciasestado.Value;
end;

end.
