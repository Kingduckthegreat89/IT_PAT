unit Main_U;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, jpeg;

type
  TfrmMain = class(TForm)
    lblTitle: TLabel;
    btnAdmStart: TButton;
    btnUsrStart: TButton;
    btnSettings: TButton;
    btnMurderMyApp: TButton;
    Image1: TImage;
    procedure btnMurderMyAppClick(Sender: TObject);
    procedure btnUsrStartClick(Sender: TObject);
    procedure btnAdmStartClick(Sender: TObject);
    procedure btnSettingsClick(Sender: TObject);
    procedure lblTitleClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CloseApp;
  end;
  var
    frmMain :TfrmMain;

implementation
uses
Intro_U, usrStart_U, admStart_U, Settings_U;

{$R *.dfm}

procedure TfrmMain.btnAdmStartClick(Sender: TObject);
begin
frmAdmMenu.Show;
Hide;
end;

procedure TfrmMain.btnMurderMyAppClick(Sender: TObject);
var
 iQuit :integer;
begin
 iQuit := MessageDlg('Are you sure you want to quit?', mtConfirmation, mbYesNo, 0);
 if iQuit = 6 then
  Application.Terminate;

end;

procedure TfrmMain.btnSettingsClick(Sender: TObject);
begin
frmSettings.Show;
Hide;
end;

procedure TfrmMain.btnUsrStartClick(Sender: TObject);
begin
frmUsrMenu.Show;
Hide;
end;

procedure TfrmMain.CloseApp;
var
 iQuit :integer;
begin
iQuit := MessageDlg('Are you sure you want to quit?', mtConfirmation, mbYesNo, 0);
 if iQuit = 6 then
  Application.Terminate;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
 iQuit :integer;
begin
iQuit := MessageDlg('Are you sure you want to quit?', mtConfirmation, mbYesNo, 0);
 if iQuit = 6 then
  Application.Terminate
  else
  CanClose := false;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  tfConfig :TextFile;
begin
  btnUsrStart.Hint := 'Takes you to the main menu for ordering and feedback';
end;

procedure TfrmMain.lblTitleClick(Sender: TObject);
var
 iRandom :integer;
begin
randomize;

irandom := random(30);
  case iRandom of
  0: showmessage('Away! Away!');
  1: showmessage('Is dit soos vir die restaurant? ~ Joshua');
  2: Showmessage('Ek gaan dit net tik, ek vertrou jou nie. ~ Joshua');
  3: Showmessage('Hold on, hold on, hold on. ~ Jean');
  4: Showmessage('EEEUGH, Hou op jou geel attacks doen! ~ Jean');
  5: Showmessage('Foul Beast!');
  6: Showmessage('Soos Go/Jo vs mnr.Kuna wees. ~ Joshua');
  7: Showmessage('Gaan jy net alles add wat ons se? ~ Joshua');
  8: Showmessage('Sit daai in Aiden!! ~ Jean');
  9: Showmessage('Ek dink ek gaan daai een Ao3 lees sodat jy dit add. ~Joshua');
  10: Showmessage('Ek will daai bigshot movie kyk. ~Joshua');
  11: Showmessage('Ja ~ Joshua');
  12: Showmessage('Ek wil so vinnig as moontlik my code klaar maak sodat ek games kan speel ~ Joshua');
  13: Showmessage('Ek gaan ~ Liam');
  14: ShowMessage('Damn ~ Joshua');
  15: Showmessage('Joshua ~ Joshua');
  16: SHowmessage('MMMMM ~ Other Joshua');
  17: Showmessage('No, I wanna think of something ~ Other Joshua');
  18: Showmessage('Why ~ Other Joshua');
  19: Showmessage('Vra mr.G vir n quote x5 ~ Joshua');
  20: Showmessage('Wat het jy jou table genoem? ~ Liam');
  21: Showmessage('Shalom ~ Liam');
  22: Showmessage('Ek moet lock in vir die quote ~ Lin-Roy');
  23: Showmessage('Gang, Gang ~ Lin-Roy');
  24: Showmessage('Maak ene van Jaco wat se Zambak ~ Joshua');
  end;
end;


end.
