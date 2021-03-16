unit aulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TxAulas = class(TForm)
    gridAulas: TDBGrid;
    navegador: TDBNavigator;
    btnConsultar: TButton;
    Button1: TButton;
    btnVolver: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xAulas: TxAulas;

implementation

{$R *.dfm}

uses altasaulas;

procedure TxAulas.btnVolverClick(Sender: TObject);
begin
    modalResult:=mrok;
end;

procedure TxAulas.Button1Click(Sender: TObject);
begin
    xAltasAulas.showmodal();
end;

procedure TxAulas.FormActivate(Sender: TObject);
begin
    xdatos.tAulas.Open();
end;

end.