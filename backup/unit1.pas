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
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    ButtonRP: TButton;
    ButtonLP: TButton;
    ButtonTan: TButton;
    ButtonCos: TButton;
    ButtonSin: TButton;
    ButtonBack: TButton;
    ButtonPi: TButton;
    ButtonMul: TButton;
    ButtonDiv: TButton;
    ButtonV: TButton;
    Button0: TButton;
    ButtonSub: TButton;
    ButtonAdd: TButton;
    ButtonEqual: TButton;
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
    CheckBoxPolish: TCheckBox;
    EditVisor: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure ButtonBackClick(Sender: TObject);
    procedure ButtonCosClick(Sender: TObject);
    procedure ButtonDivClick(Sender: TObject);
    procedure ButtonLPClick(Sender: TObject);
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
    procedure ButtonRPClick(Sender: TObject);
    procedure ButtonSinClick(Sender: TObject);
    procedure ButtonSubClick(Sender: TObject);
    procedure ButtonTanClick(Sender: TObject);
    procedure ButtonVClick(Sender: TObject);
    procedure ButtonMulClick(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
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

procedure TForm1.ButtonMCClick(Sender: TObject);
begin

end;

procedure TForm1.ButtonDivClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '/'; // CONCATENANDO '/' AO PRESSIONAR
end;

procedure TForm1.ButtonBackClick(Sender: TObject);

begin

end;

procedure TForm1.ButtonCosClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + ButtonCos.Caption + '('; // CONCATENANDO TEXTO DO BOTÃO AO PRESSIONAR
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '√'; // CONCATENANDO '√' AO PRESSIONAR
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '^2'; // CONCATENANDO '^2' AO PRESSIONAR
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '^'; // CONCATENANDO '^' AO PRESSIONAR
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + 'r'; // CONCATENANDO 'r' AO PRESSIONAR
end;

procedure TForm1.ButtonLPClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '('; // CONCATENANDO '(' AO PRESSIONAR
end;

procedure TForm1.ButtonRPClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + ')'; // CONCATENANDO ')' AO PRESSIONAR
end;

procedure TForm1.ButtonSinClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + ButtonSin.Caption + '('; // CONCATENANDO TEXTO DO BOTÃO AO PRESSIONAR
end;

procedure TForm1.ButtonMClick(Sender: TObject);
begin

end;

procedure TForm1.ButtonMRClick(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '1'; // CONCATENANDO '1' AO PRESSIONAR
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

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
     if(CheckBox1.Checked = true) then
     begin
          ButtonSin.Caption:='arc sin';
          ButtonCos.Caption:='arc cos';
          ButtonTan.Caption:='arc tan';
     end
     else begin
          ButtonSin.Caption:='sin';
          ButtonCos.Caption:='cos';
          ButtonTan.Caption:='tan';
     end;
end;

procedure TForm1.ButtonSubClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + '-'; // CONCATENANDO '-' AO PRESSIONAR
end;

procedure TForm1.ButtonTanClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + ButtonTan.Caption + '('; // CONCATENANDO TEXTO DO BOTÃO AO PRESSIONAR
end;

procedure TForm1.ButtonVClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + ','; // CONCATENANDO ',' AO PRESSIONAR
end;

procedure TForm1.ButtonPiClick(Sender: TObject);
begin
     EditVisor.Text := EditVisor.Text + FloatToStr(pi); // CONCATENANDO PI AO PRESSIONAR
end;


// FUNÇÃO REFERENTE AO BOTÃO '='
procedure TForm1.ButtonEqualClick(Sender: TObject);

const max = 100; //Tamanho Maximo da pilha

type  pilha = record // Criando tipo pilha
      obj : array[1..max] of string;
      j : integer;
end;

var svisor, saux:string; // String do visor da calculadora e String auxiliar
var i, j, nivel: integer; // Inteiro para contagem
var op1, op2, r: real; // operadores e resultado
var p1: pilha; // p1: Pilha de operações
var lista : array[0..max] of string; // Lista para a organização da expreção em notação Polonesa

//FUNÇÃO PARA VERIFICAR SE VALOR ESTÁ EM GRAUS OU RADIANOS E CONVERTER PARA RADIANOS
function radiano(var x: real): real;  // --> GRAUS -> RADIANOS <--
  begin
    if(RadioButton1.Checked = true) then
    begin
         x := x * (pi/180);
    end;
    radiano := x;
  end;

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

//FUNÇÃO DE CÁLCULO DE PRECEDÊNCIA
procedure precedencia(var nivel: integer);
var prec : boolean; // Indicador de Precedência
  begin
       if(vazia(p1) = false)then // Verificando se a pilha está vazia
       begin
          // Início do Laço para carregar operadores da pilha com maior precedencia na Lista
          repeat

             saux := pop(p1); // carregando topo da pilha na string auxiliar

             // Verificando se o topo da pilha tem uma precedência maior ou igual ao operador esquadrinhado

             if(nivel <= 4) then
             begin
                  if((saux = '~') or (saux = 'sin') or (saux = 'cos') or (saux = 'tan')
                  or (saux = 'arc tan') or (saux = 'arc cos') or (saux = 'arc sin')) then
                  begin
                    prec := true; //Setando variável de precedência
                    lista[j] := saux; // Carregando string Auxiliar na pilha
                    j := j + 1; // Incrementando indice do array
                  end
                  else begin
                    prec := false; // Setando false na variável de precedencia
                  end;
             end
             else if(nivel = 3) then
             begin
                if((saux = '^') or (saux = 'raiz') or (saux = '!') or(saux = '~')
                or (saux = 'sin') or (saux = 'cos') or (saux = 'tan') or (saux = 'arc tan')
                or (saux = 'arc cos') or (saux = 'arc sin')) then
                  begin
                    prec := true; //Setando variável de precedência
                    lista[j] := saux; // Carregando string Auxiliar na pilha
                    j := j + 1; // Incrementando indice do array
                  end
                else begin
                    prec := false; // Setando false na variável de precedencia
                end;
             end
             else if(nivel = 2) then
             begin
                if((saux = '*') or (saux = '/') or (saux = '^') or (saux = 'raiz') or (saux = '!') or(saux = '~')
                or (saux = 'sin') or (saux = 'cos') or (saux = 'tan') or (saux = 'arc tan')
                or (saux = 'arc cos') or (saux = 'arc sin')) then
                  begin
                    prec := true; //Setando variável de precedência
                    lista[j] := saux; // Carregando string Auxiliar na pilha
                    j := j + 1; // Incrementando indice do array
                  end
                else begin
                    prec := false; // Setando false na variável de precedencia

                end;
             end
             else if(nivel = 1) then
             begin
                if((saux = '+') or (saux = '-') or (saux = '*') or (saux = '/') or (saux = '^')
                or (saux = 'raiz') or (saux = '!') or(saux = '~') or (saux = 'sin') or (saux = 'cos')
                or (saux = 'tan') or (saux = 'arc tan') or (saux = 'arc cos') or (saux = 'arc sin')) then
                  begin
                    prec := true; //Setando variável de precedência
                    lista[j] := saux; // Carregando string Auxiliar na pilha
                    j := j + 1; // Incrementando indice do array
                  end
                else begin
                    prec := false; // Setando false na variável de precedencia
                end;
             end;

          until((prec = false) or vazia(p1));
          push(p1, saux); // Devolvendo operador da string auxiliar para o topo da pilha
          // Fim do Laço ----------------
       end



  end;
//########### Funções das Operações em Assembly ##############

function soma(): real;  // --> SOMA <--
var x1, x2 : real;
  begin
    x1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
    x2 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 2
    {$ASMMODE intel}
    asm
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
       fld x1 //Carrega o op1 na pilha
       fld x2 //Carrega o op2 na pilha
       fdivr //Soma os dois valores
       fstp x1 //Retorna o resultado
    end;
    divisao := x1;
  end;

function potencia(): real;  // --> POTENCIAÇÃO <--
var x1, x2, r : real;
  begin
    x1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
    x2 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 2

    {$ASMMODE intel}
    asm
       fld x1 // carrega x1 na pilha
       fld x2 // carrega x2 na pilha
       fyl2x // faz 1/r * log na base 2 de x1
       fld st // duplica o topo
       frndint // trunca
       fsub st(1), st // extrai a parte fracionária
       fxch // inverte a ordem na pilha
       f2xm1 // faz 2 ^ st -1
       fld1 // Carrega 1 na pilha
       fadd // soma 1
       fscale // faz st * 2 ^ parte inteira de st1
       fstp r // carrega o topo em r
    end;


    potencia := r;
  end;

function raiz(): real;  // --> RAIZ <--
var x1, x2, r : real;
  begin
    x1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1

    r := StrToFloat(pop(p1));// Busca da Pilha de valores a raiz


    {$ASMMODE intel}
    asm
       fld r // carrega r na pilha
       fld1 // carrega 1 na pilha
       fdivr // faz 1/r
       fld x1 // carrega x1 na pilha
       fyl2x // faz 1/r * log na base 2 de x1
       fld st // duplica o topo
       frndint // trunca
       fsub st(1), st // extrai a parte fracionária
       fxch // inverte a ordem na pilha
       f2xm1 // faz 2 ^ st -1
       fld1 // Carrega 1 na pilha
       fadd // soma 1
       fscale // faz st * 2 ^ parte inteira de st1
       fstp r // carrega o topo em r
    end;

    raiz := r;
  end;

function seno(): real;  // --> SENO <--
var x : real;
  begin

    x := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
    x := radiano(x); // Converte x para radianos

    {$ASMMODE intel}
    asm
       fld x //Carrega o op1 na pilha
       fsin // Calcula o seno do topo
       fstp x //Retorna o resultado
    end;

    seno := x;
  end;

function tangente(): real;  // --> TANGENTE <--
var x : real;
  begin
    x := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1

    {$ASMMODE intel}
    asm
       fld x //Carrega o op1 na pilha
       fsincos // Calcula o seno e cosseno do topo
       fdiv // Calcula tangente
       fstp x //Retorna o resultado
    end;
    tangente := x;
  end;

function cosseno(): real;  // --> COSSENO <--
var x : real;
  begin
    x := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1

    {$ASMMODE intel}
    asm
       finit //Inicia a FPU
       fld x //Carrega o op1 na pilha
       fcos // Calcula o cosseno do topo
       fstp x //Retorna o resultado
    end;
    cosseno := x;
  end;

begin
     criar(p1); //Criando Pilha 1

     // Iniciailizando Variáveis
     j := 0;
     r := 0;
     saux := '';
     svisor := EditVisor.Text + '=';

//BLOCO DE FATIAMENTO DA STRING DO VISOR (NOTAÇÃO POLONESA) -------------------------------
     for i := 1 to length(svisor) do // for varrendo do ultimo caractere digitado até o primeiro
     begin

// ========================================== Operadores Trigonométricos ============================================
          if((saux = 'sin') or (saux = 'arc sin') or (saux = 'cos')
          or (saux = 'arc cos') or (saux = 'tan') or (saux = 'arc tan'))then
                begin

                     push(p1, saux); // Carregando operação na pilha
                     push(p1, svisor[i]); // resetando String Auxiliar
                     saux := '';

                end

// ========================================== Operadores + e - ============================================
          else if((svisor[i] = '+') or (svisor[i] = '-'))then
          begin
               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               nivel := 1; // Setando nivel de precedencia
               precedencia(nivel); // Chamando função de cálculo de precedência

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar

          end

// ========================================== Operadores  * e / ============================================
          else if((svisor[i] = '*') or (svisor[i] = '/')) then
          begin

               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               nivel := 2; // Setando nivel de precedencia
               precedencia(nivel); // Chamando função de cálculo de precedência

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar
          end

// ========================================== Operadores ^, ! e ~ ============================================
          else if((svisor[i] = '^') or (svisor[i] = 'r') or (svisor[i] = '!'))then
          begin
               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               nivel := 3; // Setando nivel de precedencia
               precedencia(nivel); // Chamando função de cálculo de precedência

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar  2+s(30)

          end

// ========================================== ABRE PARÊNTESES ============================================
          else if( svisor[i] = '(')then
          begin
               if(saux <> '') then
               begin
                    lista[j] := saux; // Carregando valor da String auxiliar na Lista
                    j := j + 1; // Incrementando indice do arra
               end;

               push(p1, svisor[i]); // Carregando operação na pilha
               saux := ''; // resetando String Auxiliar
          end

// ========================================== FECHA PARÊNTESES ============================================
          else if(svisor[i] = ')') then
          begin

               lista[j] := saux; // Carregando valor da String auxiliar na Lista
               j := j + 1; // Incrementando indice do array

               // Laço para carregar operadores da pilha na Lista até o parênteses
               saux := pop(p1);
               while (saux <> '(') do
               begin
                  lista[j] := saux;
                  j := j + 1;
                  saux := pop(p1);
               end;
               saux := ''; // resetando String Auxiliar
          end

// ========================================== PI π ============================================
          else if( svisor[i] = 'π')then
          begin
               saux := '3.14159265359';
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
      {$ASMMODE intel}
      asm
       finit // Inicia a FPU
      end;
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
          else if(lista[j] = '^') then begin
               push(p1, FloatToStr(potencia())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] = 'r') then begin
               push(p1, FloatToStr(raiz())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] = 'sin') then begin
               push(p1, FloatToStr(seno())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] = 'cos') then begin
               push(p1, FloatToStr(cosseno())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] = 'tan') then begin
               push(p1, FloatToStr(tangente())); // Carrega o resultado na pilha de valores
          end
          else if(lista[j] <> '') then begin
               push(p1, lista[j]);
          end;
      end;

//FIM DO BLOCO DE OPERAÇÕES ---------------------------------------
      if(CheckBoxPolish.Checked) then
      begin
          EditVisor.Text := '';
          for j := 0 to max do EditVisor.Text := EditVisor.Text+lista[j]; // Exibindo resultado
      end
      else EditVisor.Text := pop(p1); // Exibindo resultado

end;


end.

