object FConsultaCNPJ: TFConsultaCNPJ
  Left = 0
  Top = 0
  Caption = 'Consulta de CNPJ'
  ClientHeight = 548
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1027
    Height = 46
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de CNPJ'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object edtCNPJ: TEdit
    Left = 0
    Top = 52
    Width = 1033
    Height = 29
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Digite o CNPJ'
    ExplicitLeft = 8
    ExplicitTop = 46
    ExplicitWidth = 539
  end
  object btnConsultaCNPJ: TButton
    Left = 0
    Top = 81
    Width = 1033
    Height = 41
    Align = alTop
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnConsultaCNPJClick
    ExplicitTop = 72
    ExplicitWidth = 770
  end
  object mmoConsulta: TMemo
    Left = 0
    Top = 122
    Width = 1033
    Height = 426
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    ExplicitTop = 113
    ExplicitHeight = 435
  end
end
