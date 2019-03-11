object DM: TDM
  OldCreateOrder = False
  Height = 204
  Width = 375
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=bdlembretes'
      'Password=root'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 128
    Top = 32
  end
  object FDConnection1: TFDConnection
    Left = 40
    Top = 32
  end
end
