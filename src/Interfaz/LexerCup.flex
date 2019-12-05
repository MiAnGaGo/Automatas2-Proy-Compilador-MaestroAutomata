package codigo;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Comillas */
( "\"" ) {return new Symbol(sym.Comillas, yychar, yyline, yytext());}

/* Tipos de datos */
( "Entero"|"Flotante" ) {return new Symbol(sym.T_dato, yychar, yyline, yytext());}

/* Tipo de dato Int (Para el main) */
( "Entero" ) {return new Symbol(sym.Int, yychar, yyline, yytext());}

/* Tipo de dato Int (Para el main) */
( "Flotante" ) {return new Symbol(sym.Float, yychar, yyline, yytext());}

/* Tipo de dato String */
( "Cadena" ) {return new Symbol(sym.cadena, yychar, yyline, yytext());}

/* Tipo de dato Estado */
( "Estado" ) {return new Symbol(sym.estado, yychar, yyline, yytext());}

/* Tipo de dato Alfabeto */
( "Alfabeto" ) {return new Symbol(sym.alfabeto, yychar, yyline, yytext());}

/* Tipo de dato Boleano*/
( "Boleano" ) {return new Symbol(sym.boleano, yychar, yyline, yytext());}

/* Tipo de dato Conjunto */
( "Conjunto" ) {return new Symbol(sym.conjunto, yychar, yyline, yytext());}

/* Tipo de dato Caracter */
( "Caracter" ) {return new Symbol(sym.caracter, yychar, yyline, yytext());}

/* Tipo de dato Expresion */
( "Expresion" ) {return new Symbol(sym.expre, yychar, yyline, yytext());}

/* Palabra resevada inicio */
( "Inicio" ) {return new Symbol(sym.inicio, yychar, yyline, yytext());}

/* Palabra resevada Funcion */
( "Funcion" ) {return new Symbol(sym.funcion, yychar, yyline, yytext());}

/* Palabra resevada fin */
( "Fin" ) {return new Symbol(sym.fin, yychar, yyline, yytext());}

/* Palabra resevada esAfd */
( "esAfd" ) {return new Symbol(sym.afd, yychar, yyline, yytext());}

/* Palabra resevada esAfn */
( "esAfn" ) {return new Symbol(sym.afn, yychar, yyline, yytext());}

/* Palabra resevada nuevo */
( "Nuevo" ) {return new Symbol(sym.nuevo, yychar, yyline, yytext());}

/* Palabra resevada Validar*/
( "Validar" ) {return new Symbol(sym.validar, yychar, yyline, yytext());}

/* Palabra resevada Monstrar */
( "Mostrar" ) {return new Symbol(sym.mostrar, yychar, yyline, yytext());}

/* Palabra resevada grafico */
( "Grafico" ) {return new Symbol(sym.grafico, yychar, yyline, yytext());}

/* Palabra resevada mostrarTabla */
( "mostrarTabla" ) {return new Symbol(sym.Mostrartabla, yychar, yyline, yytext());}

/* Palabra resevada Automata */
( "Automata" ) {return new Symbol(sym.automata, yychar, yyline, yytext());}

/* Palabra resevada ordenPrincipal */
( "ordenPrincipal" ) {return new Symbol(sym.ordenprincipal, yychar, yyline, yytext());}

/* Palabra resevada ER */
( "ER" ) {return new Symbol(sym.er, yychar, yyline, yytext());}

/* Palabra resevada Con */
( "Con" ) {return new Symbol(sym.con, yychar, yyline, yytext());}

/* Palabra resevada Hacia */
( "Hacia" ) {return new Symbol(sym.hacia, yychar, yyline, yytext());}

/* Palabra reservada If */
( "si" ) {return new Symbol(sym.If, yychar, yyline, yytext());}

/* Palabra reservada Else */
( "sino" ) {return new Symbol(sym.Else, yychar, yyline, yytext());}

/* Palabra reservada Do */
( "hacer" ) {return new Symbol(sym.Do, yychar, yyline, yytext());}

/* Palabra reservada While */
( "mientras" ) {return new Symbol(sym.While, yychar, yyline, yytext());}

/* Palabra reservada For */
( "para" ) {return new Symbol(sym.For, yychar, yyline, yytext());}

/* Operador Igual */
( "=" ) {return new Symbol(sym.Igual, yychar, yyline, yytext());}

/* Operador Suma */
( "+" ) {return new Symbol(sym.Suma, yychar, yyline, yytext());}

/* Operador Resta */
( "-" ) {return new Symbol(sym.Resta, yychar, yyline, yytext());}

/* Operador Multiplicacion */
( "*" ) {return new Symbol(sym.Multiplicacion, yychar, yyline, yytext());}

/* Operador Division */
( "/" ) {return new Symbol(sym.Division, yychar, yyline, yytext());}

/* Operadores logicos */
( "&&" | "||" | "!" | "&" | "|" ) {return new Symbol(sym.Op_logico, yychar, yyline, yytext());}

/*Operadores Relacionales */
( ">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>" ) {return new Symbol(sym.Op_relacional, yychar, yyline, yytext());}

/* Operadores Atribucion */
( "+=" | "-="  | "*=" | "/=" | "%=" | "=" ) {return new Symbol(sym.Op_atribucion, yychar, yyline, yytext());}

/* Operadores Incremento y decremento */
( "++" | "--" ) {return new Symbol(sym.Op_incremento, yychar, yyline, yytext());}

/*Operadores Booleanos*/
( true | false ) {return new Symbol(sym.Op_booleano, yychar, yyline, yytext());}

/* Parentesis de apertura */
( "(" ) {return new Symbol(sym.Parentesis_a, yychar, yyline, yytext());}

/* Parentesis de cierre */
( ")" ) {return new Symbol(sym.Parentesis_c, yychar, yyline, yytext());}

/* Llave de apertura */
( "{" ) {return new Symbol(sym.Llave_a, yychar, yyline, yytext());}

/* Llave de cierre */
( "}" ) {return new Symbol(sym.Llave_c, yychar, yyline, yytext());}

/* Corchete de apertura */
( "[" ) {return new Symbol(sym.Corchete_a, yychar, yyline, yytext());}

/* Corchete de cierre */
( "]" ) {return new Symbol(sym.Corchete_c, yychar, yyline, yytext());}

/* Marcador de inicio de algoritmo */
( "main" ) {return new Symbol(sym.Main, yychar, yyline, yytext());}

/* Punto y coma */
( ";" ) {return new Symbol(sym.P_coma, yychar, yyline, yytext());}

/* coma */
( "," ) {return new Symbol(sym.coma, yychar, yyline, yytext());}

/* Identificador */
{L}({L}|{D})+ {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

/* Numero */
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* char */
{L} {return new Symbol(sym.elemento, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
