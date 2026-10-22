unit Settings_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CheckLst, ComCtrls, jpeg;

type
  TfrmSettings = class(TForm)
    pcSettings: TPageControl;
    tsNormalSettings: TTabSheet;
    tsSecretSettings: TTabSheet;
    imgNormal: TImage;
    imgSecret: TImage;
    lblBackground: TLabel;
    lblIntro: TLabel;
    lblSave: TLabel;
    lblExit: TLabel;
    lblNext: TLabel;
    lblSecretMenu: TLabel;
    edtCodes: TEdit;
    lblExitButSecret: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblNextClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations}

  end;

var
  frmSettings: TfrmSettings;


implementation
uses
Main_U, Intro_U, usrStart_U, admStart_U;

{$R *.dfm}


procedure TfrmSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caHide;
 frmMain.Show;
end;


procedure TfrmSettings.Label1Click(Sender: TObject);
begin
  pcSettings.ActivePage := tsNormalSettings;
end;

procedure TfrmSettings.lblNextClick(Sender: TObject);
begin
pcSettings.ActivePage := tsSecretSettings;
end;

end.
