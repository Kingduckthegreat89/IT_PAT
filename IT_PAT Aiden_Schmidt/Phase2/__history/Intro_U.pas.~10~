unit Intro_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, GIFImg;

type
  TfrmIntro = class(TForm)
    imgIntro: TImage;

    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lblHintClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    tmrIntro :TTimer;
  public
    { Public declarations }
    procedure tmrIntroOnTimer(Sender: TObject);
  end;

var
  frmIntro: TfrmIntro;


implementation
uses
Main_U, conData;

{$R *.dfm}

procedure TfrmIntro.FormCreate(Sender: TObject);
begin
  (imgIntro.Picture.Graphic as TGIFImage).Animate := true;
  tmrIntro := TTimer.Create(self);
  with tmrIntro do
  begin
    Parent := self;
    Interval := 11000;
    OnTimer := tmrIntroOnTimer;
  end;
end;

procedure TfrmIntro.FormDestroy(Sender: TObject);
begin

//conData.dbmDatadb.conDatadb.Close;
//conData.dbmDatadb.tblItemsdb.Close;
//conData.dbmDatadb.tblOrdersdb.Close;
end;

procedure TfrmIntro.FormKeyPress(Sender: TObject; var Key: Char);
begin
frmIntro.Hide;
frmMain.Show;

tmrIntro.Free;

end;

procedure TfrmIntro.lblHintClick(Sender: TObject);
begin
Showmessage('This does nothing, just press a key.');
end;

procedure TfrmIntro.tmrIntroOnTimer(Sender: TObject);
begin
  imgIntro.Picture.LoadFromFile('./Intro.png');
  frmIntro.Hide;
  frmMain.Show;

  try
    tmrIntro.Free;    
  finally
  
  end;
  end;


end.
