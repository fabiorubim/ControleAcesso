program ControleAcesso;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uFrmLogin in 'uFrmLogin.pas' {frmLogin},
  SysUtils,
  Controls,
  uDmMain in 'uDmMain.pas' {DmPrincipal: TDataModule},
  uFrmBase in 'uFrmBase.pas' {frmBase},
  uFrmCadastroDePessoal in 'uFrmCadastroDePessoal.pas' {frmCadastroDePessoal},
  uFrmConsultarAcesso in 'uFrmConsultarAcesso.pas' {frmConsultarAcesso},
  uFrmCadastroDeEmpresa in 'uFrmCadastroDeEmpresa.pas' {frmCadastroDeEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDmPrincipal, DmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  if (frmLogin.ShowModal = mrOk) then
  begin
    FreeAndNil(frmLogin);
    Application.CreateForm(TfrmMain,frmMain);
    Application.Run;
  end
  else
  begin
    FreeAndNil(frmLogin);
    FreeAndNil(DmPrincipal);
    Application.Terminate;
  end;
end.
