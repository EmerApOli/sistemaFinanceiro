object FrmCadCliente: TFrmCadCliente
  Left = 0
  Top = 0
  Caption = 'FrmCadCliente'
  ClientHeight = 407
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 8
    Top = 37
    Width = 45
    Height = 13
    Caption = 'CODIGO:'
  end
  object lbNome: TLabel
    Left = 143
    Top = 37
    Width = 33
    Height = 13
    Caption = 'NOME:'
  end
  object lbdatacad: TLabel
    Left = 365
    Top = 37
    Width = 100
    Height = 13
    Caption = 'DATA NASCIMNETO:'
  end
  object lbSexo: TLabel
    Left = 616
    Top = 37
    Width = 30
    Height = 13
    Caption = 'SEXO:'
  end
  object lbRua: TLabel
    Left = 8
    Top = 117
    Width = 25
    Height = 21
    Caption = 'RUA:'
  end
  object lbBairro: TLabel
    Left = 158
    Top = 117
    Width = 43
    Height = 13
    Caption = 'BAIRRO:'
  end
  object lbCidade: TLabel
    Left = 302
    Top = 117
    Width = 42
    Height = 13
    Caption = 'CIDADE:'
  end
  object lbuf: TLabel
    Left = 159
    Top = 192
    Width = 17
    Height = 50
    Caption = 'UF:'
  end
  object lbCep: TLabel
    Left = 450
    Top = 117
    Width = 23
    Height = 13
    Caption = 'CEP:'
  end
  object lbtelefone: TLabel
    Left = 8
    Top = 192
    Width = 54
    Height = 13
    Caption = 'TELEFONE:'
  end
  object lbCpf: TLabel
    Left = 456
    Top = 192
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object lbRg: TLabel
    Left = 616
    Top = 117
    Width = 18
    Height = 13
    Caption = 'RG:'
  end
  object lbdatanasc: TLabel
    Left = 302
    Top = 192
    Width = 100
    Height = 13
    Caption = 'DATA NASCIMNETO:'
  end
  object lbObser: TLabel
    Left = 616
    Top = 192
    Width = 72
    Height = 13
    Caption = 'OBSERVACAO:'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 56
    Width = 45
    Height = 21
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 143
    Top = 56
    Width = 143
    Height = 21
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 365
    Top = 56
    Width = 178
    Height = 21
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 136
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 616
    Top = 56
    Width = 57
    Height = 21
    TabOrder = 4
    Text = 'ComboBox1'
  end
  object DBEdit5: TDBEdit
    Left = 158
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 302
    Top = 136
    Width = 142
    Height = 21
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 450
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 616
    Top = 136
    Width = 136
    Height = 21
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 8
    Top = 211
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object ComboBox2: TComboBox
    Left = 158
    Top = 211
    Width = 33
    Height = 21
    TabOrder = 10
    Text = 'ComboBox2'
  end
  object DBEdit10: TDBEdit
    Left = 302
    Top = 211
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object DBEdit11: TDBEdit
    Left = 456
    Top = 211
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object DBEdit12: TDBEdit
    Left = 616
    Top = 211
    Width = 136
    Height = 21
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 264
    Width = 705
    Height = 120
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
