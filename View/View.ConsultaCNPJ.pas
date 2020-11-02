unit View.ConsultaCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Classe.PessoaJuridica, Controller.ConsultaCNPJ, System.RTTI;

type
  TFConsultaCNPJ = class(TForm)
    edtCNPJ: TEdit;
    btnConsultaCNPJ: TButton;
    Label1: TLabel;
    mmoConsulta: TMemo;
    procedure btnConsultaCNPJClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaCNPJ: TFConsultaCNPJ;

implementation

{$R *.dfm}

procedure TFConsultaCNPJ.btnConsultaCNPJClick(Sender: TObject);
var
  RttiType: TRttiType;
  RttiProp: TRttiProperty;
  RttiContext: TRttiContext;
  consultaCNPJ: TConsultaCNPJ;
  pessoaJuridica: TPessoaJuridica;
begin
  if String.IsNullOrEmpty(edtCNPJ.Text) then
    Exit;

  RttiContext  := TRttiContext.Create;
  consultaCNPJ := TConsultaCNPJ.Create;
  RttiType     := RttiContext.GetType(TPessoaJuridica.ClassInfo);
  try
    mmoConsulta.Lines.Clear;
    pessoaJuridica := consultaCNPJ.Consultar(edtCNPJ.Text);

    for RttiProp in RttiType.GetProperties do
      mmoConsulta.Lines.Add(RttiProp.Name + ': ' + VarToStr(RttiProp.GetValue(pessoaJuridica).AsVariant));
  finally
    RttiType.Free;
    RttiProp.Free;
    RttiContext.Free;
    consultaCNPJ.Free;
    pessoaJuridica.Free;
  end;
end;

end.
