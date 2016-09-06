unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnCadFuncionario: TButton;
    btnConsultaAcesso: TButton;
    btnCadastrarEmpresa: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadFuncionarioClick(Sender: TObject);
    procedure btnConsultaAcessoClick(Sender: TObject);
    procedure btnCadastrarEmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uFrmCadastroDePessoal, uFrmConsultarAcesso, uFrmCadastroDeEmpresa;

procedure TfrmMain.btnCadastrarEmpresaClick(Sender: TObject);
begin
  frmCadastroDePessoal := frmCadastroDePessoal.Create(Self);

  try
    frmCadastroDePessoal.ShowModal;
  finally
    FreeAndNil(frmCadastroDePessoal);
  end;
end;

procedure TfrmMain.btnCadFuncionarioClick(Sender: TObject);
begin
  frmCadastroDePessoal := TfrmCadastroDePessoal.Create(Self);

  try
    frmCadastroDePessoal.ShowModal;
  finally
    FreeAndNil(frmCadastroDePessoal);
  end;
end;

procedure TfrmMain.btnConsultaAcessoClick(Sender: TObject);
begin
  frmConsultarAcesso:=TfrmConsultarAcesso.Create(Self);

  try
    frmConsultarAcesso.ShowModal;
  finally
    FreeAndNil(frmConsultarAcesso);
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
