grammar atsen_common_grammar;


Expression
 : Literal
 | Identifier
 | '(' Expression ')'
 | Expression '(' ExpressionList? ')'
 | Expression '{' Expression '}'
 | Expression '[' Expression ']'
 | <assoc=right> Expression '**' Expression
 | <assoc=right> ('+'|'-') Expression
 | NOT Expression
 | Expression MIN Expression
 | Expression MAX Expression
 | Expression ('*'|'/'|'%') Expression
 | Expression ('+'|'-') Expression
 | Expression ('||' | '!!' ) Expression
 | Expression (EQ | NE | GT | LT | GE | LE ) Expression
 //| Expression (EQC | NEC | GTC | LTC | GEC | LEC ) Expression
 | Expression (IN | INColon) in_var_list
 | Expression (AND | OR ) Expression
 | <assoc=right> Expression '=' Expression
 ;





 

Int: [0-9]+ ; 

FloatingPointLiteral 
 : [0-9]* ('.') [0-9]+ ([eE][-+]?[0-9]+)?
 |Int'.'
 ;

 StringLiteral
    :   '"' ( ESC | ~[\\"] )* '"'
    |   '\'' ( ESC | ~[\\'] )* '\''
    ;

DateLiteral: StringLiteral D;
TimeLiteral: StringLiteral T;
DateTimeLiteral: StringLiteral D T;
BitLiteral: StringLiteral B;
NameLiteral: StringLiteral N;
HexLiteral: StringLiteral X;

ExpressionList 
 : (Expression | of_var_list) (',' (Expression|of_var_list))*
 | ExpressionList ','+ ExpressionList
 ;

  of_var_list 
 : 'of' (Identifier '-' Identifier) ((COMMA 'of')? (Identifier '-' Identifier) )*
 | 'of' Identifier Identifier*
 | 'of' Identifier '[' '*' ']'
 ;

in_var_list
 : Identifier
 | '(' (Literal|colonInts) (',' (Literal|colonInts))* ')'
 ;
colonInts
 :Int':'Int
 ;

 fragment ESC :   '\\' [abtnfrv"'\\]    ;



Filename_Statement: FILENAME Fileref Device_Type? StringLiteral (ENCODING '=' StringLiteral)? RECFM '=' Variable (Filename_Statement_Operating_Env_Opt)* ';'
				| FILENAME Fileref Device_Type? RECFM '=' Variable (Filename_Statement_Operating_Env_Opt)* ';'
				| FILENAME Fileref CLEAR '|'? _ALL_CLEAR '|'? CLEAR ';'
				| FILENAME Fileref LIST   '|'? _ALL_CLEAR '|'? LIST ';'
				;

Filename_Statement_Operating_Env_Opt : Variable = Variable;


Variable : Identifier;
					




Device_Type: DISK
			|DUMMY
			|GTERM
			|PIPE
			|PLOTTER
			|PRINTER
			|TAPE
			|TEMP
			|TERMINAL
			|UPRINTER
			;

//File Statement Constant
DISK:[Dd][Ii][Ss][Kk];
DUMMY:[Dd][Uu][Mm][Mm][Yy];
GTERM:[Gg][Tt][Ee][Rr][Mm];
PIPE:[Pp][Ii][Pp][Ee];
PLOTTER:[Pp][Ll][Oo][Tt][Tt][Ee][Rr];
PRINTER:[Pp][Rr][Ii][Nn][Tt][Ee][Rr];
TAPE:[Tt][Aa][Pp][Ee];
TEMP:[Tt][Ee][Mm][Pp];
TERMINAL:[Tt][Ee][Rr][Mm][Ii][Nn][Aa][Ll];
UPRINTER:[Uu][Pp][Rr][Ii][Nn][Tt][Ee][Rr];



Fileref : Identifier;


Path:('/' [a-zA-Z_0-9]*) '/'?;










 //Reserved keywords
 DATA : [Dd][Aa][Tt][Aa];
 NOT  : [Nn][Oo][Tt];
 MIN : [Mm][Ii][Nn];
 MAX : [Mm][Aa][Xx];
 EQ : [Ee][Qq];
 NE : [Nn][Ee];
 GT: [Gg][Tt];
 LT: [Ll][Tt];
 GE :[Gg][Ee];
 LE:[Ll][Ee];
 NULL : [nN][Uu][lL][Ll];
 //EQC:
 //NEC:
 //GTC:
//LTC:
 //GEC:
 //LEC:
 IN:[Ii][Nn];
 INColon:[Ii][Nn][Cc][Oo][Ll][Oo][Nn];
 AND:[Aa][Nn][Dd];
 OR: [Oo][Rr];
 SET: [Ss][Ee][Tt];
 INPUT : [Ii][Nn][Pp][Uu][Tt];
 DATALINES: [Dd][Aa][Tt][Aa][Ll][Ii][Nn][Ee][Ss];
 DATALINES4:[Dd][Aa][Tt][Aa][Ll][Ii][Nn][Ee][Ss]4;
 INFILE : [Ii][Nn][Ff]Ii[Ll][Ee];
 FILENAME:[Ff][Ii][Ll][Ee][Nn][Aa][Mm][Ee];
 LIBNAME: [Ll][Ii][Bb][Nn][Aa][Mm][Ee];
 CLEAR: [Cc][Ll][Ee][Aa][Rr];
 _ALL_LIST:_[Aa][Ll][Ll]_[Ll][Ii][Ss][Tt];
 _ALL_LIST:_[Aa][Ll][Ll]_[Cc][Ll][Aa][Rr];

 DESCENDING: [Dd][Ee][Ss][Cc][Ee][Nn][Dd][iI][Nn][Gg];
 NOTSORTED: [Nn][Oo][Tt][Ss][Oo][Rr][Tt][Ee][Dd];
 GROUPFORMAT:[Gg][rR][oO][uU][pP][fF][Oo][Rr][Mm][aA][tT];

 NOLIST : [Nn][Oo][Ll][Ii][Ss][Tt];
 DEBUG: [Dd][Ee][Bb][Uu][Gg];
 NESTING:[nN][Ee][Ss][Tt][Ii][Nn][Gg];
 STACK : [Ss][Tt][Aa][cC][Kk];

// nicknames
DOT : '.' ;
AT : '@' ;
EQUAL : '=' ;
COMMA : ',' ;
LBracket : '(' | '[' | '{' ;
RBracket : ')' | ']' | '}' ; 



fragment A:('a'|'A');
fragment B:('b'|'B');
fragment C:('c'|'C');
fragment D:('d'|'D');
fragment E:('e'|'E');
fragment F:('f'|'F');
fragment G:('g'|'G');
fragment H:('h'|'H');
fragment I:('i'|'I');
fragment J:('j'|'J');
fragment K:('k'|'K');
fragment L:('l'|'L');
fragment M:('m'|'M');
fragment N:('n'|'N');
fragment O:('o'|'O');
fragment P:('p'|'P');
fragment Q:('q'|'Q');
fragment R:('r'|'R');
fragment S:('s'|'S');
fragment T:('t'|'T');
fragment U:('u'|'U');
fragment V:('v'|'V');
fragment W:('w'|'W');
fragment X:('x'|'X');
fragment Y:('y'|'Y');
fragment Z:('z'|'Z');


Dataset_Name :   (Libref '.' Identifier)+ (Identifier)*';'
               | (Identifier)+ (Libref '.' Identifier)* ';'
               ;

Libref: Identifier ';';



Identifier  : [a-zA-Z_] [a-zA-Z_0-9]*  ;

Literal :Int
  	   	| FloatingPointLiteral
 		| StringLiteral
		 | DateLiteral
		 | TimeLiteral
		 | DateTimeLiteral
		 | BitLiteral
		 | NameLiteral
		 | HexLiteral
		 | DOT
		 ;



Variable : Identifier;
				


WS  :   [ \r\t\u000C\n]+ -> channel(HIDDEN) ;
COMMENT    :   '/*' .*? '*/'    -> channel(HIDDEN) ;
LINE_COMMENT    :   '*' ~[\r\n]* -> channel(HIDDEN) ;

SEMICOLON :';';