unit UCadastroClienteDAO;

interface

uses  classes, DB, SysUtils, generics.defaults,
     generics.collections, Dialogs, uDM, uBaseDAO, FireDAC.Comp.Client,UCliente;

type
  TClienteDAO = class(TBaseDAO)
  private
    FListaCliente: TObjectList<TCliente>;
    procedure PreencherColecao(Ds: TFDQuery);
  public
    constructor Create;
    destructor Destroy; override;
    function Inserir(pLembrete: TCliente): Boolean;
    function Deletar(pLembrete: TCliente): Boolean;
    function Alterar(pLembrete: TCliente): Boolean;
    function ListarPorTitulo_Descricao(pConteudo: String): TObjectList<TCliente>;
  end;

implementation

constructor TClienteDAO.Create;
begin
  inherited;
  FListaCliente := TObjectList<TCliente>.Create;
end;

destructor TClienteDAO.Destroy;
begin
  try
    inherited;
    if Assigned(FListaCliente) then
      FreeAndNil(FListaCliente);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

function TClienteDAO.Inserir(pLembrete: TCliente): Boolean;
var
  Sql: String;
begin
  Sql := ' INSERT INTO Lembrete (Titulo, Descricao, DataHora) '+
         ' VALUES ( '+
                   QuotedStr(pLembrete.Titulo)    + ',' +
                   QuotedStr(pLembrete.Descricao) + ',' +
                   QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm', pLembrete.DataHora)) +
                   ')';
  Result := ExecutarComando(Sql) > 0;
end;

function TClienteDAO.Alterar(pLembrete: TCliente): Boolean;
var
  Sql: String;
begin
  Sql := ' UPDATE Lembrete     ' +
         '    SET Titulo     = ' + QuotedStr(pLembrete.Titulo)    + ', ' +
         '        Descricao  = ' + QuotedStr(pLembrete.Descricao) + ', '+
         '        DataHora   = ' + QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm', pLembrete.DataHora)) +
         '  WHERE IDLembrete = ' + IntToStr(pLembrete.IDLembrete);
  Result := ExecutarComando(Sql) > 0;
end;

function TClienteDAO.Deletar(pLembrete: TCliente): Boolean;
var
  Sql: String;
begin
  Sql := ' DELETE                                 '+
         '   FROM Lembrete                        '+
         '  WHERE IDLembrete = ' + IntToStr(pLembrete.IDLembrete) ;
  Result := ExecutarComando(Sql) > 0;
end;

function TClienteDAO.ListarPorTitulo_Descricao(pConteudo: String): TObjectList<TCliente>;
var
  Sql: String;
begin
  Result := Nil;
  Sql := ' SELECT C.IDLembrete, C.Titulo,             '+
         '        C.Descricao, C.DataHora             '+
         '   FROM Lembrete C                          ';
   if pConteudo = '' then
   begin
     Sql := Sql + ' WHERE C.DataHora >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', Now));
   end
   else
   begin
     Sql := Sql + '  WHERE C.Titulo    like ' + QuotedStr('%'+pConteudo+'%')+
                  '     OR C.Descricao like ' + QuotedStr('%'+pConteudo+'%');
   end;

   Sql := Sql + '  ORDER BY C.DataHora     ';
  _FQry := RetornarDataSet(Sql);

  if not (_FQry.IsEmpty) then
  begin
    PreencherColecao(_FQry);
    Result := FListaCliente;
  end;
end;

procedure TClienteDAO.PreencherColecao(Ds: TFDQuery);
var
  I: Integer;
begin
  I := 0;
  FListaCliente.Clear;
  while not Ds.eof do
  begin
    FListaCliente.Add(TCliente.Create);
    FListaCliente[I].IDLembrete := Ds.FieldByName('IDLembrete').AsInteger;
    FListaCliente[I].Titulo     := Ds.FieldByName('Titulo'    ).AsString;
    FListaCliente[I].Descricao  := Ds.FieldByName('Descricao' ).AsString;
    FListaCliente[I].DataHora   := Ds.FieldByName('DataHora'  ).AsDateTime;
    Ds.Next;
    I := I + 1;
  end;
end;

end.
