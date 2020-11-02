unit Classe.Endereco;

interface

type
  TEndereco = class
  private
    FLogradouro: String;
    FBairro: String;
    FUF: String;
    FCEP: String;
    FNumero: String;
    FMunicipio: String;
    procedure SetBairro(const Value: String);
    procedure SetCEP(const Value: String);
    procedure SetLogradouro(const Value: String);
    procedure SetMunicipio(const Value: String);
    procedure SetNumero(const Value: String);
    procedure SetUF(const Value: String);
  public
    property Logradouro: String read FLogradouro write SetLogradouro;
    property Numero: String read FNumero write SetNumero;
    property Bairro: String read FBairro write SetBairro;
    property Municipio: String read FMunicipio write SetMunicipio;
    property CEP: String read FCEP write SetCEP;
    property UF: String read FUF write SetUF;
  end;

implementation

{ TEndereco }

procedure TEndereco.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TEndereco.SetCEP(const Value: String);
begin
  FCEP := Value;
end;

procedure TEndereco.SetLogradouro(const Value: String);
begin
  FLogradouro := Value;
end;

procedure TEndereco.SetMunicipio(const Value: String);
begin
  FMunicipio := Value;
end;

procedure TEndereco.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TEndereco.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
