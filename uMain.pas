unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    meLog: TMemo;
    Panel1: TPanel;
    btDraw1: TButton;
    btDraw1000: TButton;
    btClear: TButton;
    procedure btDraw1Click(Sender: TObject);
    procedure btDraw1000Click(Sender: TObject);
    procedure btClearClick(Sender: TObject);
  private
    { Private declarations }
    procedure drawPoint(x, y: integer);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses System.Math;

procedure TfrmMain.btDraw1Click(Sender: TObject);
var
  a, r, x, y: real;
  h, w: integer;
begin
  w := Round((Self.Width - meLog.Width - 2) / 2);
  h := Round((Self.Height - Panel1.Height - 2) / 2);

  a := random * 2 * Pi;
  r := (w / 2) * Sqrt(random);

  x := r * cos(a);
  y := r * sin(a);

  drawPoint(w + Round(x), h + Round(y));
end;

procedure TfrmMain.btDraw1000Click(Sender: TObject);
var
  i: integer;
begin
  for i := 1 to 1000 do
    btDraw1Click(Self);

end;

procedure TfrmMain.btClearClick(Sender: TObject);
begin
  Canvas.Pen.Color := clWhite;
  Canvas.Brush.Color := clWhite;
  Canvas.Rectangle(0, 0, Self.Width - 1, Self.Height - 1);
  btDraw1.Tag := 0;
  meLog.Clear;
end;

procedure TfrmMain.drawPoint(x, y: integer);
var
  r: integer;
  Color: TColor;
begin
  r := 4;
  Color := RGB(random(255), random(255), random(255));
  Canvas.Pen.Width := 1;
  Canvas.Pen.Color := Color;
  Canvas.Brush.Color := Color;
  Canvas.Ellipse(x - r, y - r, x + r, y + r);
  // Canvas.Brush.Color := clWindow;
  // Canvas.TextOut(x, y, IntToStr(Button1.Tag));
  btDraw1.Tag := btDraw1.Tag + 1;
  meLog.Lines.Add('(' + IntToStr(btDraw1.Tag) + ') - ' + IntToStr(x) + ', ' +
    IntToStr(y));
end;

end.
