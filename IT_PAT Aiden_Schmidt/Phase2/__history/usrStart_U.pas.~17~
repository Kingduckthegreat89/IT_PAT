unit usrStart_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, pngimage, ExtCtrls;

type
  TfrmUsrMenu = class(TForm)
    Label1: TLabel;
    btnOrderMen: TButton;
    btnFeedBack: TButton;
    btnClose: TButton;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure btnOrderMenClick(Sender: TObject);
    procedure btnFeedBackClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getFeedBackType (const sMessage: string): integer;
  end;

var
  frmUsrMenu: TfrmUsrMenu;

implementation
uses
Main_U, Orders_U, Settings_U;

{$R *.dfm}



procedure TfrmUsrMenu.btnFeedBackClick(Sender: TObject);
const
  sPositive :string = 'Positive';
  sNegative :string = 'Negative';
var
  iFeedBackType :integer;
  sName,sPosResponse, sNegResponse :string;
  tfFeedbackType :textfile;
begin
  iFeedBackType := getFeedBackType('What kind of feedback do you want to give?');

  case iFeedBackType of
    6:
      begin
        sName := inputbox('Name', 'Please enter your name', '');
        if sName = '' then
        begin
          showmessage('Please enter your name!');
          exit;
        end;

        sPosResponse := inputbox('Response box', 'Feedback: ', '');

        if NOT FileExists('./DATA/Feedback/Positive_feedback.txt') then
        begin
          AssignFile(tfFeedbackType, './DATA/Feedback/Positive_feedback.txt');
          rewrite(tfFeedbackType);
          Writeln(tfFeedbackType, 'Name/feedbacktype/feedback |');
          Writeln(tfFeedbackType, sName +  '/' + sPositive + '/' + sPosResponse + '|');

          CloseFile(tfFeedbackType);

        end
        else if FileExists('./DATA/Feedback/Positive_feedback.txt') then
        begin
          AssignFile(tfFeedbackType, './DATA/Feedback/Positive_feedback.txt' );
          Append(tfFeedbackType);
          Writeln(tfFeedbackType, sName, '/', sPositive, '/', sPosResponse, '|');

          CloseFile(tfFeedbackType);
        end;

      end;

    7:
      begin
       sName := inputbox('Name', 'Please enter your name', '');
        if sName = '' then
        begin
          showmessage('Please enter your name!');
          exit;
        end;

        sNegResponse := inputbox('Response box', 'Feedback: ', '');

        if NOT FileExists('./DATA/Feedback/Negative_feedback.txt') then
        begin
          AssignFile(tfFeedbackType, './DATA/Feedback/Negative_feedback.txt');
          rewrite(tfFeedbackType);
          Writeln(tfFeedbackType, 'Name/feedbacktype/feedback |');
          Writeln(tfFeedbackType, sName +  '/' + sNegative + '/' + sNegResponse + '|');

          CloseFile(tfFeedbackType);

        end
        else if FileExists('./DATA/Feedback/Negative_feedback.txt') then
        begin
          AssignFile(tfFeedbackType, './DATA/Feedback/Negative_feedback.txt' );
          Append(tfFeedbackType);
          Writeln(tfFeedbackType, sName, '/', sNegative, '/', sNegResponse, '|');

          CloseFile(tfFeedbackType);
        end;
      end;
  end;
end;

procedure TfrmUsrMenu.btnOrderMenClick(Sender: TObject);
begin
Hide;
frmOrders.Show;
end;

procedure TfrmUsrMenu.btnCloseClick(Sender: TObject);
begin
 frmMain.CloseApp;
end;

procedure TfrmUsrMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caHide;
 frmMain.Show;
end;

function TfrmUsrMenu.getFeedBackType(const sMessage: string): integer;
var
 frmMsg :Tform;
 i :integer;
begin
  frmMsg := CreateMessageDialog(sMessage, mtConfirmation, [mbYes, mbNo]);

  try
    for i := 0 to frmMsg.ComponentCount - 1 do
      if frmMsg.Components[i] is TButton then
        with TButton(frmMsg.Components[i]) do
          begin
          if ModalResult = mrYes then Caption := 'Good review:';
          if ModalResult = mrNo then Caption := 'Bad review:';
          end;
    Result := frmMsg.ShowModal;
  finally
    frmMsg.Free;
  end;

end;

procedure TfrmUsrMenu.Label1Click(Sender: TObject);
begin
showmessage('Yo, can you stop clicking the labels and order the [[CHEAP]] meals');
end;


end.
