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
    procedure ButtonVClick(Sender: TObject);
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
var i: integer; // Inteiro para contagem
var op1, op2, r: real; // operadores e resultado
var p1, p2: pilha; // p1: Pilha de Valores e p2: Pilha de operações

begin
     criar(p1); //Criando Pilha 1
     criar(p2); //Criando Pilha 2

     // Iniciailizando Variáveis
     r := 0;
     saux := '';
     svisor := EditVisor.Text + '=';

     //BLOCO DE FATIAMENTO DA STRING DO VISOR (SEPARAÇÃO DE OPERANDO E OPERADOR)
     for i := length(svisor) downto 1 do // for varrendo do ultimo caractere digitado até o primeiro
     begin
          //Verificando se o caractere do visor corresponde a uma operação
          if( svisor[i] = '+')then
          begin
               push(p1, saux); // Carregando valor da String auxiliar na pilha 1
               push(p2, svisor[i]); // Carregando operação na pilha 2
               saux := ''; // resetando String Auxiliar
          end
          else if(svisor[i] = '-') then //If para converter subtração em adição
          begin

               if(i<>1)then push(p2, '+'); // Carregando operação na pilha 2

               saux := '-'+saux; // Concatenando sinal na string auxiliar
               push(p1, saux); // Carregando valor da String auxiliar na pilha 1
               saux := ''; // resetando String Auxiliar
          end
          else if(svisor[i] <> '=') then begin
               saux := svisor[i] + saux; // Concatenando digitos na String Auxiliar
          end;

     end;
     if(saux <> '') then push(p1, saux); // Carregando valor da String auxiliar na pilha 1

     //FIM DO BLOCO DE FATIAMENTO -----------------------------------------

     repeat
       saux := pop(p2); // carrega a operação na String Auxiliar
       if( saux = '+') then // Verifica se é uma Soma a ser realizada
       begin
            op2 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 1
            op1 := StrToFloat(pop(p1));// Busca da Pilha de valores o operando 2
            {$ASMMODE intel}
            asm
               finit //Inicia a FPU
               fld op1 //Carrega o op1 na pilha
               fld op2 //Carrega o op1 na pilha
               fadd //Soma os dos valores
               fstp r //Retorna o resultado
            end;
            saux := FloatToStr(r); //Converte o resultado para String
            push(p1, saux); // Carrega o resultado na pilha de valores
       end
       else if ( saux = '-') then begin // Verifica se é uma Subtração a ser realizada
            op2 := StrToFloat(pop(p1)); // Busca da Pilha de valores o operando 1
            op1 := StrToFloat(pop(p1)); // Busca da Pilha de valores o operando 2
            {$ASMMODE intel}
            asm
               finit //Inicia a FPU
               fld op1 //Carrega o op1 na pilha
               fld op2 //Carrega o op2 na pilha
               fsub //Subtrai os dos valores
               fstp r //Retorna o resultado
            end;
            saux := FloatToStr(r); //Converte o resultado para String
            push(p1, saux); // Carrega o resultado na pilha de valores
       end;
     until (vazia(p2)= true); // repete até que a pilha esteja vazia

EditVisor.Text := pop(p1);//Mostra o Resultado



end;




end.

