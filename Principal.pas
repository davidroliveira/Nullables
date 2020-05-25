unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Lib.Nullable;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    teste: Nullable<int64>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(teste.GetValueOrDefault.ToString);
  if not string(Edit1.Text).IsEmpty then
    teste := StrToIntDef(Edit1.Text, 0);
  if teste.HasValue then
    ShowMessage(teste.value.ToString);
end;

initialization
  ReportMemoryLeaksOnShutdown := True;
end.
