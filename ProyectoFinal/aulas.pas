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
    cbxUbicación: TComboBox;
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
    procedure gridAulasCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xAulas: TxAulas;

implementation

{$R *.dfm}

uses altasaulas, menuprincipal;

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
    if not xdatos.tAulas.Eof then
    begin
      txtNombre.Text:=xdatos.tAulasnombre.Value;
      cbxUbicación.Text:=xdatos.tAulasubicacion.Value;
    end;
end;

procedure TxAulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  xmainmenu.Visible:=true;
end;

procedure TxAulas.gridAulasCellClick(Column: TColumn);
begin
  txtNombre.Text:=xdatos.tAulasnombre.Value;
  cbxUbicación.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgDeleteClick(Sender: TObject);
begin
  xdatos.tAulas.Delete;
  txtNombre.Text:=xdatos.tAulasnombre.Value;
  cbxUbicación.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgLastClick(Sender: TObject);
begin
  xdatos.tAulas.Last;
  txtNombre.Text:=xdatos.tAulasnombre.Value;
  cbxUbicación.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgNextClick(Sender: TObject);
begin
    xdatos.tAulas.Next;
    txtNombre.Text:=xdatos.tAulasnombre.Value;
    cbxUbicación.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgPostClick(Sender: TObject);
begin

  if (txtNombre.Text='') or (cbxUbicación.Text='') then
  begin

    ShowMessage('No debes dejar campos vacios!');

  end
  else
  begin
  xdatos.tAulas.Edit;
  xdatos.tAulasnombre.Value:=txtNombre.Text;
  xdatos.tAulasubicacion.Value:=cbxUbicación.Text;

  xdatos.tAulas.Post;

  end;

end;

procedure TxAulas.imgPreviousClick(Sender: TObject);
begin
     xdatos.tAulas.Prior;
     txtNombre.Text:=xdatos.tAulasnombre.Value;
     cbxUbicación.Text:=xdatos.tAulasubicacion.Value;
end;

procedure TxAulas.imgPriorClick(Sender: TObject);
begin
      xdatos.tAulas.First;
      txtNombre.Text:=xdatos.tAulasnombre.Value;
      cbxUbicación.Text:=xdatos.tAulasubicacion.Value;
end;

end.
