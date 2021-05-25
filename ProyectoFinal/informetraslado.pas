unit informetraslado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  Txinformetraslado = class(TForm)
    qrTraslado: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    lblTitulo: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    lblOrigen: TQRLabel;
    lblDestino: TQRLabel;
    lblFecha: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xinformetraslado: Txinformetraslado;

implementation

{$R *.dfm}

end.
