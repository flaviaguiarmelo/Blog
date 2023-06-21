object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 154
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 108
    Height = 13
    Caption = 'Estado do documento:'
  end
  object Label2: TLabel
    Left = 224
    Top = 24
    Width = 108
    Height = 13
    Caption = 'Estado do documento:'
  end
  object btnPublicarDocumento: TButton
    Left = 40
    Top = 88
    Width = 129
    Height = 25
    Caption = 'Publicar Documento'
    TabOrder = 0
    OnClick = btnPublicarDocumentoClick
  end
  object edtEstadoDocumento: TEdit
    Left = 40
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnPublicarDocumentoState: TButton
    Left = 224
    Top = 88
    Width = 153
    Height = 25
    Caption = 'Publicar Documento com State'
    TabOrder = 2
    OnClick = btnPublicarDocumentoStateClick
  end
  object edtEstadoDocumentoState: TEdit
    Left = 224
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
