unit Classe.PessoaJuridica;

interface

type
  TPessoaJuridica = class
  private
    FLogradouro: string;
    FData_Situacao_Especial: string;
    FCapital_Social: string;
    FFantasia: string;
    FCnpj: string;
    FEmail: string;
    FBairro: string;
    FData_Situacao: string;
    FUf: string;
    FUltima_Atualizacao: TDateTime;
    FSituacao_Especial: string;
    FCep: string;
    FNumero: Boolean;
    FEfr: string;
    FNatureza_Juridica: string;
    FMotivo_Situacao: string;
    FStatus: string;
    FMunicipio: string;
    FAbertura: string;
    FSituacao: string;
    FComplemento: string;
    FNome: string;
    FTipo: string;
    FTelefone: string;
    FPorte: string;
  public
    property Abertura: string read FAbertura write FAbertura;
    property Bairro: string read FBairro write FBairro;
    property Capital_Social: string read FCapital_Social write FCapital_Social;
    property Cep: string read FCep write FCep;
    property Cnpj: string read FCnpj write FCnpj;
    property Complemento: string read FComplemento write FComplemento;
    property Data_Situacao: string read FData_Situacao write FData_Situacao;
    property Data_Situacao_Especial: string read FData_Situacao_Especial write FData_Situacao_Especial;
    property Efr: string read FEfr write FEfr;
    property Email: string read FEmail write FEmail;
    property Fantasia: string read FFantasia write FFantasia;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Motivo_Situacao: string read FMotivo_Situacao write FMotivo_Situacao;
    property Municipio: string read FMunicipio write FMunicipio;
    property Natureza_Juridica: string read FNatureza_Juridica write FNatureza_Juridica;
    property Nome: string read FNome write FNome;
    property Numero: Boolean read FNumero write FNumero;
    property Porte: string read FPorte write FPorte;
    property Situacao: string read FSituacao write FSituacao;
    property Situacao_Especial: string read FSituacao_Especial write FSituacao_Especial;
    property Status: string read FStatus write FStatus;
    property Telefone: string read FTelefone write FTelefone;
    property Tipo: string read FTipo write FTipo;
    property Uf: string read FUf write FUf;
    property Ultima_Atualizacao: TDateTime read FUltima_Atualizacao write FUltima_Atualizacao;
  end;

implementation

end.
