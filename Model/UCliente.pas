unit uCliente;

interface

uses
  System.SysUtils;

Type
  TCliente = class
  private
    FTitulo: String;
    FDataHora: TDateTime;
    FDescricao: String;
    FIDLembrete: Integer;
    procedure SetDataHora(const Value: TDateTime);
    procedure SetDescricao(const Value: String);
    procedure SetIDLembrete(const Value: Integer);
    procedure SetTitulo(const Value: String);
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
    property IDLembrete: Integer read FIDLembrete write SetIDLembrete;
    property Titulo: String read FTitulo write SetTitulo;
    property Descricao: String read FDescricao write SetDescricao;
    property DataHora: TDateTime read FDataHora write SetDataHora;
  published
    { published declarations }
  end;

implementation

{ TLembrete }

constructor TCliente.Create;
begin
  FIDLembrete := 0;
  FTitulo     := '';
  FDescricao  := '';
  FDataHora   := EncodeDate(1900,1,1);
end;

procedure TCliente.SetDataHora(const Value: TDateTime);
begin
  FDataHora := Value;
end;

procedure TCliente.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TCliente.SetIDLembrete(const Value: Integer);
begin
  FIDLembrete := Value;
end;

procedure TCliente.SetTitulo(const Value: String);
begin
  FTitulo := Value;
end;

end.
