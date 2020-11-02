program ConsultaCNPJ;

uses
  Vcl.Forms,
  View.ConsultaCNPJ in 'View\View.ConsultaCNPJ.pas' {FConsultaCNPJ},
  Classe.PessoaJuridica in 'Model\Classe.PessoaJuridica.pas',
  Classe.Endereco in 'Model\Classe.Endereco.pas',
  Callout.API in 'Service\Callout.API.pas',
  Controller.ConsultaCNPJ in 'Controller\Controller.ConsultaCNPJ.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFConsultaCNPJ, FConsultaCNPJ);
  Application.Run;
end.
