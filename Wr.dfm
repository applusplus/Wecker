object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Wecker :: by applusplus'
  ClientHeight = 273
  ClientWidth = 458
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pctime: TLabel
    Left = 24
    Top = 24
    Width = 38
    Height = 13
    Caption = 'PC Zeit:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object stundenlab: TLabel
    Left = 68
    Top = 24
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object doppelpunkt: TLabel
    Left = 82
    Top = 24
    Width = 4
    Height = 13
    Caption = ':'
  end
  object minutenlab: TLabel
    Left = 86
    Top = 24
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 144
    Top = 24
    Width = 103
    Height = 13
    Caption = 'Wann soll es klingeln?'
  end
  object Label2: TLabel
    Left = 288
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  object status: TLabel
    Left = 329
    Top = 24
    Width = 34
    Height = 13
    Caption = 'Bereit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object copyrigt: TLabel
    Left = 152
    Top = 252
    Width = 104
    Height = 13
    Caption = 'applusplus '#169' 2010'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 85
    Width = 48
    Height = 13
    Caption = 'Funtionen'
  end
  object stundencomb: TComboBox
    Left = 144
    Top = 43
    Width = 41
    Height = 21
    DropDownCount = 24
    TabOrder = 0
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23')
  end
  object minutencomb: TComboBox
    Left = 205
    Top = 43
    Width = 42
    Height = 21
    DropDownCount = 24
    TabOrder = 1
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31'
      '32'
      '33'
      '34'
      '35'
      '36'
      '37'
      '38'
      '39'
      '40'
      '41'
      '42'
      '43'
      '44'
      '45'
      '46'
      '47'
      '48'
      '49'
      '50'
      '51'
      '52'
      '53'
      '54'
      '55'
      '56'
      '57'
      '58'
      '59')
  end
  object start: TButton
    Left = 120
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 2
    OnClick = starta
  end
  object stop: TButton
    Left = 264
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 3
    OnClick = stopa
  end
  object shutdownr: TRadioButton
    Left = 24
    Top = 104
    Width = 105
    Height = 17
    Caption = 'PC herunterfahren'
    TabOrder = 4
  end
  object soundr: TRadioButton
    Left = 152
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Sound abspielen'
    Checked = True
    TabOrder = 5
    TabStop = True
  end
  object killprog: TRadioButton
    Left = 24
    Top = 127
    Width = 137
    Height = 17
    Caption = 'Ein Programm beenden'
    TabOrder = 6
  end
  object chooseprog: TEdit
    Left = 24
    Top = 150
    Width = 171
    Height = 21
    TabOrder = 7
    Text = 'Window Name from a Programm'
  end
  object Zeittimer: TTimer
    OnTimer = diezeit
    Left = 40
    Top = 224
  end
  object Wecktimer: TTimer
    Enabled = False
    Interval = 200
    OnTimer = iftime
    Left = 376
    Top = 224
  end
end
