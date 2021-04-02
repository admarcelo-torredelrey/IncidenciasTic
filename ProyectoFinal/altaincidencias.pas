unit altaincidencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TxaltaIncidencias = class(TForm)
    cbxAula: TComboBox;
    cbxEquipo: TComboBox;
    lblAula: TLabel;
    lblEquipamiento: TLabel;
    lblProfesor: TLabel;
    txtProfesor: TEdit;
    btnVolver: TButton;
    btnGuardar: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xaltaIncidencias: TxaltaIncidencias;

implementation

{$R *.dfm}

uses datos;

procedure TxaltaIncidencias.btnVolverClick(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TxaltaIncidencias.btnGuardarClick(Sender: TObject);
begin

  if (txtProfesor.Text='') or (cbxEquipo.Text='') or (cbxAula.Text='') then
  begin
    ShowMessage('Debes rellenar todos los datos!');
  end
  else
  begin

    xdatos.tIncidencias.Append;

    xdatos.tIncidenciasaula.Value:=cbxAula.Text;
    xdatos.tIncidenciasequipamiento.Value:=cbxEquipo.Text;
    xdatos.tIncidenciasfecha.Value:=Now;
    xdatos.tIncidenciasprofesor.Value:=txtProfesor.Text;
    xdatos.tIncidenciasestado.Value:='alta';
    xdatos.tIncidencias.Post;


    cbxAula.ItemIndex:=0;
    cbxEquipo.ItemIndex:=0;
    txtProfesor.Text:='';

    ShowMessage('La incidencia ha sido añadida correctamente');



  end;

end;

procedure TxaltaIncidencias.FormActivate(Sender: TObject);
begin
    //rellenamos los combobox con las aulas y los equipamentos

      xdatos.tAulas.Open();
      xdatos.tEquipos.Open();

      xdatos.tAulas.First;
      xdatos.tEquipos.First;

      cbxAula.Items.Clear;
      cbxEquipo.Items.Clear;

      while not xdatos.tAulas.Eof do
      begin
        cbxAula.Items.Add(xdatos.tAulasnombre.Value);
        xdatos.tAulas.Next;
      end;

      while not xdatos.tEquipos.Eof do
      begin
        cbxEquipo.Items.Add(xdatos.tEquiposnombre.Value);
        xdatos.tEquipos.Next;
      end;


      cbxAula.ItemIndex:=0;
      cbxEquipo.ItemIndex:=0;
end;

end.
