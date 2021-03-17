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
    Button1: TButton;
    btnVolver: TButton;
    imgPrior: TImage;
    imgPrevious: TImage;
    imgNext: TImage;
    imgLast: TImage;
    imgPost: TImage;
    imgDelete: TImage;
    ComboBox1: TComboBox;
    txtNombre: TEdit;
    lblNombre: TLabel;
    lblUbicacion: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure imgPriorClick(Sender: TObject);
    procedure imgPreviousClick(Sender: TObject);
    procedure imgNextClick(Sender: TObject);
    procedure imgLastClick(Sender: TObject);
    procedure imgPostClick(Sender: TObject);
    procedure imgDeleteClick(Sender: TObject);
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

procedure TxAulas.imgDeleteClick(Sender: TObject);
begin
  xdatos.tAulas.Delete;
end;

procedure TxAulas.imgLastClick(Sender: TObject);
begin
  xdatos.tAulas.Last;
end;

procedure TxAulas.imgNextClick(Sender: TObject);
begin
    xdatos.tAulas.Next;
end;

procedure TxAulas.imgPostClick(Sender: TObject);
begin
  xdatos.tAulas.Edit;
  xdatos.tAulas.Post;
end;

procedure TxAulas.imgPreviousClick(Sender: TObject);
begin
     xdatos.tAulas.Prior;
end;

procedure TxAulas.imgPriorClick(Sender: TObject);
begin
      xdatos.tAulas.First;
end;

end.
