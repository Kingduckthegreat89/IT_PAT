object frmOrders: TfrmOrders
  Left = 0
  Top = 0
  Caption = 'Create Your order'
  ClientHeight = 604
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object lblDoesNothingButShowSomething: TLabel
    Left = 8
    Top = 210
    Width = 81
    Height = 16
    Caption = 'Pick Your item'
  end
  object lblLbl: TLabel
    Left = 8
    Top = 282
    Width = 122
    Height = 16
    Caption = 'How many? (10 max)'
  end
  object lblOrder: TLabel
    Left = 8
    Top = 152
    Width = 106
    Height = 40
    Caption = 'Order:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = lblOrderClick
  end
  object btnChangeOrder: TButton
    Left = 184
    Top = 232
    Width = 81
    Height = 41
    Caption = 'Click to Edit last order'
    TabOrder = 0
    Visible = False
    WordWrap = True
    OnClick = btnChangeOrderClick
  end
  object btnCheckStock: TButton
    Left = 8
    Top = 79
    Width = 137
    Height = 33
    Caption = 'Check stock of:'
    TabOrder = 1
    OnClick = btnCheckStockClick
  end
  object btnEdit: TButton
    Left = 8
    Top = 391
    Width = 65
    Height = 25
    Caption = 'Edit Order'
    TabOrder = 2
    OnClick = btnEditClick
  end
  object btnItemAdd: TButton
    Left = 8
    Top = 360
    Width = 145
    Height = 25
    Caption = 'Add Item'
    TabOrder = 3
    OnClick = btnItemAddClick
  end
  object btnListItems: TButton
    Left = 8
    Top = 16
    Width = 137
    Height = 33
    Caption = 'List Available Items'
    TabOrder = 4
    OnClick = btnListItemsClick
  end
  object btnRemove: TButton
    Left = 89
    Top = 391
    Width = 64
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = btnRemoveClick
  end
  object cmbItems: TComboBox
    Left = 8
    Top = 232
    Width = 145
    Height = 24
    TabOrder = 6
  end
  object cmbStock: TComboBox
    Left = 168
    Top = 83
    Width = 145
    Height = 24
    TabOrder = 7
  end
  object redDisplay: TRichEdit
    Left = 416
    Top = 8
    Width = 542
    Height = 588
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object spnAmount: TSpinEdit
    Left = 8
    Top = 304
    Width = 145
    Height = 26
    MaxValue = 10
    MinValue = 1
    TabOrder = 9
    Value = 1
  end
  object btnDone: TButton
    Left = 8
    Top = 480
    Width = 122
    Height = 57
    Caption = 'Done'
    TabOrder = 10
    OnClick = btnDoneClick
  end
end
