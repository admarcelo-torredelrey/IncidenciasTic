unit informeaulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, QRCtrls, Vcl.ExtCtrls,datos,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TxInformeAulas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    lblTitulo: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xInformeAulas: TxInformeAulas;

implementation

{$R *.dfm}


end.
