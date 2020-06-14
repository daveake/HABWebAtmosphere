unit Main;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  Math, VCL.TMSFNCTypes, VCL.TMSFNCUtils, WEBLib.TMSFNCChart,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart;

type
  TForm1 = class(TWebForm)
    WebButton1: TWebButton;
    WebLabel1: TWebLabel;
    edtWeight: TWebEdit;
    WebLabel2: TWebLabel;
    cmbParachute: TWebComboBox;
    edtStatus: TWebEdit;
    Chart1: TTMSFNCChart;
    procedure WebButton1Click(Sender: TObject);
    procedure Chart1BeforeDrawSerieXValue(Sender: TObject;
      AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
      APosition: TTMSFNCChartXAxisPosition;
      var ADrawValue: TTMSFNCChartDrawXYValue; var ADefaultDraw: Boolean);
    procedure WebFormShow(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function CalculateAirDensity(alt: Double): Double;
var
    Temperature, Pressure: Double;
begin
    if alt < 11000.0 then begin
        // below 11Km - Troposphere
        Temperature := 15.04 - (0.00649 * alt);
        Pressure := 101.29 * power((Temperature + 273.1) / 288.08, 5.256);
    end else if alt < 25000.0 then begin
        // between 11Km and 25Km - lower Stratosphere
        Temperature := -56.46;
        Pressure := 22.65 * exp(1.73 - ( 0.000157 * alt));
    end else begin
        // above 25Km - upper Stratosphere
        Temperature := -131.21 + (0.00299 * alt);
        Pressure := 2.488 * power((Temperature + 273.1) / 216.6, -11.388);
    end;

    Result := Pressure / (0.2869 * (Temperature + 273.1));
end;

function CalculateDescentRate(Weight, Density, CDTimesArea: Double): Double;
begin
    Result := sqrt((Weight * 9.81)/(0.5 * Density * CDTimesArea));
end;

procedure TForm1.Chart1BeforeDrawSerieXValue(Sender: TObject;
  AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
  APosition: TTMSFNCChartXAxisPosition; var ADrawValue: TTMSFNCChartDrawXYValue;
  var ADefaultDraw: Boolean);
begin
    // Calculate altitued in km from index
    ADrawValue.ValueString := IntToStr(45 - Round(ADrawValue.Value));

    // Adjust rectangle width to fit new value
    ADrawValue.TextWidth := AGraphics.CalculateTextWidth(ADrawValue.ValueString);
end;

procedure TForm1.WebButton1Click(Sender: TObject);
const
    CDA: Array[0..14] of Double = (0.164, 0.234, 0.292, 0.456, 0.526, 0.657, 0.894, 0.934, 1.167, 1.478, 1.460, 1.824, 2.102, 2.627, 2.862);
var
    i: Integer;
    Weight, Density, CDTimesArea, Altitude, DescentRate: Double;
begin
    Chart1.Height := Chart1.width div 2;
    edtStatus.Top := Chart1.Top + Chart1.Height + 16;

    for i := 0 to Chart1.Series.Count-1 do begin
        Chart1.Series[i].Points.Clear;
    end;

    Weight := StrToFloat(edtWeight.Text);
    CDTimesArea := CDA[cmbParachute.ItemIndex];

    for i := 0 to 45 do begin
        Altitude := i * 1000;

        Density := CalculateAirDensity(Altitude);
        // Chart1.Series[0].AddXYPoint(i, Density * 100);

        DescentRate := CalculateDescentRate(Weight, Density, CDTimesArea);

        Chart1.Series[0].AddXYPoint(45-i, DescentRate);
    end;

    Density := CalculateAirDensity(100);
    DescentRate := CalculateDescentRate(Weight, Density, CDTimesArea);

    edtStatus.Text := 'CD*A=' + FormatFloat('0.00', CDTimesArea) + ', Landing=' + FormatFloat('0.00', DescentRate) + ' m/s';
end;

procedure TForm1.WebFormResize(Sender: TObject);
begin
    Chart1.Height := Chart1.width div 2;
    edtStatus.Top := Chart1.Top + Chart1.Height + 16;
end;

procedure TForm1.WebFormShow(Sender: TObject);
begin
    Chart1.Height := Chart1.width div 2;
    edtStatus.Top := Chart1.Top + Chart1.Height + 16;
end;

end.
