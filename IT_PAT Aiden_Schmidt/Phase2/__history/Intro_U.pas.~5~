unit Intro_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls;

type
  TfrmIntro = class(TForm)
    Image1: TImage;
    lblHint: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lblHintClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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

end.
