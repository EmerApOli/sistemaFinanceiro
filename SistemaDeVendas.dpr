program SistemaDeVendas;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form2},
  uBaseDAO in 'DAO\uBaseDAO.pas',
  uDM in 'Model\uDM.pas' {DM: TDataModule},
  UCadastroClienteDAO in 'DAO\UCadastroClienteDAO.pas',
  UCliente in 'Model\UCliente.pas',
  UfrmCadClientes in 'UfrmCadClientes.pas' {FrmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  Application.Run;
end.
