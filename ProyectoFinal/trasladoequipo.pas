unit trasladoequipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,datos;

type
  TxTraslado = class(TForm)
    btnVolver: TButton;
    cbxOrigen: TComboBox;
    cbxDestino: TComboBox;
    lblOrigen: TLabel;
    lblDestino: TLabel;
    procedure btnVolverClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xTraslado: TxTraslado;

implementation

{$R *.dfm}

procedure TxTraslado.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TxTraslado.FormActivate(Sender: TObject);
begin
      xdatos.tAulas.Open();

      xdatos.tAulas.First;

      cbxOrigen.Items.Clear;
      cbxDestino.Items.Clear;

      while not xdatos.tAulas.Eof do
      begin
        cbxOrigen.Items.Add(xdatos.tAulasnombre);
        cbxDestino.Items.Add(xdatos.tAulasnombre);
        xdatos.tAulas.Next;
      end;


end;

end.
