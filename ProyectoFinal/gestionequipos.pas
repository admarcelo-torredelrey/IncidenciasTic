unit gestionequipos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,consultarequipos;

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
    imgMove: TImage;
    btnAlta: TButton;
    cbxColumna: TComboBox;
    txtValue: TEdit;
    btnLocalizar: TButton;
    btnaConsultarEquipos: TButton;
    btnConsultarTraslados: TButton;
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
    procedure imgMoveClick(Sender: TObject);
    procedure btnAltaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxColumnaChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnaConsultarEquiposClick(Sender: TObject);
    procedure btnConsultarTrasladosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xgestionequipo: Txgestionequipo;

implementation

{$R *.dfm}

uses trasladoequipo, altasequipo, menuprincipal, consultartraslados;

procedure Txgestionequipo.btnaConsultarEquiposClick(Sender: TObject);
begin
    xconsultarEquipo.ShowModal;
end;

procedure Txgestionequipo.btnAltaClick(Sender: TObject);
begin
    xaltasEquipo.showmodal;
end;

procedure Txgestionequipo.btnConsultarTrasladosClick(Sender: TObject);
begin
  xconsultarTraslados.showmodal;
end;

procedure Txgestionequipo.btnLocalizarClick(Sender: TObject);
begin
    if not xdatos.tEquipos.Locate(cbxColumna.Text,txtValue.Text) then
    begin
        ShowMessage('No se ha encontrado ningun registro');
    end;

end;

procedure Txgestionequipo.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure Txgestionequipo.cbxColumnaChange(Sender: TObject);
begin
        if cbxColumna.Text='id' then
        begin
           txtValue.NumbersOnly:=true;
           txtValue.Text:='';
        end
        else
        begin
            txtValue.NumbersOnly:=false;
            txtValue.Text:='';
        end;
end;

procedure Txgestionequipo.FormActivate(Sender: TObject);
begin

    txtValue.Text:='';
    txtValue.NumbersOnly:=true;
    cbxColumna.ItemIndex:=0;

    xdatos.tEquipos.Open();

    if not xdatos.tEquipos.Eof then
    begin
    xdatos.tEquipos.First;
    txtNombre.Text:=xdatos.tEquiposnombre.Value;
    txtDescripcion.Text:=xdatos.tEquiposdescripcion.Value;
    txtUbicacion.Text:=xdatos.tEquiposubicacion.Value;
    txtFecha.Text:=DateToStr(xdatos.tEquiposfecha.Value);

    end;
end;

procedure Txgestionequipo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     xmainmenu.Visible:=true;
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

procedure Txgestionequipo.imgMoveClick(Sender: TObject);
begin
    xTraslado.lblEquipo.Caption:='Equipo: '+xdatos.tEquiposnombre.Value+' '+xdatos.tEquiposdescripcion.Value;
    xTraslado.showmodal;

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
  if xdatos.tEquipos.Eof then
  begin
       ShowMessage('No existe ningun registro');
  end
  else if (txtNombre.Text='') or (txtDescripcion.Text='') then
  begin
       ShowMessage('No puede estar vacio, el nombre o la descripci?n');
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
