unit Unit1;

//----- INÍCIO DO CODIGO DO LAZARUS PARA A GERAÇÃO DO FORMULÁRIO

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    ButtonRP: TButton;
    ButtonLP: TButton;
    ButtonTan: TButton;
    ButtonCos: TButton;
    ButtonSin: TButton;
    ButtonBack: TButton;
    ButtonCE: TButton;
    ButtonPi: TButton;
    ButtonMul: TButton;
    ButtonDiv: TButton;
    ButtonMS: TButton;
    ButtonV: TButton;
    Button0: TButton;
    ButtonSub: TButton;
    ButtonAdd: TButton;
    ButtonEqual: TButton;
    ButtonMC: TButton;
    ButtonM: TButton;
    ButtonMR: TButton;
    ButtonAC: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    EditVisor: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure ButtonDivClick(Sender: TObject);
    procedure ButtonMCClick(Sender: TObject);
    procedure ButtonMClick(Sender: TObject);
    procedure ButtonMRClick(Sender: TObject);
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
    procedure ButtonPiClick(Sender: TObject);
    procedure ButtonSubClick(Sender: TObject);
    procedure ButtonVClick(Sender: TObject);
    procedure ButtonMulClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

//------ FIM DO CODIGO DO LAZARUS PARA GERAÇÃO DO FORMULÁRIO

// FUNÇOES DOS BOTOES
procedure TForm1.Button1Click(Sender: TObject);

begin
     EditVisor.Text := EditVisor.Text + '1'; // CONCATENANDO '1' AO PRESSIONAR
end;

procedure TForm1.ButtonMCClick(Sender: TObject);
begin

end;

procedure TForm1.ButtonDivClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '/'; // CONCATENANDO '/' AO PRESSIONAR
end;

procedure TForm1.ButtonMClick(Sender: TObject);
begin

end;

procedure TForm1.ButtonMRClick(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '2'; // CONCATENANDO '2' AO PRESSIONAR
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '3'; // CONCATENANDO '3' AO PRESSIONAR
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '4'; // CONCATENANDO '4' AO PRESSIONAR
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '5'; // CONCATENANDO '5' AO PRESSIONAR
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '6'; // CONCATENANDO '6' AO PRESSIONAR
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '7'; // CONCATENANDO '7' AO PRESSIONAR
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '8'; // CONCATENANDO '8' AO PRESSIONAR
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '9'; // CONCATENANDO '9' AO PRESSIONAR
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '0'; // CONCATENANDO '0' AO PRESSIONAR
end;

procedure TForm1.ButtonACClick(Sender: TObject);
begin
     EditVisor.Text := ''; // LIMPANDO VISOR
end;

procedure TForm1.ButtonAddClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '+'; // CONCATENANDO '+' AO PRESSIONAR
end;

procedure TForm1.ButtonMulClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '*'; // CONCATENANDO '*' AO PRESSIONAR
end;

procedure TForm1.ButtonSubClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '-'; // CONCATENANDO '-' AO PRESSIONAR
end;

procedure TForm1.ButtonVClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + ','; // CONCATENANDO ',' AO PRESSIONAR
end;


// FUNÇÃO REFERENTE AO BOTÃO '='
procedure TForm1.ButtonEqualClick(Sender: TObject);

const max = 100; //Tamanho Maximo da pilha
type  pilha = record // Criando tipo pilha
      obj : array[1..max] of string;
      j : integer;
end;

procedure criar ( var p: pilha); // cria a pilha
   begin
       p.j := 0;
   end;
procedure push(var p:pilha; ob: string); // adiciona elementos na pilha
  begin
      p.j := p.j + 1;
      p.obj[p.j] := ob;
  end;
function pop (var p: pilha):string;  // retira os elementos da pilha
  begin
    pop := p.obj[p.j];
    p.j:= p.j-1;
  end;
function vazia(var p: pilha):boolean; // indica se a pilha está vazia
  begin
     if p.j = 0 then
        vazia:= true
     else
         vazia := false;
  end;

var svisor, saux:string; // String do visor da calculadora e String auxiliar
var i, j: integer; // Inteiro para contagem
var op1, op2, r: real; // operadores e resultado
var p1: pilha; // p1: Pilha de operações
var lista : array[0..max] of string;
var precedencia : boolean;

begin
     criar(p1); //Criando Pilha 1

     // Iniciailizando Variáveis
     j := 0;
     r := 0;
     saux := '';
     svisor := EditVisor.Text + '=';
     precedencia := false;

     //BLOCO DE FATIAMENTO DA STRING DO VISOR (SEPARAÇÃO DE OPERANDO E OPERADOR)
     for i := 1 to length(svisor) do // for varrendo do ultimo caractere digitado até o primeiro
     begin
          //Verificando se o caractere do visor corresponde a uma operação
          if((i = 1) and ((svisor[i] = '+') or (svisor[i] = '-'))) then begin
               saux := 'Syntax ERROR !!!';
               push(p1, saux);
               lista[0] := 'ERROR';
               break;
          end
          else if( svisor[i] = '+')then
          begin
               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array
               repeat
                 if(vazia(p1))then
                 begin
                      break;
                 end

                 else saux := pop(p1);

                 if((saux = '+') or (saux = '-') or (saux = '/') or (saux = '*')) then
                 begin
                      precedencia := true;
                      lista[j] := saux;
                      j := j + 1;
                 end
                 else precedencia := false;
               until(precedencia = false);

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar

          end
          else if(svisor[i] = '-') then
          begin

               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array
               if(vazia(p1) <> true) then
               begin
                 repeat
                       saux := pop(p1);
                       if((saux = '+') or (saux = '-') or (saux = '/') or (saux = '*') or (saux = '^') or (saux = '~')) then
                       begin
                            lista[j] := saux;
                            j := j + 1;
                       end
                       else begin
                           push(p1, saux);
                           saux := ''; // resetando String Auxiliar
                       end;

                 until (saux <> '');
               end;


               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar
          end
          else if(svisor[i] = '*') then
          begin

               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array
               repeat
                 if(vazia(p1))then
                 begin
                      break;
                 end

                 else begin
                   saux := pop(p1);
                   if((saux = '/') or (saux = '*')) then
                   begin
                        precedencia := true;
                        lista[j] := saux;
                        j := j + 1;
                   end
                   else begin
                        precedencia := false;
                        push(p1, saux);
                   end;
                 end;


               until(precedencia = false);

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar
          end
          else if(svisor[i] = '=') then begin
               if(saux <> '') then
               begin
                    lista[j] := saux; // Carregando valor da String auxiliar na pilha 1
                    j := j + 1;
               end;

               while (vazia(p1) <> true) do
               begin
                  lista[j] := pop(p1);
                  j := j + 1;
               end;

          end
          else begin
               saux := saux + svisor[i]; // Concatenando digitos na String Auxiliar
          end;

     end;



     //FIM DO BLOCO DE FATIAMENTO -----------------------------------------


     EditVisor.Text := '';
     for j := 0 to 10 do EditVisor.Text := EditVisor.Text+lista[j];//Mostra o Resultado




end;

procedure TForm1.ButtonPiClick(Sender: TObject);
begin

end;




end.

