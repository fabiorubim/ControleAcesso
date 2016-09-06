unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    edtUser: TEdit;
    lblUser: TLabel;
    lblPassword: TLabel;
    edtPassWord: TEdit;
    btnAcessar: TButton;
    btnSair: TButton;
    procedure btnAcessarClick(Sender: TObject);
  private
    { Private declarations }
    tentativas : SmallInt;

    function validLogin(const UserName,password:String):Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDmMain;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
begin
  if (edtUser.Text = '') then
  begin
    MessageDlg('O campo "Usuário" deve ser preenchido!',mtInformation,[mbOk],0);
    if (edtUser.CanFocus) then
      edtUser.SetFocus;
  end
  else
  if (edtPassWord.Text = '') then
  begin
    MessageDlg('O campo "Senha" deve ser preenchido!',mtInformation,[mbOk],0);
    if (edtPassWord.CanFocus) then
      edtPassWord.SetFocus;
  end
  else
  if validLogin(edtUser.Text,edtPassWord.Text) then
    ModalResult:=mrOk
  else
  begin
    Inc(tentativas);
    if tentativas < 3 then
    begin
      MessageDlg(Format('Tentativa %d de 3',[tentativas]),mtError,[mbOk],0);
      if edtPassWord.CanFocus then
        edtPassWord.SetFocus;
    end
    else
    begin
      MessageDlg(Format('%dª tentativa de acesso ao sistema.',[tentativas]) +
                        #13 + 'A aplicação será fechada!', mtError,[mbOk],0);
      ModalResult := mrCancel;
    end;
  end;
end;

function TfrmLogin.validLogin(const UserName, password: String): Boolean;
begin
  DmPrincipal.sqldataset.close;
  DmPrincipal.sqldataset.CommandText:='SELECT COUNT(*) FROM usuario WHERE username ='+QuotedStr(trim(edtUser.text)) +
                                      'AND password = '+ QuotedStr(trim(edtPassWord.text));
  DmPrincipal.sqldataset.open;

  Result:= DmPrincipal.sqldataset.recordcount > 0;

end;

end.
