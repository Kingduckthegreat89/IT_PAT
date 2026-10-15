unit Settings_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmSettings = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblSettingsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

procedure TfrmSettings.lblSettingsClick(Sender: TObject);
begin
  showmessage('Not a setting, nor a button');
end;

end.
