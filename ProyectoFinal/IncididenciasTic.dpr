program IncididenciasTic;

uses
  Vcl.Forms,
  login in 'login.pas' {xlogin},
  datos in 'datos.pas' {xdatos},
  menuprincipal in 'menuprincipal.pas' {xmainmenu},
  manageusers in 'manageusers.pas' {xmanageusers};


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Txlogin, xlogin);
  Application.CreateForm(Txdatos, xdatos);
  Application.CreateForm(Txmainmenu, xmainmenu);
  Application.CreateForm(Txmanageusers, xmanageusers);
  Application.Run;
end.