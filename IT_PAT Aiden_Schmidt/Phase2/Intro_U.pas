unit Intro_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, GIFImg;

type
  TfrmIntro = class(TForm)
    lblHint: TLabel;
    imgIntro: TImage;
    Timer1: TTimer;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lblHintClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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
//(imgIntro.Picture.Graphic as TGIFImage).AnimationSpeed := 100;
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

end;

procedure TfrmIntro.lblHintClick(Sender: TObject);
begin
Showmessage('This does nothing, just press a key.');
end;

procedure TfrmIntro.Timer1Timer(Sender: TObject);
begin
imgIntro.Picture.LoadFromFile('./Intro.png');
end;

end.
