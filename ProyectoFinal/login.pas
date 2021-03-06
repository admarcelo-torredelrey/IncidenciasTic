unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask;

type
  Txlogin = class(TForm)
    imgLoginIcon: TImage;
    txtUsername: TEdit;
    lblUsuario: TLabel;
    lblPassword: TLabel;
    txtPassword: TEdit;
    btnLogin: TButton;
    chbxPassword: TCheckBox;
    procedure btnLoginClick(Sender: TObject);
    procedure chbxPasswordClick(Sender: TObject);
    procedure txtPasswordChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xlogin: Txlogin;

implementation

{$R *.dfm}

uses datos, menuprincipal;

procedure Txlogin.btnLoginClick(Sender: TObject);
var
locateSuccess : Boolean;

begin
    xdatos.tUsuario.Open();
    //Comprueba que el usuario existe
    locateSuccess:=xdatos.tUsuario.Locate('username',txtUsername.Text);


    //Si existe prueba la contrase?a, si no indica un error
    if  locateSuccess then
    begin
      //si la contrase?a es correcta entra, si no indica un error
        if xdatos.tUsuariopassword.Value = txtPassword.Text then
        begin
          xlogin.Visible:=false;
          xmainmenu.lblid.Caption:=inttostr(xdatos.tUsuarioid.Value);
          xmainmenu.showmodal;


        end
        else
        begin
          txtPassword.Color:=clRed;
          ShowMessage('La contrase?a no es correcta');

        end;
    end
    else
    begin
      ShowMessage('El usuario '+txtUsername.Text+' no existe');
    end;

end;





//Checkbox para dejar visible o invisible la contrase?a
procedure Txlogin.chbxPasswordClick(Sender: TObject);
begin

      // si est? marcado, lo volveremos visible
      if chbxPassword.Checked then
      begin
        txtPassword.PasswordChar:= #0;
      end
      else
      //si no lo est?, en invisible.
      begin
           txtPassword.PasswordChar:='*';
      end;

end;

procedure Txlogin.txtPasswordChange(Sender: TObject);
begin
txtPassword.Color:=clWindow;
end;

end.
