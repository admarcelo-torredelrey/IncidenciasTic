unit informeequipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,datos, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  Txinformeequipo = class(TForm)
    informe: TQuickRep;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    lblTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xinformeequipo: Txinformeequipo;

implementation

{$R *.dfm}

end.
