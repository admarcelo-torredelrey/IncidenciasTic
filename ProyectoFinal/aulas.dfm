object xAulas: TxAulas
  Left = 0
  Top = 0
  Caption = 'Gesti'#243'n De Aulas'
  ClientHeight = 382
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object gridAulas: TDBGrid
    Left = 64
    Top = 40
    Width = 569
    Height = 161
    DataSource = xdatos.dtAulas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object navegador: TDBNavigator
    Left = 64
    Top = 207
    Width = 536
    Height = 74
    DataSource = xdatos.dtAulas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
end
