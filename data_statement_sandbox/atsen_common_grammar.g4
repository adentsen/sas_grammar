grammar atsen_common_grammar;


expression
 : literal
 | Identifier
 | '(' expression ')'
 | expression '(' expressionList? ')'
 | expression '{' expression '}'
 | expression '[' expression ']'
 | <assoc=right> expression '**' expression
 | <assoc=right> ('+'|'-') expression
 | NOT expression
 | expression MIN expression
 | expression MAX expression
 | expression ('*'|'/'|'%') expression
 | expression ('+'|'-') expression
 | expression ('||' | '!!' ) expression
 | expression (EQ | NE | GT | LT | GE | LE ) expression
 //| expression (EQC | NEC | GTC | LTC | GEC | LEC ) expression
 | expression (IN | INColon) in_var_list
 | expression (AND | OR ) expression
 | <assoc=right> expression '=' expression
 ;





 

INT : [0-9]+ ; 

FloatingPointLiteral 
 : [0-9]* ('.') [0-9]+ ([eE][-+]?[0-9]+)?
 | INT '.'
 ;

 STRINGLITERAL
    :   '"' ( ESC | ~[\\"] )* '"'
    |   '\'' ( ESC | ~[\\'] )* '\''
    ;

DateLiteral: STRINGLITERAL D;
TimeLiteral: STRINGLITERAL T;
DateTimeLiteral: STRINGLITERAL D T;
BitLiteral: STRINGLITERAL B;
NameLiteral: STRINGLITERAL N;
HexLiteral: STRINGLITERAL X;

expressionList 
 : (expression | of_var_list) (',' (expression|of_var_list))*
 | expressionList ','+ expressionList
 ;

  of_var_list 
 : 'of' (Identifier '-' Identifier) ((COMMA 'of')? (Identifier '-' Identifier) )*
 | 'of' Identifier Identifier*
 | 'of' Identifier '[' '*' ']'
 ;

in_var_list
 : Identifier
 | '(' (literal|colonInts) (',' (literal|colonInts))* ')'
 ;
colonInts
 : INT ':' INT
 ;

 fragment ESC :   '\\' [abtnfrv"'\\]    ;


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



Identifier  : [a-zA-Z_] [a-zA-Z_0-9]*  ;
literal
 : INT
 | FloatingPointLiteral
 | STRINGLITERAL
 | DateLiteral
 | TimeLiteral
 | DateTimeLiteral
 | BitLiteral
 | NameLiteral
 | HexLiteral
 | DOT
 ;


WS  :   [ \r\t\u000C\n]+ -> channel(HIDDEN) ;
COMMENT    :   '/*' .*? '*/'    -> channel(HIDDEN) ;
LINE_COMMENT    :   '*' ~[\r\n]* -> channel(HIDDEN) ;

SEMICOLON :';';