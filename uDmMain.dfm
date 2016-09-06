object DmPrincipal: TDmPrincipal
  OldCreateOrder = False
  Height = 289
  Width = 441
  object SQLConnection: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=C:\Users\Fabio\Documents\GitHub\ControleAcesso\DB\contr' +
        'ole_acesso.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 48
    Top = 40
  end
  object SQLDataSet: TSQLDataSet
    CommandText = 'SELECT * FROM usuario'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 128
    Top = 40
  end
end
