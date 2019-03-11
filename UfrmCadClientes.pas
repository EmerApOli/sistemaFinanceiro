unit UfrmCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadCliente = class(TForm)
    lbCodigo: TLabel;
    lbNome: TLabel;
    lbdatacad: TLabel;
    lbSexo: TLabel;
    lbRua: TLabel;
    lbBairro: TLabel;
    lbCidade: TLabel;
    lbuf: TLabel;
    lbCep: TLabel;
    lbtelefone: TLabel;
    lbCpf: TLabel;
    lbRg: TLabel;
    lbdatanasc: TLabel;
    lbObser: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    ComboBox1: TComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    ComboBox2: TComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

{$R *.dfm}

end.
