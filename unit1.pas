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

var svisor, saux:string; // String do visor da calculadora e String auxiliar
var i, j: integer; // Inteiro para contagem
var op1, op2, r: real; // operadores e resultado
var p1: pilha; // p1: Pilha de operações
var lista : array[0..max] of string; // Lista para a organização da expreção em notação Polonesa
var precedencia : boolean; // Indicador de Precedência


//########### Funções de Pilha ##############
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

//########### Funções das Operações em Assembly ##############

function soma(): real;  // --> SOMA <--
var x1, x2 : real;
  begin
    x1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
    x2 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 2
    {$ASMMODE intel}
    asm
       finit //Inicia a FPU
       fld x1 //Carrega o op1 na pilha
       fld x2 //Carrega o op2 na pilha
       fadd //Soma os dois valores
       fstp x1 //Retorna o resultado
    end;
    soma := x1;
  end;

function subtracao(): real;  // --> SUBTRAÇÃO <--
var x1, x2 : real;
  begin
    x1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
    x2 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 2
    {$ASMMODE intel}
    asm
       finit //Inicia a FPU
       fld x1 //Carrega o op1 na pilha
       fld x2 //Carrega o op2 na pilha
       fsubr //Soma os dois valores
       fstp x1 //Retorna o resultado
    end;
    subtracao := x1;
  end;

function multiplicacao(): real;  // --> MULTIPLICAÇÃO <--
var x1, x2 : real;
  begin
    x1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
    x2 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 2
    {$ASMMODE intel}
    asm
       finit //Inicia a FPU
       fld x1 //Carrega o op1 na pilha
       fld x2 //Carrega o op2 na pilha
       fmul //Soma os dois valores
       fstp x1 //Retorna o resultado
    end;
    multiplicacao := x1;
  end;

function divisao(): real;  // --> DIVISÃO <--
var x1, x2 : real;
  begin
    x1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
    x2 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 2
    {$ASMMODE intel}
    asm
       finit //Inicia a FPU
       fld x1 //Carrega o op1 na pilha
       fld x2 //Carrega o op2 na pilha
       fdivr //Soma os dois valores
       fstp x1 //Retorna o resultado
    end;
    divisao := x1;
  end;
begin
     criar(p1); //Criando Pilha 1

     // Iniciailizando Variáveis
     j := 0;
     r := 0;
     saux := '';
     svisor := EditVisor.Text + '=';
     precedencia := false;

//BLOCO DE FATIAMENTO DA STRING DO VISOR (NOTAÇÃO POLONESA) -------------------------------
     for i := 1 to length(svisor) do // for varrendo do ultimo caractere digitado até o primeiro
     begin
          //Verificando se o caractere do visor corresponde a uma operação
          if((i = 1) and ((svisor[i] = '+') or (svisor[i] = '-'))) then begin
               saux := 'Syntax ERROR !!!';
               push(p1, saux);
               lista[0] := 'ERROR';
               break;
          end

// ========================================== Operador + ============================================
          else if( svisor[i] = '+')then
          begin
               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               // Início do Laço para carregar operadores da pilha com maior precedencia na Lista
               repeat
                 if(vazia(p1))then // Verificando se a pilha está vazia
                 begin
                      break; // Saindo do laço
                 end

                 else begin

                   saux := pop(p1); // carregando topo da pilha na string auxiliar

                   // Verificando se o topo da pilha tem uma precedência maior ou igual ao operador esquadrinhado
                   if((saux = '/') or (saux = '*') or (saux = '+') or (saux = '-')) then
                   begin
                        precedencia := true; //Setando variável de precedência
                        lista[j] := saux; // Carregando string Auxiliar na pilha
                        j := j + 1; // Incrementando indice do array
                   end
                   else begin
                        precedencia := false; // Setando false na variável de precedencia
                        push(p1, saux); // Devolvendo operador da string auxiliar para o topo da pilha
                   end;
                 end;

               until(precedencia = false);
               // Fim do Laço ----------------

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar

          end

// ========================================== Operador - ============================================
          else if(svisor[i] = '-') then
          begin

               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               // Início do Laço para carregar operadores da pilha com maior precedencia na Lista
               repeat
                 if(vazia(p1))then // Verificando se a pilha está vazia
                 begin
                      break; // Saindo do laço
                 end

                 else begin

                   saux := pop(p1); // carregando topo da pilha na string auxiliar

                   // Verificando se o topo da pilha tem uma precedência maior ou igual ao operador esquadrinhado
                   if((saux = '/') or (saux = '*') or (saux = '+') or (saux = '-')) then
                   begin
                        precedencia := true; //Setando variável de precedência
                        lista[j] := saux; // Carregando string Auxiliar na pilha
                        j := j + 1; // Incrementando indice do array
                   end
                   else begin
                        precedencia := false; // Setando false na variável de precedencia
                        push(p1, saux); // Devolvendo operador da string auxiliar para o topo da pilha
                   end;
                 end;

               until(precedencia = false);
               // Fim do Laço ----------------

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar
          end

// ========================================== Operador * ============================================
          else if(svisor[i] = '*') then
          begin

               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               // Início do Laço para carregar operadores da pilha com maior precedencia na Lista
               repeat
                 if(vazia(p1))then // Verificando se a pilha está vazia
                 begin
                      break; // Saindo do laço
                 end

                 else begin

                   saux := pop(p1); // carregando topo da pilha na string auxiliar

                   // Verificando se o topo da pilha tem uma precedência maior ou igual ao operador esquadrinhado
                   if((saux = '/') or (saux = '*')) then
                   begin
                        precedencia := true; //Setando variável de precedência
                        lista[j] := saux; // Carregando string Auxiliar na pilha
                        j := j + 1; // Incrementando indice do array
                   end
                   else begin
                        precedencia := false; // Setando false na variável de precedencia
                        push(p1, saux); // Devolvendo operador da string auxiliar para o topo da pilha
                   end;
                 end;

               until(precedencia = false);
               // Fim do Laço ----------------

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar
          end

// ========================================== Operador / ============================================
          else if(svisor[i] = '/') then
          begin

               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               // Início do Laço para carregar operadores da pilha com maior precedencia na Lista
               repeat
                 if(vazia(p1))then // Verificando se a pilha está vazia
                 begin
                      break; // Saindo do laço
                 end

                 else begin

                   saux := pop(p1); // carregando topo da pilha na string auxiliar

                   // Verificando se o topo da pilha tem uma precedência maior ou igual ao operador esquadrinhado
                   if((saux = '/') or (saux = '*')) then
                   begin
                        precedencia := true; //Setando variável de precedência
                        lista[j] := saux; // Carregando string Auxiliar na pilha
                        j := j + 1; // Incrementando indice do array
                   end
                   else begin
                        precedencia := false; // Setando false na variável de precedencia
                        push(p1, saux); // Devolvendo operador da string auxiliar para o topo da pilha
                   end;
                 end;

               until(precedencia = false);
               // Fim do Laço ----------------

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar
          end
// ========================================== Operador = ============================================
          else if(svisor[i] = '=') then begin

               if(saux <> '') then // Verificando se a string auxiliar está vazia
               begin
                    lista[j] := saux; // Carregando valor da String auxiliar na Lista
                    j := j + 1; // Incrementando indice da lista
               end;

               // Laço para carregar operadores restantes da pilha na Lista
               while (vazia(p1) <> true) do
               begin
                  lista[j] := pop(p1);
                  j := j + 1;
               end;

          end

// ========================================== DIGITO ============================================
          else begin
               saux := saux + svisor[i]; // Concatenando digitos na String Auxiliar
          end;

     end;

//FIM DO BLOCO DE FATIAMENTO -----------------------------------------

//INÍCIO DO BLOCO DE OPERAÇÕES ---------------------------------------
      for j := 0 to max do
      begin
          if(lista[j] = 'ERROR')then begin
               break;
          end
          else if(lista[j] = '+') then
          begin
               push(p1, FloatToStr(soma())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] = '-') then begin
               push(p1, FloatToStr(subtracao())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] = '*') then begin
               push(p1, FloatToStr(multiplicacao())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] = '/') then begin
               push(p1, FloatToStr(divisao())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] <> '') then begin
               push(p1, lista[j]);
          end;
      end;

//FIM DO BLOCO DE OPERAÇÕES ---------------------------------------

     EditVisor.Text := pop(p1); // Exibindo resultado

end;

procedure TForm1.ButtonPiClick(Sender: TObject);
begin

end;




end.

