unit CadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, DB, Grids, DBGrids, IBCustomDataSet,
  TFlatButtonUnit, ExtCtrls;

type
  TFrmCadCliente = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    DtSrc: TDataSource;
    DBGrid1: TDBGrid;
    BtnNovo: TFlatButton;
    BtnSalvar: TFlatButton;
    BtnCancelar: TFlatButton;
    BtnDeletar: TFlatButton;
    BtnAlterar: TFlatButton;
    BtnLocalizar: TFlatButton;
    BtnFechar: TFlatButton;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLocalizarClick(Sender: TObject);
    
  private
    { Private declarations }
  public
        procedure Habilitar;
        procedure Desabilitar;
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

uses Modulo, Procurar, Principal;

{$R *.dfm}

procedure TFrmCadCliente.Habilitar;
begin
DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit8.Enabled:=True;
DBEdit9.Enabled:=True;
DBEdit10.Enabled:=True;
DBEdit11.Enabled:=True;
DBEdit12.Enabled:=True;
DBComboBox1.Enabled:=True;
DBComboBox2.Enabled:=True;

end;

procedure TFrmCadCliente.Desabilitar;
begin
DBEdit1.Enabled:=False;
DBEdit2.Enabled:=False;
DBEdit3.Enabled:=False;
DBEdit4.Enabled:=False;
DBEdit5.Enabled:=False;
DBEdit6.Enabled:=False;
DBEdit7.Enabled:=False;
DBEdit8.Enabled:=False;
DBEdit9.Enabled:=False;
DBEdit10.Enabled:=False;
DBEdit11.Enabled:=False;
DBEdit12.Enabled:=False;
DBComboBox1.Enabled:=False;
DBComboBox2.Enabled:=False;

end;

procedure TFrmCadCliente.FormShow(Sender: TObject);
begin
Desabilitar;
DtSrc.DataSet.Open;
BtnNovo.Enabled:=True;
BtnSalvar.Enabled:=False;
BtnCancelar.Enabled:=False;
BtnDeletar.Enabled:=True;
BtnAlterar.Enabled:=True;
BtnLocalizar.Enabled:=True;
BtnFechar.Enabled:=True;
end;

procedure TFrmCadCliente.BtnNovoClick(Sender: TObject);
begin
DtSrc.DataSet.Append;
Habilitar;
DBEdit1.SetFocus;
BtnNovo.Enabled:=False;
BtnSalvar.Enabled:=True;
BtnCancelar.Enabled:=True;
BtnDeletar.Enabled:=False;
BtnAlterar.Enabled:=False;
BtnLocalizar.Enabled:=False;
BtnFechar.Enabled:=False;
end;

procedure TFrmCadCliente.BtnSalvarClick(Sender: TObject);
begin
If Not(Dm.BTComercial.InTransaction) Then
   Dm.BTComercial.StartTransaction;
   DtSrc.DataSet.Post;
   (DtSrc.DataSet as TIBDataSet).ApplyUpdates;
   Dm.BTComercial.CommitRetaining;
MessageDlg('Cliente Salvo com Sucesso!', mtConfirmation, [mbOk], 0);
Desabilitar;
BtnNovo.Enabled:=True;
BtnSalvar.Enabled:=False;
BtnCancelar.Enabled:=False;
BtnDeletar.Enabled:=True;
BtnAlterar.Enabled:=True;
BtnLocalizar.Enabled:=True;
BtnFechar.Enabled:=True;
end;

procedure TFrmCadCliente.BtnCancelarClick(Sender: TObject);
begin
DtSrc.DataSet.Cancel;
Desabilitar;
BtnNovo.Enabled:=True;
BtnSalvar.Enabled:=False;
BtnCancelar.Enabled:=False;
BtnDeletar.Enabled:=True;
BtnAlterar.Enabled:=True;
BtnLocalizar.Enabled:=True;
BtnFechar.Enabled:=True;
end;

procedure TFrmCadCliente.BtnDeletarClick(Sender: TObject);
begin
If Not(DtSrc.DataSet.RecordCount>0) Then Exit;
If MessageDlg('Deseja Excluir Esse Cliente?', mtConfirmation, [mbYes, mbNo], 0)= mrYes Then
begin
  DtSrc.DataSet.Delete;
end
end;

procedure TFrmCadCliente.BtnAlterarClick(Sender: TObject);
begin
Habilitar;
BtnNovo.Enabled:=False;
BtnSalvar.Enabled:=True;
BtnCancelar.Enabled:=True;
BtnDeletar.Enabled:=False;
BtnAlterar.Enabled:=False;
BtnLocalizar.Enabled:=False;
BtnFechar.Enabled:=False;
end;

procedure TFrmCadCliente.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCadCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtSrc.DataSet.Close;
end;

procedure TFrmCadCliente.BtnLocalizarClick(Sender: TObject);
var
 vSql: String;
 Ts: TStrings;
begin
 // inherited;
 vSql:='SELECT CODIGO, NOME, RUA, BAIRRO, FONE';
 vSql:=vSql+' FROM TBCLINTES';
 vSql:=vSql+' WHERE NOME LIKE :NOME ORDER BY NOME';
 Ts:=TStringList.Create;
 Ts.Add('Código');
 Ts.Add('Nome do Cliente');
 Ts.Add('Rua');
 Ts.Add('Bairro');
 Ts.Add('Telefone');

  FrmProcurar:=TFrmProcurar.Create(Self);
 try
  FrmProcurar.ShowModal;
  FrmProcurar.LblProcurar.Caption:='Nome do Cliente';
 finally
  Ts.Free;
  FrmProcurar.Free;
 end;
end;

end.
