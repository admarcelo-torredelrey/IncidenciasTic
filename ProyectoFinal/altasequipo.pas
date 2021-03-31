unit altasequipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,datos;

type
  TxaltasEquipo = class(TForm)
    txtDescripcion: TEdit;
    txtNombre: TEdit;
    cbxUbicacion: TComboBox;
    lblNombre: TLabel;
    lblDescripcion: TLabel;
    lblUbicacion: TLabel;
    btnGuardar: TButton;
    btnVolver: TButton;
    procedure btnGuardarClick(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xaltasEquipo: TxaltasEquipo;

implementation

{$R *.dfm}

procedure TxaltasEquipo.btnGuardarClick(Sender: TObject);
begin
    if (txtNombre.Text='') or (txtDescripcion.Text='') or (cbxUbicacion.Text='') then
    begin
        ShowMessage('Debes rellenar todos los campos!');
    end
    else
    begin

        xdatos.tEquipos.Open();
        xdatos.tEquipos.Append;

        xdatos.tEquiposnombre.Value:=txtNombre.Text;
        xdatos.tEquiposdescripcion.Value:=txtDescripcion.Text;
        xdatos.tEquiposubicacion.Value:=cbxUbicacion.Text;
        xdatos.tEquiposfecha.Value:=Now;

        xdatos.tEquipos.Post;

        txtNombre.Text:='';
        txtDescripcion.Text='';


        ShowMessage('El equipo '+xdatos.tEquiposnombre.Value+' ha sido añadido correctamente');

    end;
end;

procedure TxaltasEquipo.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TxaltasEquipo.FormActivate(Sender: TObject);
begin
      xdatos.tAulas.Open();
      xdatos.tAulas.First;

      cbxUbicacion.Items.Clear;

      if not xdatos.tAulas.Eof then
      begin
        cbxUbicacion.Items.Add(xdatos.tAulasnombre.Value);
        xdatos.tAulas.Next;
      end;

      cbxUbicacion.ItemIndex:=0;

      txtDescripcion.Text:='';
      txtNombre.Text:='';
end;

end.
