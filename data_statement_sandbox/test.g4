grammar test;

generic: expression;

expression: Identifier* INT* '~'* '`'* '!'* '@'* '#'* '$'* '%'* '^'* '&'* '*'* 	'='*  
						';'* ':'* '"'* ')'* '_'* '-'*  '('*
						'|'* '['* ']'* '{'* '}'*   
						'+'* 						
						'/'* '?'* ','* '.'* '<'* '>'* '"'* (STRINGLITERAL);


STRINGLITERAL
    :   '"' ( ESC | ~[\\"] )* '"'
    |   '\'' ( ESC | ~[\\'] )* '\''
    ;
fragment ESC :   '\\' [abtnfrv"'\\]    ;

Identifier  : [a-zA-Z_] [a-zA-Z_0-9]*  ;
INT : [0-9]+ ;


WS :[ \t\n\r]+ -> skip ;

