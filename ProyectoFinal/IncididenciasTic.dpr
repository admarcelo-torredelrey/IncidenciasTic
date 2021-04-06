program IncididenciasTic;

uses
  Vcl.Forms,
  login in 'login.pas' {xlogin},
  datos in 'datos.pas' {xdatos},
  menuprincipal in 'menuprincipal.pas' {xmainmenu},
  manageusers in 'manageusers.pas' {xmanageusers},
  aulas in 'aulas.pas' {xAulas},
  altasaulas in 'altasaulas.pas' {xAltasAulas},
  gestionequipos in 'gestionequipos.pas' {xgestionequipo},
  trasladoequipo in 'trasladoequipo.pas' {xTraslado},
  gestionincidencias in 'gestionincidencias.pas' {xgestionIncidencias},
  altasequipo in 'altasequipo.pas' {xaltasEquipo},
  altaincidencias in 'altaincidencias.pas' {xaltaIncidencias},
  consultaraulas in 'consultaraulas.pas' {xconsultaraulas},
  consultarincidencias in 'consultarincidencias.pas' {xconsultarIncidencias};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Txlogin, xlogin);
  Application.CreateForm(Txdatos, xdatos);
  Application.CreateForm(Txmainmenu, xmainmenu);
  Application.CreateForm(Txmanageusers, xmanageusers);
  Application.CreateForm(TxAulas, xAulas);
  Application.CreateForm(TxAltasAulas, xAltasAulas);
  Application.CreateForm(Txgestionequipo, xgestionequipo);
  Application.CreateForm(TxTraslado, xTraslado);
  Application.CreateForm(TxgestionIncidencias, xgestionIncidencias);
  Application.CreateForm(TxaltasEquipo, xaltasEquipo);
  Application.CreateForm(TxaltaIncidencias, xaltaIncidencias);
  Application.CreateForm(Txconsultaraulas, xconsultaraulas);
  Application.CreateForm(TxconsultarIncidencias, xconsultarIncidencias);
  Application.Run;
end.
