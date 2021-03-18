unit gestionequipos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  Txgestionequipo = class(TForm)
    gridEquipos: TDBGrid;
    imgPrior: TImage;
    imgPrevious: TImage;
    imgNext: TImage;
    imgLast: TImage;
    imgPost: TImage;
    imgDelete: TImage;
    lblNombre: TLabel;
    lblDescripcion: TLabel;
    lblUbicacion: TLabel;
    lblFecha: TLabel;
    txtNombre: TEdit;
    txtDescripcion: TEdit;
    txtUbicacion: TEdit;
    txtFecha: TEdit;
    btnVolver: TButton;
    procedure FormActivate(Sender: TObject);
    procedure imgPriorClick(Sender: TObject);
    procedure imgPreviousClick(Sender: TObject);
    procedure imgNextClick(Sender: TObject);
    procedure imgLastClick(Sender: TObject);
    procedure imgModifyClick(Sender: TObject);
    procedure imgPostClick(Sender: TObject);
    procedure imgDeleteClick(Sender: TObject);
    procedure gridEquiposCellClick(Column: TColumn);
    procedure btnVolverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xgestionequipo: Txgestionequipo;

implementation

{$R *.dfm}

procedure Txgestionequipo.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure Txgestionequipo.FormActivate(Sender: TObject);
begin
    xdatos.tEquipos.Open();

    if not xdatos.tEquipos.Eof then
    begin

    txtNombre.Text:=xdatos.tEquiposnombre.Value;
    txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
    txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
    txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);

    end;
end;

procedure Txgestionequipo.gridEquiposCellClick(Column: TColumn);

begin
    txtNombre.Text:=xdatos.tEquiposnombre.Value;
    txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
    txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
    txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);
end;


procedure Txgestionequipo.imgDeleteClick(Sender: TObject);
begin
  xdatos.tEquipos.Delete;
  txtNombre.Text:=xdatos.tEquiposnombre.Value;
  txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
  txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
  txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);
end;

procedure Txgestionequipo.imgLastClick(Sender: TObject);
begin
  xdatos.tEquipos.Last;
  txtNombre.Text:=xdatos.tEquiposnombre.Value;
  txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
  txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
  txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);
end;

procedure Txgestionequipo.imgModifyClick(Sender: TObject);
begin
  xdatos.tEquipos.Edit;
end;

procedure Txgestionequipo.imgNextClick(Sender: TObject);
begin
  xdatos.tEquipos.Next;
  txtNombre.Text:=xdatos.tEquiposnombre.Value;
  txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
  txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
  txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);
end;

procedure Txgestionequipo.imgPostClick(Sender: TObject);
begin



  if (txtNombre.Text='') or (txtDescripcion.Text='') then
  begin
       ShowMessage('No puede estar vacio, el nombre o la descripción');
  end
  else
  begin
  xdatos.tEquipos.Edit;
  xdatos.tEquiposnombre.Value:=txtNombre.Text;
  xdatos.tEquiposdescripcion.Value:=txtDescripcion.Text;
  xdatos.tEquipos.Post;

  end;

end;

procedure Txgestionequipo.imgPreviousClick(Sender: TObject);
begin
  xdatos.tEquipos.Prior;
  txtNombre.Text:=xdatos.tEquiposnombre.Value;
  txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
  txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
  txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);
end;

procedure Txgestionequipo.imgPriorClick(Sender: TObject);
begin
    xdatos.tEquipos.First;
    txtNombre.Text:=xdatos.tEquiposnombre.Value;
    txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
    txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
    txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);
end;

end.
