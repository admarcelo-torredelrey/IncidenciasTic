unit trasladoequipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,datos, Vcl.ComCtrls;

type
  TxTraslado = class(TForm)
    btnVolver: TButton;
    cbxDestino: TComboBox;
    lblDestino: TLabel;
    btnTrasladar: TButton;
    dtFechaTraslado: TDateTimePicker;
    lblFecha: TLabel;
    lblEquipo: TLabel;
    procedure btnVolverClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnTrasladarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xTraslado: TxTraslado;

implementation

{$R *.dfm}

procedure TxTraslado.btnTrasladarClick(Sender: TObject);
begin
    xdatos.tTraslado.Open();

    xdatos.tTraslado.Append;
    xdatos.tTrasladoequipo.Value:=xdatos.tEquiposnombre.Value;
    xdatos.tTrasladoorigen.Value:=xdatos.tEquiposubicacion.Value;
    xdatos.tTrasladodestino.Value:=cbxDestino.Text;
    xdatos.tTrasladofecha.Value:=dtFechaTraslado.DateTime;
    xdatos.tTraslado.Post;

    xdatos.tEquipos.Edit;
    xdatos.tEquiposubicacion.Value:=cbxDestino.Text;
    xdatos.tEquipos.Post;

    ShowMessage('Se ha trasladado correctamente');

    ModalResult:=mrok;
end;

procedure TxTraslado.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TxTraslado.FormActivate(Sender: TObject);
begin
      xdatos.tAulas.Open();

      xdatos.tAulas.First;


      cbxDestino.Items.Clear;

      while not xdatos.tAulas.Eof do
      begin
        cbxDestino.Items.Add(xdatos.tAulasnombre.Value);
        xdatos.tAulas.Next;
      end;


      cbxDestino.ItemIndex:=0;


end;

end.
