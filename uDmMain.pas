unit uDmMain;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Data.DBXMySql, Data.DBXFirebird;

type
  TDmPrincipal = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQLDataSet: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPrincipal: TDmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
