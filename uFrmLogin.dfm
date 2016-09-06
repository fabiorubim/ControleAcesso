object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Login'
  ClientHeight = 175
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblUser: TLabel
    Left = 48
    Top = 24
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object lblPassword: TLabel
    Left = 48
    Top = 70
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object edtUser: TEdit
    Left = 48
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPassWord: TEdit
    Left = 48
    Top = 89
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnAcessar: TButton
    Left = 32
    Top = 124
    Width = 75
    Height = 25
    Caption = '&Acessar'
    Default = True
    TabOrder = 2
    OnClick = btnAcessarClick
  end
  object btnSair: TButton
    Left = 113
    Top = 124
    Width = 75
    Height = 25
    Caption = '&Sair'
    ModalResult = 2
    TabOrder = 3
  end
end
