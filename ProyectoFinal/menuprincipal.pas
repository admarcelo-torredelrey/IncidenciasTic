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
    procedure imgLogoutClick(Sender: TObject);
    procedure imgUserIconClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGestionAulasClick(Sender: TObject);
    procedure btnEquiposClick(Sender: TObject);
    procedure btnIncidenciasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xmainmenu: Txmainmenu;

implementation

{$R *.dfm}

uses login, manageusers, aulas, gestionequipos, gestionincidencias;

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

procedure Txmainmenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      xlogin.Visible:=True;
      xlogin.txtUsername.text:='';
      xlogin.txtPassword.text:='';
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
