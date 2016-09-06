object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = '::.Controle de Acesso.::'
  ClientHeight = 209
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnCadFuncionario: TButton
    Left = 48
    Top = 32
    Width = 161
    Height = 33
    Caption = '&Cadastro de Pessoal'
    TabOrder = 0
    OnClick = btnCadFuncionarioClick
  end
  object btnConsultaAcesso: TButton
    Left = 48
    Top = 96
    Width = 161
    Height = 33
    Caption = 'Consultar &Acesso'
    TabOrder = 1
    OnClick = btnConsultaAcessoClick
  end
  object btnCadastrarEmpresa: TButton
    Left = 48
    Top = 160
    Width = 161
    Height = 33
    Caption = 'Cadastrar &Empresa'
    TabOrder = 2
    OnClick = btnCadastrarEmpresaClick
  end
end
