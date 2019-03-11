object FrmCadCliente: TFrmCadCliente
  Left = 249
  Top = 128
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes'
  ClientHeight = 477
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 96
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 432
    Top = 8
    Width = 83
    Height = 13
    Caption = 'Data do Cadastro'
  end
  object Label4: TLabel
    Left = 16
    Top = 56
    Width = 20
    Height = 13
    Caption = 'Rua'
  end
  object Label5: TLabel
    Left = 320
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label6: TLabel
    Left = 496
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label7: TLabel
    Left = 560
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object Label8: TLabel
    Left = 16
    Top = 104
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label9: TLabel
    Left = 80
    Top = 104
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label10: TLabel
    Left = 208
    Top = 104
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label11: TLabel
    Left = 360
    Top = 104
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label12: TLabel
    Left = 488
    Top = 104
    Width = 16
    Height = 13
    Caption = 'RG'
  end
  object Label13: TLabel
    Left = 16
    Top = 152
    Width = 97
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object Label14: TLabel
    Left = 160
    Top = 152
    Width = 25
    Height = 13
    Caption = 'OBS.'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 65
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Codigo'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 24
    Width = 321
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Nome'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 432
    Top = 24
    Width = 113
    Height = 24
    CharCase = ecUpperCase
    DataField = 'DataCadastro'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 72
    Width = 289
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Rua'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 320
    Top = 72
    Width = 161
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Bairro'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 496
    Top = 72
    Width = 137
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Cidade'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBComboBox1: TDBComboBox
    Left = 560
    Top = 24
    Width = 73
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Sexo'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 3
  end
  object DBComboBox2: TDBComboBox
    Left = 16
    Top = 120
    Width = 49
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Estado'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 80
    Top = 120
    Width = 113
    Height = 24
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 208
    Top = 120
    Width = 137
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Fone'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 360
    Top = 120
    Width = 113
    Height = 24
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit10: TDBEdit
    Left = 488
    Top = 120
    Width = 145
    Height = 24
    CharCase = ecUpperCase
    DataField = 'RG'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBEdit11: TDBEdit
    Left = 16
    Top = 168
    Width = 129
    Height = 24
    CharCase = ecUpperCase
    DataField = 'DataNascimento'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit12: TDBEdit
    Left = 160
    Top = 168
    Width = 473
    Height = 24
    CharCase = ecUpperCase
    DataField = 'Obs'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 617
    Height = 169
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BtnNovo: TFlatButton
    Left = 8
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Novo'
    TabOrder = 15
    OnClick = BtnNovoClick
  end
  object BtnSalvar: TFlatButton
    Left = 100
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Salvar'
    TabOrder = 16
    OnClick = BtnSalvarClick
  end
  object BtnCancelar: TFlatButton
    Left = 192
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 17
    OnClick = BtnCancelarClick
  end
  object BtnDeletar: TFlatButton
    Left = 284
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Deletar'
    TabOrder = 18
    OnClick = BtnDeletarClick
  end
  object BtnAlterar: TFlatButton
    Left = 376
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Alterar'
    TabOrder = 19
    OnClick = BtnAlterarClick
  end
  object BtnLocalizar: TFlatButton
    Left = 468
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Localizar'
    TabOrder = 20
    OnClick = BtnLocalizarClick
  end
  object BtnFechar: TFlatButton
    Left = 560
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 21
    OnClick = BtnFecharClick
  end
  object DBNavigator1: TDBNavigator
    Left = 408
    Top = 400
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 22
  end
  object DtSrc: TDataSource
    DataSet = Dm.TBCliente
    Left = 600
    Top = 360
  end
end
