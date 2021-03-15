unit manageusers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,menuprincipal,datos;

type
  Txmanageusers = class(TForm)
    lblChangePassword: TLabel;
    txtNewPassword: TEdit;
    lblNewPassword: TLabel;
    chbxVisible: TCheckBox;
    btnChangePassword: TButton;
    lblSelectUser: TLabel;
    cbxUsuarios: TComboBox;
    lblDeleteUser: TLabel;
    lblCreateUser: TLabel;
    lblUserName: TLabel;
    txtUsername: TEdit;
    lblTipo: TLabel;
    cbxTipo: TComboBox;
    btnCreateUser: TButton;
    lblSelectUserDelete: TLabel;
    cbxDeleteUser: TComboBox;
    btnBorrar: TButton;
    btnVolver: TButton;
    procedure chbxVisibleClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lblChangePasswordClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChangePasswordClick(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure lblCreateUserClick(Sender: TObject);
    procedure lblDeleteUserClick(Sender: TObject);
    procedure btnBorrarClick(Sender: TObject);
    procedure btnCreateUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xmanageusers: Txmanageusers;
  USERID : Integer;
  ADMINISTRADOR : String;
  USERTYPE : String;

implementation

{$R *.dfm}

procedure Txmanageusers.btnBorrarClick(Sender: TObject);
begin

      if xdatos.tUsuario.Locate('username',cbxDeleteUser.Text) then
      begin
          if xdatos.tUsuarioid.Value=USERID then
          begin
            ShowMessage('No puedes eliminar el usuario con el que estas conectado');
          end
          else
          begin
            xdatos.tUsuario.Delete;
            ShowMessage('Usuario Borrado correctamente');


            cbxDeleteUser.Items.Clear;

            xdatos.tUsuario.First;

            //relleno el combobox con los usuarios

            while not xdatos.tUsuario.Eof do
              begin
                cbxDeleteUser.Items.Add(xdatos.tUsuariousername.Value);
                xdatos.tUsuario.Next;
              end;

            cbxDeleteUser.ItemIndex:=0;

          end;



      end
      else
      begin
        ShowMessage('El usuario seleccionado ha sido eliminado externamente.Pongase en contacto con el tecnico de la base de datos');
      end;




end;

procedure Txmanageusers.btnChangePasswordClick(Sender: TObject);
begin
        ///Si el usuario es administrador selecciona el usuario y cambia la contraseña si cumple los requisitos
    if USERTYPE=ADMINISTRADOR then
    begin
          if (txtNewPassword.Text='') or (Length(txtNewPassword.Text)<8) then
          begin
                ShowMessage('La contraseña no puede estar vacia, ni ser menos a 8 caracteres');
          end
          else
          begin
                if xdatos.tUsuario.Locate('username',cbxUsuarios.Text) then
                begin
                  xdatos.tUsuario.Edit;
                  xdatos.tUsuariopassword.Value:=txtNewPassword.Text;
                  xdatos.tUsuario.Post;

                  ShowMessage('Se ha actualizado la contraseña del usuario '+xdatos.tUsuariousername.Value);
                end
                else
                begin
                  ShowMessage('El usuario seleccionado ha sido eliminado externamente.Pongase en contacto con el tecnico de la base de datos');
                end;
          end;
    end



    //Si no es administrador cambia su propia contraseña si cumple los requisitos
    else
    begin
        if (txtNewPassword.Text='') or (Length(txtNewPassword.Text)<8) then
        begin
            ShowMessage('La contraseña no puede estar vacia, ni ser menos a 8 caracteres');
        end
        else
        begin
            if xdatos.tUsuario.Locate('id',USERID) then
            begin
              xdatos.tUsuario.Edit;
              xdatos.tUsuariopassword.Value:=txtNewPassword.Text;
              xdatos.tUsuario.Post;

              ShowMessage('Se ha actualizado la contraseña del usuario '+xdatos.tUsuariousername.Value);

            end
            else
            begin
                 ShowMessage('El usuario actual ha sido eliminado externamente.Pongase en contacto con el técnico de la base de datos');
            end;


        end;


    end;
    txtNewPassword.Text:='';
end;

procedure Txmanageusers.btnCreateUserClick(Sender: TObject);
begin
        if xdatos.tUsuario.Locate('username',txtUsername.Text) then
        begin
          ShowMessage('Ya existe un usuario con ese nombre, indique otro');
        end
        else
        begin


            xdatos.tUsuario.Append;
            xdatos.tUsuariousername.Value:=txtUsername.Text;
            xdatos.tUsuariotipo.Value:=cbxTipo.Text;
            xdatos.tUsuario.Post;

            ShowMessage('El usuario '+txtUsername.Text+' ha sido creado correctamente');


        end;
end;

procedure Txmanageusers.btnVolverClick(Sender: TObject);
begin
      ModalResult:=mrok;
end;

procedure Txmanageusers.chbxVisibleClick(Sender: TObject);
begin

    // si está seleccionado muestro la contraseña, si no la oculto.
    if chbxVisible.Checked then
    begin
          txtNewPassword.PasswordChar:= #0;
    end
    else
    begin
          txtNewPassword.PasswordChar:= '*';
    end;
end;

procedure Txmanageusers.FormActivate(Sender: TObject);
begin
     USERID:=strtoint(xmainmenu.lblid.caption);

     //Lo voy a usar mas veces, para no equivocarme al escribirlo
     ADMINISTRADOR := 'Admin';



       if xdatos.tUsuario.Locate('id',USERID) then
       begin
         usertype:=xdatos.tUsuariotipo.value;
       end;


       //Si el usuario es administrador, se habilita el seleccionar usuario
       if usertype=ADMINISTRADOR then
       begin
         lblCreateUser.Visible:=true;
         lblDeleteUser.Visible:=true;
       end;



end;

procedure Txmanageusers.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    xmainmenu.Visible:=true;
    txtNewPassword.Visible:=false;
    lblNewPassword.Visible:=false;
    chbxVisible.Visible:=false;
    btnChangePassword.Visible:=false;
    lblSelectUser.Visible:=false;
    cbxUsuarios.Visible:=false;
    lblDeleteUser.Visible:=false;
    cbxDeleteUser.Visible:=false;
    btnBorrar.Visible:=false;
    lblUserName.Visible:=false;
    lblTipo.Visible:=false;
    txtUsername.Visible:=false;
    cbxTipo.Visible:=false;
    btnCreateUser.Visible:=false;
    lblCreateUser.Visible:=false;

end;

procedure Txmanageusers.lblChangePasswordClick(Sender: TObject);
var

locateSuccess : Boolean;
begin
      //visualizamos los componentes para cambiar la contraseña
       txtNewPassword.Visible:=true;
       lblNewPassword.Visible:=true;
       chbxVisible.Visible:=true;
       btnChangePassword.Visible:=true;

       //Comprobamos que el usuario existe, no vaya a ser que se haya borrado en ejecución y dé algun fallo

       locateSuccess:=xdatos.tUsuario.Locate('id',USERID);

       if locateSuccess then
       begin
         usertype:=xdatos.tUsuariotipo.value;
       end;


       //Si el usuario es administrador, se habilita el seleccionar usuario
       if usertype=ADMINISTRADOR then
       begin
            lblSelectUser.Visible:=true;
            cbxUsuarios.Visible:=true;

            cbxUsuarios.Items.Clear;

            xdatos.tUsuario.First;

            //relleno el combobox con los usuarios

            while not xdatos.tUsuario.Eof do
            begin
              cbxUsuarios.Items.Add(xdatos.tUsuariousername.Value);
              xdatos.tUsuario.Next;
            end;

            cbxUsuarios.ItemIndex:=0;

       end;


end;

procedure Txmanageusers.lblCreateUserClick(Sender: TObject);
begin
      lblUserName.Visible:=true;
      lblTipo.Visible:=true;
      txtUsername.Visible:=true;
      cbxTipo.Visible:=true;
      btnCreateUser.Visible:=true;

      xdatos.tTipoUsuarios.open;


      cbxTipo.items.Clear;
      xdatos.tTipoUsuarios.First;

      while not xdatos.tTipoUsuarios.Eof do
      begin
          cbxTipo.Items.Add(xdatos.tTipoUsuariostipo.Value);
          xdatos.tTipoUsuarios.Next;

      end;

      cbxTipo.ItemIndex:=0;


      xdatos.tTipoUsuarios.Close;
end;

procedure Txmanageusers.lblDeleteUserClick(Sender: TObject);
begin
      lblDeleteUser.Visible:=true;
      cbxDeleteUser.Visible:=true;
      btnBorrar.Visible:=true;


       cbxDeleteUser.Items.Clear;

       xdatos.tUsuario.First;

       //relleno el combobox con los usuarios

       while not xdatos.tUsuario.Eof do
       begin
        cbxDeleteUser.Items.Add(xdatos.tUsuariousername.Value);
        xdatos.tUsuario.Next;
       end;

       cbxDeleteUser.ItemIndex:=0;


end;

end.
