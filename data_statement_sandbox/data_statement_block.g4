grammar data_statement_block;
import atsen_common_grammar;

datastatementblock : data_step_firstline
					   (data_step_body)+
					   data_step_lastline;

data_step_firstline :
                DATA (Identifier '.' Identifier)+ ';'
				 	|DATA (Identifier)+ ';'
					|DATA (Identifier '.' Identifier)+ (Identifier)+';'
					|DATA (Identifier)+ (Identifier '.' Identifier)+ ';'
					;

data_step_body : SET Identifier ';'; 
data_step_lastline : RUN;

