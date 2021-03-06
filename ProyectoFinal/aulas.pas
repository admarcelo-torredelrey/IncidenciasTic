unit aulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TxAulas = class(TForm)
    gridAulas: TDBGrid;
    btnConsultar: TButton;
    btnNuevaAula: TButton;
    btnVolver: TButton;
    imgPrior: TImage;
    imgPrevious: TImage;
    imgNext: TImage;
    imgLast: TImage;
    imgPost: TImage;
    imgDelete: TImage;
    cbxUbicaci?n: TComboBox;
    txtNombre: TEdit;
    lblNombre: TLabel;
    lblUbicacion: TLabel;
    btnLocalizar: TButton;
    txtValor: TEdit;
    cbxColumna: TComboBox;
    lblColumna: TLabel;
    lblValor: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnNuevaAulaClick(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure imgPriorClick(Sender: TObject);
    procedure imgPreviousClick(Sender: TObject);
    procedure imgNextClick(Sender: TObject);
    procedure imgLastClick(Sender: TObject);
    procedure imgPostClick(Sender: TObject);
    procedure imgDeleteClick(Sender: TObject);
    procedure gridAulasCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure cbxColumnaChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xAulas: TxAulas;

implementation

{$R *.dfm}

uses altasaulas, menuprincipal, consultaraulas;

procedure TxAulas.btnConsultarClick(Sender: TObject);
begin
    xconsultaraulas.showmodal;
end;

procedure TxAulas.btnLocalizarClick(Sender: TObject);
begin
    if xdatos.tAulas.Locate(cbxColumna.Text,txtValor.Text) then
    begin

    end
    else
    begin
      ShowMessage('No se ha encontrado ning?n registro para esa busqueda');
    end;

end;

procedure TxAulas.btnVolverClick(Sender: TObject);
begin
    modalResult:=mrok;
end;

procedure TxAulas.btnNuevaAulaClick(Sender: TObject);
begin
    xAltasAulas.showmodal();
end;

procedure TxAulas.cbxColumnaChange(Sender: TObject);
begin
      if cbxColumna.Text='id' then
      begin

          txtValor.NumbersOnly:=true;
          txtValor.Text:='';
      end
      else
      begin
            txtValor.NumbersOnly:=false;
            txtValor.Text:='';
      end;

end;

procedure TxAulas.FormActivate(Sender: TObject);
begin
    xdatos.tAulas.Open();
    if not xdatos.tAulas.Eof then
    begin
      xdatos.tAulas.First;
      txtNombre.Text:=xdatos.tAulasnombre.Value;
      cbxUbicaci?n.Text:=xdatos.tAulasubicacion.Value;
    end;
    cbxColumna.ItemIndex:=0;
    txtValor.NumbersOnly:=true;

end;

procedure TxAulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  xmainmenu.Visible:=true;
end;

procedure TxAulas.gridAulasCellClick(Column: TColumn);
begin
  txtNombre.Text:=xdatos.tAulasnombre.Value;
  cbxUbicaci?n.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgDeleteClick(Sender: TObject);
var
 aula : String;
begin
  if xdatos.tAulasnombre.Value='almacen' then
  begin
    ShowMessage('No puedes borrar el aula por defecto');
  end
  else
  begin
    aula := xdatos.tAulasnombre.Value;
    xdatos.tAulas.Delete;
    txtNombre.Text:=xdatos.tAulasnombre.Value;
    cbxUbicaci?n.Text:=xdatos.tAulasubicacion.Value;

    xdatos.tEquipos.Open();


    while xdatos.tEquipos.Locate('ubicacion',aula) do
    begin
      xdatos.tEquipos.Edit;
      xdatos.tEquiposubicacion.Value:='almacen';
    end;

  end;


end;

procedure TxAulas.imgLastClick(Sender: TObject);
begin
  xdatos.tAulas.Last;
  txtNombre.Text:=xdatos.tAulasnombre.Value;
  cbxUbicaci?n.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgNextClick(Sender: TObject);
begin
    xdatos.tAulas.Next;
    txtNombre.Text:=xdatos.tAulasnombre.Value;
    cbxUbicaci?n.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgPostClick(Sender: TObject);
begin
  if xdatos.tAulas.Eof then
  begin
    ShowMessage('No existe ning?n registro');
  end
  else if xdatos.tAulasnombre.Value='almacen' then
  begin
    ShowMessage('No se puede modificar la opci?n por defecto');
  end
  else if (txtNombre.Text='') or (cbxUbicaci?n.Text='') then
  begin

    ShowMessage('No debes dejar campos vacios!');

  end
  else
  begin

  if txtNombre.Text<>xdatos.tAulasnombre.Value then
  begin
    while xdatos.tEquipos.Locate('ubicacion',xdatos.tAulasnombre.Text) do
    begin
      xdatos.tEquipos.Edit;
      xdatos.tEquiposubicacion.Value:=txtNombre.Text;
    end;

  end;
  xdatos.tAulas.Edit;
  xdatos.tAulasnombre.Value:=txtNombre.Text;
  xdatos.tAulasubicacion.Value:=cbxUbicaci?n.Text;

  xdatos.tAulas.Post;

  end;

end;

procedure TxAulas.imgPreviousClick(Sender: TObject);
begin
     xdatos.tAulas.Prior;
     txtNombre.Text:=xdatos.tAulasnombre.Value;
     cbxUbicaci?n.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgPriorClick(Sender: TObject);
begin
      xdatos.tAulas.First;
      txtNombre.Text:=xdatos.tAulasnombre.Value;
      cbxUbicaci?n.Text:=xdatos.tAulasubicacion.Value;
end;

end.
