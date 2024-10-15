object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'M'#233'todos Gen'#233'ricos'
  ClientHeight = 204
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Trocar Inteiro'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Trocar Texto'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 39
    Width = 145
    Height = 154
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 184
    Top = 39
    Width = 145
    Height = 154
    TabOrder = 3
  end
end
