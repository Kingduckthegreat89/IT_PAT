object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  Caption = 'Settings'
  ClientHeight = 567
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object lblSettings: TLabel
    Left = 248
    Top = 8
    Width = 203
    Height = 68
    Caption = 'Settings'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = lblSettingsClick
  end
  object clbSettings: TCheckListBox
    Left = 8
    Top = 104
    Width = 401
    Height = 409
    Items.Strings = (
      'Disable background'
      'Hide Users(ONLY USE AS ADMIN)'
      'Hide Admin(ONLY USE AS USER)'
      'Remove item background'
      'Enable help menu'#39's'
      'Don'#39't...')
    TabOrder = 0
  end
  object clbSecretSettings: TCheckListBox
    Left = 415
    Top = 104
    Width = 368
    Height = 409
    TabOrder = 1
  end
  object btnSaveQuit: TButton
    Left = 8
    Top = 519
    Width = 775
    Height = 40
    Caption = 'Save and Quit(App will close)'
    TabOrder = 2
    OnClick = btnSaveQuitClick
  end
end
