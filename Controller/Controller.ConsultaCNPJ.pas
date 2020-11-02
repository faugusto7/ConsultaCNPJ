unit Controller.ConsultaCNPJ;

interface

uses System.SysUtils, REST.Client, Classe.PessoaJuridica, Callout.API, REST.Json;

type
  TConsultaCNPJ = class
  public
    function Consultar(sCNPJ: String): TPessoaJuridica;
  end;

implementation

{ TConsultaCNPJ }

function TConsultaCNPJ.Consultar(sCNPJ: String): TPessoaJuridica;
var
  paramsList: TRESTRequestParameterList;
  callCNPJ: TCallout;
  httpResponse: TRESTResponse;
  pessoaJuridica: TPessoaJuridica;
begin
  callCNPJ   := TCallout.Create('https://www.receitaws.com.br/', 'v1/cnpj/{cnpj}');
  paramsList := TRESTRequestParameterList.Create(nil);
  try
    paramsList.AddUrlSegment('cnpj', Trim(sCNPJ));
    httpResponse := callCNPJ.sendRequest(paramsList);
    pessoaJuridica := TJson.JsonToObject<TPessoaJuridica>(httpResponse.Content);

    Result := pessoaJuridica;
  finally
    callCNPJ.Free;
    paramsList.Free;
    httpResponse.Free;
  end;
end;

end.
