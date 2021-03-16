unit altasaulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,datos;

type
  TxAltasAulas = class(TForm)
    cbxUbicacion: TComboBox;
    txtNombreAula: TEdit;
    lblNombre: TLabel;
    lblUbicacion: TLabel;
    btnCrearAula: TButton;
    btnVolver: TButton;
    procedure btnCrearAulaClick(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xAltasAulas: TxAltasAulas;

implementation

{$R *.dfm}

procedure TxAltasAulas.btnCrearAulaClick(Sender: TObject);
begin
    xdatos.tAulas.Open();
    if xdatos.tAulas.Locate('nombre',txtNombreAula.Text) then
    begin
        ShowMessage('El aula '+txtNombreAula.Text+' ya existe!');
    end
    else
    begin
         xdatos.tAulas.Append;
         xdatos.tAulasnombre.Value:=txtNombreAula.Text;
         xdatos.tAulasubicacion.Value:=cbxUbicacion.Text;
         xdatos.tAulas.Post;

         ShowMessage('El aula '+txtNombreAula.Text+' ha sido añadida correctamente');
         txtNombreAula.Text:='';
         cbxUbicacion.ItemIndex:=0;

    end;



end;

procedure TxAltasAulas.btnVolverClick(Sender: TObject);
begin
      modalResult:=mrok;
end;

procedure TxAltasAulas.FormActivate(Sender: TObject);
begin
    txtNombreAula.Text:='';
    cbxUbicacion.ItemIndex:=0;
end;

end.
