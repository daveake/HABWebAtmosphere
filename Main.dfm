object Form1: TForm1
  Left = 0
  Top = 0
  Width = 1082
  Height = 789
  Caption = 'HAB Descent Rate Calculator'
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  TabOrder = 1
  OnResize = WebFormResize
  OnShow = WebFormShow
  object WebLabel1: TWebLabel
    Left = 35
    Top = 10
    Width = 145
    Height = 18
    Caption = 'Payload Weight (kg):'
  end
  object WebLabel2: TWebLabel
    Left = 247
    Top = 10
    Width = 75
    Height = 18
    Caption = 'Parachute:'
  end
  object WebButton1: TWebButton
    Left = 539
    Top = 7
    Width = 121
    Height = 27
    Caption = 'Run Model'
    ChildOrder = 1
    OnClick = WebButton1Click
  end
  object edtWeight: TWebEdit
    Left = 186
    Top = 8
    Width = 40
    Height = 22
    ChildOrder = 3
    Text = '1.0'
  end
  object cmbParachute: TWebComboBox
    Left = 328
    Top = 8
    Width = 145
    Height = 22
    Text = '18" Spherachute'
    ItemIndex = 0
    Items.Strings = (
      '18" Spherachute'
      '2'#39' Rocketman'
      '24" Spherachute'
      '30" Spherachute'
      '3'#39' Rocketman'
      '36" Spherachute'
      '42" Spherachute'
      '4'#39' Rocketman'
      '48" Spherachute'
      '54" Spherachute'
      '5'#39' Rocketman'
      '60" Spherachute'
      '6'#39' Rocketman'
      '72" Spherachute'
      '7'#39' Rocketman')
  end
  object edtStatus: TWebEdit
    Left = 8
    Top = 741
    Width = 1063
    Height = 32
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    ChildOrder = 3
    ReadOnly = True
    ExplicitWidth = 649
  end
  object Chart1: TTMSFNCChart
    Left = 8
    Top = 48
    Width = 1066
    Height = 681
    ClickMargin = 10.000000000000000000
    Legend.Fill.Color = 16775416
    Legend.Stroke.Color = clGray
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clWindowText
    Legend.Font.Height = -16
    Legend.Font.Name = 'Tahoma'
    Legend.Font.Style = []
    Legend.Left = 10.000000000000000000
    Legend.Top = 10.000000000000000000
    Stroke.Color = clGray
    SeriesMargins.Left = 8
    SeriesMargins.Top = 8
    SeriesMargins.Right = 16
    SeriesMargins.Bottom = 8
    Series = <
      item
        AnimationFactor = 4.000000000000000000
        AutoXRange = arEnabled
        AutoYRange = arCommonZeroBased
        Bar.Width = 65.000000000000000000
        Bar.Spacing = 20.000000000000000000
        MultiPoint.Width = 65.000000000000000000
        Pie.Size = 200.000000000000000000
        Pie.Margins.Left = 10
        Pie.Margins.Top = 10
        Pie.Margins.Right = 10
        Pie.Margins.Bottom = 10
        Pie.SweepAngle = 360.000000000000000000
        ChartType = ctXYLine
        Fill.Color = clGreen
        LegendText = 'Descent Rate'
        Labels.Fill.Color = 16775416
        Labels.Font.Charset = DEFAULT_CHARSET
        Labels.Font.Color = clWindowText
        Labels.Font.Height = -11
        Labels.Font.Name = 'Tahoma'
        Labels.Font.Style = []
        Labels.Format = '%.2f'
        Labels.OffsetY = -10.000000000000000000
        Labels.Stroke.Color = clGray
        Markers.Fill.Color = 11186720
        Markers.Height = 10.000000000000000000
        Markers.Stroke.Color = 25600
        Markers.Visible = True
        Markers.Width = 10.000000000000000000
        MaxX = 46.000000000000000000
        MaxY = 10.000000000000000000
        MaxYOffsetPercentage = 10.000000000000000000
        Offset3DX = 15.000000000000000000
        Offset3DY = 15.000000000000000000
        Points = <>
        Legend.Fill.Color = 16775416
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clWindowText
        Legend.Font.Height = -16
        Legend.Font.Name = 'Tahoma'
        Legend.Font.Style = []
        Legend.Left = -10.000000000000000000
        Legend.Stroke.Color = clGray
        Stroke.Color = 25600
        Stroke.Width = 3.000000000000000000
        XGrid.Visible = True
        XValues.MajorUnit = 1.000000000000000000
        XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
        XValues.MajorUnitFont.Color = clWindowText
        XValues.MajorUnitFont.Height = -16
        XValues.MajorUnitFont.Name = 'Tahoma'
        XValues.MajorUnitFont.Style = []
        XValues.MajorUnitFormat = '%.0f'
        XValues.MajorUnitSpacing = 5.000000000000000000
        XValues.MajorUnitTickMarkSize = 10.000000000000000000
        XValues.MajorUnitTickMarkColor = clSilver
        XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
        XValues.MinorUnitFont.Color = clWindowText
        XValues.MinorUnitFont.Height = -16
        XValues.MinorUnitFont.Name = 'Tahoma'
        XValues.MinorUnitFont.Style = []
        XValues.MinorUnitFormat = '%.0f'
        XValues.MinorUnitSpacing = 5.000000000000000000
        XValues.MinorUnitTickMarkSize = 7.000000000000000000
        XValues.MinorUnitTickMarkColor = clSilver
        XValues.Title.Font.Charset = DEFAULT_CHARSET
        XValues.Title.Font.Color = clWindowText
        XValues.Title.Font.Height = -16
        XValues.Title.Font.Name = 'Tahoma'
        XValues.Title.Font.Style = []
        XValues.Title.TextMargins.Left = 0
        XValues.Title.TextMargins.Top = 0
        XValues.Title.TextMargins.Right = 0
        XValues.Title.TextMargins.Bottom = 0
        XValues.Title.Text = 'Altitude (km)'
        YGrid.Visible = True
        YValues.MajorUnit = 1.000000000000000000
        YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
        YValues.MajorUnitFont.Color = clWindowText
        YValues.MajorUnitFont.Height = -16
        YValues.MajorUnitFont.Name = 'Tahoma'
        YValues.MajorUnitFont.Style = []
        YValues.MajorUnitFormat = '%.0f'
        YValues.MajorUnitSpacing = 5.000000000000000000
        YValues.MajorUnitTickMarkSize = 10.000000000000000000
        YValues.MajorUnitTickMarkColor = clSilver
        YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
        YValues.MinorUnitFont.Color = clWindowText
        YValues.MinorUnitFont.Height = -16
        YValues.MinorUnitFont.Name = 'Tahoma'
        YValues.MinorUnitFont.Style = []
        YValues.MinorUnitFormat = '%.0f'
        YValues.MinorUnitSpacing = 5.000000000000000000
        YValues.MinorUnitTickMarkSize = 7.000000000000000000
        YValues.MinorUnitTickMarkColor = clSilver
        YValues.Title.Font.Charset = DEFAULT_CHARSET
        YValues.Title.Font.Color = clWindowText
        YValues.Title.Font.Height = -16
        YValues.Title.Font.Name = 'Tahoma'
        YValues.Title.Font.Style = []
        YValues.Title.TextMargins.Left = 0
        YValues.Title.TextMargins.Top = 0
        YValues.Title.TextMargins.Right = 0
        YValues.Title.TextMargins.Bottom = 0
        YValues.Title.Text = 'm/s'
      end>
    Title.Fill.Kind = gfkNone
    Title.Fill.Color = 16775416
    Title.Stroke.Color = clGray
    Title.Visible = False
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -16
    Title.Font.Name = 'Tahoma'
    Title.Font.Style = []
    Title.Height = 35.000000000000000000
    Title.TextMargins.Left = 3
    Title.TextMargins.Top = 3
    Title.TextMargins.Right = 3
    Title.TextMargins.Bottom = 3
    Title.Text = 'Title'
    XAxis.Fill.Kind = gfkNone
    XAxis.Fill.Color = 16775416
    XAxis.Stroke.Color = clGray
    XAxis.ReferenceValue = 10.000000000000000000
    XAxis.Height = 35.000000000000000000
    YAxis.Fill.Kind = gfkNone
    YAxis.Fill.Color = 16775416
    YAxis.Stroke.Color = clGray
    YAxis.Width = 35.000000000000000000
    OnBeforeDrawSerieXValue = Chart1BeforeDrawSerieXValue
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    ExplicitWidth = 652
  end
end
