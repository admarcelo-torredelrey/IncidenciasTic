unit menuprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls,datos;

type
  Txmainmenu = class(TForm)
    imgUserIcon: TImage;
    imgLogout: TImage;
    lblid: TLabel;
    btnGestionAulas: TButton;
    btnIncidencias: TButton;
    btnEquipos: TButton;
    btnNuevaIncidencia: TButton;
    procedure imgLogoutClick(Sender: TObject);
    procedure imgUserIconClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGestionAulasClick(Sender: TObject);
    procedure btnEquiposClick(Sender: TObject);
    procedure btnIncidenciasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNuevaIncidenciaClick(Sender: TObject);
  private
    { Private declarations }
    USERID : Integer;
    ADMINISTRADOR : String;

  public
    { Public declarations }
  end;

var
  xmainmenu: Txmainmenu;

implementation

{$R *.dfm}

uses login, manageusers, aulas, gestionequipos, gestionincidencias,
  altaincidencias;

procedure Txmainmenu.btnEquiposClick(Sender: TObject);
begin
    xmainmenu.Visible:=false;
    xgestionequipo.showmodal;
end;

procedure Txmainmenu.btnGestionAulasClick(Sender: TObject);
begin
      xmainmenu.Visible:=false;
      xAulas.showmodal;
end;

procedure Txmainmenu.btnIncidenciasClick(Sender: TObject);
begin
  xmainmenu.Visible:=false;
  xgestionIncidencias.showmodal;

end;

procedure Txmainmenu.btnNuevaIncidenciaClick(Sender: TObject);
begin
xaltaIncidencias.showmodal();
end;

procedure Txmainmenu.FormActivate(Sender: TObject);
var
  usertype : String;
begin

    USERID:=strtoint(lblid.Caption);

    ADMINISTRADOR := 'Admin';

    if xdatos.tUsuario.Locate('id',USERID) then
       begin
         usertype:=xdatos.tUsuariotipo.value;
       end;

       if usertype=ADMINISTRADOR then
       begin
         btnGestionAulas.Enabled:=true;
         btnEquipos.Enabled:=true;
         btnIncidencias.Enabled:=true;
       end;

end;

procedure Txmainmenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      xlogin.Visible:=True;
      xlogin.txtUsername.text:='';
      xlogin.txtPassword.text:='';
      btnGestionAulas.Enabled:=false;
      btnEquipos.Enabled:=false;
      btnIncidencias.Enabled:=false;
end;

procedure Txmainmenu.imgLogoutClick(Sender: TObject);
begin
    xlogin.Visible:=true;
    xlogin.txtUsername.text:='';
    xlogin.txtPassword.text:='';
    ModalResult:= mrok;
end;

procedure Txmainmenu.imgUserIconClick(Sender: TObject);
begin
    xmainmenu.Visible:=false;
    xmanageusers.showmodal;

end;

end.
