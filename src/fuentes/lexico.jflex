package fuentes;

import java_cup.runtime.Symbol;
import Interfaz.Interfaz_c3d;

//Scanner para generar C3D

%%
%{
    //Código de usuario
public Pintar pin = new Pintar();
%}

%cup
%class scanner
%public
%line
%char
%column
%full
%ignorecase

//simbolos

PAR_A   = "("
PAR_C   = ")"
LLAV_A  = "{"
LLAV_C  = "}" 
COMA    = ","
PYCOMA  = ";"
DPUNTO  = ":" 
ASIG    = "="
INC     = "++"
DEC     = "--"

//expresion

MAS     = "+"
MENOS   = "-"
OREXP   = "|"
POR     = "*"
DIV     = "/"
POT     = "^"


//relacionales

BELOW  = "<"
ABOVE  = ">"
BELOWE = "<="
ABOVEE = ">="
EQUAL  = "=="
NEQUAL = "!="  

//logicos

OR      = "||"
AND     = "&&"
XOR     = "!!"
NAND    = "!&"
NOT     = "!"

//palabras reservadas

INT1     = "Entero"
CHAR1    = "Caracter"
ALFABETO = "Alfabeto"
AUTOMATA = "Automata"
BOOLEANO = "Booleano"
CONJUNTO = "Conjunto"
ESTADO   = "Estados"
EXPRESION= "Expresion"
FIN      = "Fin"
FLOTANTE = "Flotante"
GRAFICO  = "Grafico"
INI   = "Inicio"
MOSTRAR  = "Mostrar"
NUEVO    = "Nuevo"
FUNCION  = "Funcion"
VALIDAR  = "Validar"
CON      = "Con"
AFD      = "esAfd"
AFN      = "esAfn"
EINICIAL = "estadoInicial"
EFINAL   = "estadosFinales"
TRANSICION = "transicion"
HACIA    = "Hacia"
ER       = "ExpReg"
MTABLA   = "mostrarTabla"
ORDEN    = "Orden"
OPRINPAL = "ordenPrincipal"

//sentencias

MIENTRAS = "mientras"
REPETIR   = "repetir"
HASTA    = "hasta"
PARA     = "para"
SI       = "si"
SINO     = "sino"
SELEC    = "seleccionar"
HACER    = "hacer"
DETENER  = "detener"
CONTINUA = "continuar"
CASO     = "caso"
DEFECTO  = "defecto"  

//expresiones

ENTERO  = [0-9]+
DECIMAL = [0-9]+[.][0-9]+     
ID      = [a-z]+[_0-9A-Za-z]*
ELEMENTO = [A-Za-z]
ELEMENTOESTADO = [a-zA-Z][0-9]+
SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]
COMENTARIOS =  ["//"(.)*]


%%

<YYINITIAL> {INT1}         { return new Symbol(sym.INT1, yyline, yycolumn,yytext());}
<YYINITIAL> {CHAR1}        { return new Symbol(sym.CHAR1, yyline, yycolumn,yytext());}
<YYINITIAL> {ALFABETO}     { return new Symbol(sym.ALFABETO, yyline, yycolumn,yytext());}
<YYINITIAL> {AUTOMATA}     { return new Symbol(sym.AUTOMATA, yyline, yycolumn,yytext());}
<YYINITIAL> {BOOLEANO}     { return new Symbol(sym.BOOLEANO, yyline, yycolumn,yytext());}
<YYINITIAL> {CONJUNTO}     { return new Symbol(sym.CONJUNTO, yyline, yycolumn,yytext());}
<YYINITIAL> {ESTADO}       { return new Symbol(sym.ESTADO, yyline, yycolumn,yytext());}
<YYINITIAL> {EXPRESION}    { return new Symbol(sym.EXPRESION, yyline, yycolumn,yytext());}
<YYINITIAL> {FIN }         { return new Symbol(sym.FIN, yyline, yycolumn,yytext());}
<YYINITIAL> {FLOTANTE}     { return new Symbol(sym.FLOTANTE, yyline, yycolumn,yytext());}
<YYINITIAL> {GRAFICO}      { return new Symbol(sym.GRAFICO, yyline, yycolumn,yytext());}
<YYINITIAL> {INI}          { pin.pintaAzul(yychar,yylength()); return new Symbol(sym.INI, yyline, yycolumn,yytext());}
<YYINITIAL> {MOSTRAR}      { return new Symbol(sym.MOSTRAR, yyline, yycolumn,yytext());}
<YYINITIAL> {NUEVO}        { return new Symbol(sym.NUEVO, yyline, yycolumn,yytext());}
<YYINITIAL> {FUNCION}      { return new Symbol(sym.FUNCION, yyline, yycolumn,yytext());}
<YYINITIAL> {VALIDAR}      { return new Symbol(sym.VALIDAR, yyline, yycolumn,yytext());}
<YYINITIAL> {CON}          { return new Symbol(sym.CON, yyline, yycolumn,yytext());}
<YYINITIAL> {AFD}          { return new Symbol(sym.AFD, yyline, yycolumn,yytext());}
<YYINITIAL> {AFN}          { return new Symbol(sym.AFN, yyline, yycolumn,yytext());}
<YYINITIAL> {EINICIAL}     { return new Symbol(sym.EINICIAL, yyline, yycolumn,yytext());}
<YYINITIAL> {EFINAL}       { return new Symbol(sym.EFINAL, yyline, yycolumn,yytext());}
<YYINITIAL> {TRANSICION}       { return new Symbol(sym.TRANSICION, yyline, yycolumn,yytext());}
<YYINITIAL> {HACIA}        { return new Symbol(sym.HACIA, yyline, yycolumn,yytext());}
<YYINITIAL> {ER}           { return new Symbol(sym.ER, yyline, yycolumn,yytext());}
<YYINITIAL> {MTABLA}       { return new Symbol(sym.MTABLA, yyline, yycolumn,yytext());}
<YYINITIAL> {ORDEN}        { return new Symbol(sym.ORDEN, yyline, yycolumn,yytext());}
<YYINITIAL> {OPRINPAL}     { return new Symbol(sym.OPRINPAL, yyline, yycolumn,yytext());}






<YYINITIAL> {MIENTRAS}  { return new Symbol(sym.MIENTRAS, yyline, yycolumn,yytext());}
<YYINITIAL> {HASTA}     { return new Symbol(sym.HASTA, yyline, yycolumn,yytext());}
<YYINITIAL> {REPETIR}   { return new Symbol(sym.REPETIR, yyline, yycolumn,yytext());}
<YYINITIAL> {PARA}      { return new Symbol(sym.PARA, yyline, yycolumn,yytext());}
<YYINITIAL> {SI}        { return new Symbol(sym.SI, yyline, yycolumn,yytext());}
<YYINITIAL> {SINO}      { return new Symbol(sym.SINO, yyline, yycolumn,yytext());}
<YYINITIAL> {SELEC}     { return new Symbol(sym.SELEC, yyline, yycolumn,yytext());}
<YYINITIAL> {CASO}      { return new Symbol(sym.CASO, yyline, yycolumn,yytext());}
<YYINITIAL> {HACER}     { return new Symbol(sym.HACER, yyline, yycolumn,yytext());}
<YYINITIAL> {DETENER}   { return new Symbol(sym.DETENER, yyline, yycolumn,yytext());}
<YYINITIAL> {CONTINUA}  { return new Symbol(sym.CONTINUA, yyline, yycolumn,yytext());}
<YYINITIAL> {DEFECTO}   { return new Symbol(sym.DEFECTO, yyline, yycolumn,yytext());}


<YYINITIAL> {PAR_A}     {return new Symbol(sym.PAR_A, yyline, yycolumn,yytext());}
<YYINITIAL> {PAR_C}     {return new Symbol(sym.PAR_C, yyline, yycolumn,yytext());}
<YYINITIAL> {LLAV_A}    {return new Symbol(sym.LLAV_A, yyline, yycolumn,yytext());}
<YYINITIAL> {LLAV_C}    {return new Symbol(sym.LLAV_C, yyline, yycolumn,yytext());}
<YYINITIAL> {COMA}      {return new Symbol(sym.COMA, yyline, yycolumn,yytext());}
<YYINITIAL> {PYCOMA}    {return new Symbol(sym.PYCOMA, yyline, yycolumn,yytext());}
<YYINITIAL> {DPUNTO}    {return new Symbol(sym.DPUNTO, yyline, yycolumn,yytext());}
<YYINITIAL> {ASIG}      {return new Symbol(sym.ASIG, yyline, yycolumn,yytext());}
<YYINITIAL> {INC}       {return new Symbol(sym.INC, yyline, yycolumn,yytext());}
<YYINITIAL> {DEC}       {return new Symbol(sym.DEC, yyline, yycolumn,yytext());}

//logicos
<YYINITIAL> {OR}    {return new Symbol(sym.OR, yyline, yycolumn,yytext());}
<YYINITIAL> {AND}   {return new Symbol(sym.AND, yyline, yycolumn,yytext());}
<YYINITIAL> {XOR}   {return new Symbol(sym.XOR, yyline, yycolumn,yytext());}
<YYINITIAL> {NAND}  {return new Symbol(sym.NAND, yyline, yycolumn,yytext());}
<YYINITIAL> {NOT}   {return new Symbol(sym.NOT, yyline, yycolumn,yytext());}

//relacionales
<YYINITIAL> {ABOVE}  {return new Symbol(sym.ABOVE, yyline, yycolumn,yytext());}
<YYINITIAL> {BELOW}  {return new Symbol(sym.BELOW, yyline, yycolumn,yytext());}
<YYINITIAL> {ABOVEE} {return new Symbol(sym.ABOVEE, yyline, yycolumn,yytext());}
<YYINITIAL> {BELOWE} {return new Symbol(sym.BELOWE, yyline, yycolumn,yytext());}
<YYINITIAL> {EQUAL}  {return new Symbol(sym.EQUAL, yyline, yycolumn,yytext());}
<YYINITIAL> {NEQUAL} {return new Symbol(sym.NEQUAL, yyline, yycolumn,yytext());}

//expresion

<YYINITIAL> {MAS}    { return new Symbol(sym.MAS, yyline, yycolumn,yytext());}
<YYINITIAL> {OREXP}    { return new Symbol(sym.OREXP, yyline, yycolumn,yytext());}
<YYINITIAL> {MENOS}    { return new Symbol(sym.MENOS, yyline, yycolumn,yytext());}
<YYINITIAL> {POR}    { return new Symbol(sym.POR, yyline, yycolumn,yytext());}
<YYINITIAL> {DIV}    { return new Symbol(sym.DIV, yyline, yycolumn,yytext());}
<YYINITIAL> {POT}    { return new Symbol(sym.POT, yyline, yycolumn,yytext());}


<YYINITIAL> {ENTERO}    { return new Symbol(sym.ENTERO, yyline, yycolumn,yytext());}
<YYINITIAL> {DECIMAL}   { return new Symbol(sym.DECIMAL, yyline, yycolumn,yytext());}
//Agregue ESTA
<YYINITIAL> {ELEMENTO}   { return new Symbol(sym.ELEMENTO, yyline, yycolumn,yytext());} 
<YYINITIAL> {ELEMENTOESTADO}   { return new Symbol(sym.ELEMENTOESTADO, yyline, yycolumn,yytext());} 

<YYINITIAL> {ID}        {return new Symbol(sym.ID, yyline, yycolumn,yytext());}
<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}
<YYINITIAL> {COMENTARIOS}     { /*Comentarios*/}


<YYINITIAL> . {
        String errLex = "Error léxico : '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+(yycolumn+1);
        Interfaz_c3d.notificar_er(errLex);
}
