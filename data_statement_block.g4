grammar data_statement_block;
import atsen_common_grammar;

Data_Statement_Block : Data_Step_Firstline
                       (Data_Step_Body)+
                       RUN ';';

Data_Step_Firstline :
                DATA Dataset_Name';'
               ;


                   

Data_Step_Body : SET Identifier ';'
               | Expression ';'
               | INPUT (Identifier $? (Int* '.')?)* ';'
               | DATALINES ';'
               | DATALINES4 ';'
               | INFILE ''' Path '''? (Fileref(Path))? CARDS? CARDS4? DATALINES? DATALINES4? Device_Type?
               | (Literal)+
               ; 
