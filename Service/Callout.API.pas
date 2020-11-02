unit Callout.API;

interface

uses REST.Client, IpPeerClient;

type
  TCallout = class
    private
      HttpClient: TRESTClient;
      HttpRequest: TRESTRequest;
      HttpResponse: TRESTResponse;
    public
      function sendRequest(paramsList: TRESTRequestParameterList): TRESTResponse;
      constructor Create(baseURL, resource: String);
      destructor Destroy;
  end;

implementation

{ TCallout }

constructor TCallout.Create(baseURL, resource: String);
begin
  HttpClient   := TRESTClient.Create(baseURL);
  HttpRequest  := TRESTRequest.Create(nil);
  HttpResponse := TRESTResponse.Create(nil);

  HttpRequest.Resource := resource;
  HttpRequest.Client   := HttpClient;
  HttpRequest.Response :=  HttpResponse;
end;

destructor TCallout.Destroy;
begin
  HttpClient.Free;
  HttpRequest.Free;
  HttpResponse.Free;
end;

function TCallout.sendRequest(paramsList: TRESTRequestParameterList): TRESTResponse;
begin
  HttpRequest.Params := paramsList;

  HttpRequest.Execute;
  Result := HttpResponse;
end;

end.
