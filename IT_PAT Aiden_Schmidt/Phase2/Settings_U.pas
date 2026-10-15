unit Settings_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CheckLst;

type
  TfrmSettings = class(TForm)
    lblSettings: TLabel;
    clbSettings: TCheckListBox;
    clbSecretSettings: TCheckListBox;
    btnSaveQuit: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblSettingsClick(Sender: TObject);
    procedure btnSaveQuitClick(Sender: TObject);
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

procedure TfrmSettings.btnSaveQuitClick(Sender: TObject);
begin
  MessageDlg('The config will be stored in the data directory that you can find in the same directory as the' +
             ' executable. There you can also edit the settings and the changes will apply once you reopen the app' +
             '.', mtInformation, mbOKCancel, 0);
end;

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
