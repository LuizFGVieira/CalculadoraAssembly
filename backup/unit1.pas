unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ButtonV: TButton;
    Button0: TButton;
    ButtonSub: TButton;
    ButtonAdd: TButton;
    ButtonEqual: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    ButtonAC: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    EditVisor: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure ButtonACClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonEqualClick(Sender: TObject);
    procedure ButtonSubClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

begin
     EditVisor.Text := EditVisor.Text + '1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '9';
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '0';
end;

procedure TForm1.ButtonACClick(Sender: TObject);
begin
     EditVisor.Text := '';
end;

procedure TForm1.ButtonAddClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '+';
end;

procedure TForm1.ButtonSubClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '-';
end;

procedure TForm1.ButtonEqualClick(Sender: TObject);
var s, aux:string;
var cont, pcont: integer;
var kkk : Integer;

var
  arrN : array[0..1000] of real;
var
  arrO : array[0..100] of string;
begin
     pcont := 1;
     s := EditVisor.Text;
     for cont := 1 to length(s) do
     begin
          if( (s[cont] <> '+') or (s[cont] <> '-') )then
          begin
               aux := aux + s[cont];
          end
          else begin
               //kkk := StrToInt(aux);
               arrN[pcont] := StrToFloat(s[1..cont]);
               //arrO[pcont] := s[cont];
               //pcont := pcont + 1;
               //aux := '';
          end;
     end;
     cont := 1;
     EditVisor.Text := FloatToStr(arrN[pcont]);
end;

end.

