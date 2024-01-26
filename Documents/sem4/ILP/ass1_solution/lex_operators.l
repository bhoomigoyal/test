/*Definition Section*/
%{
	#include<stdio.h>
%}
/*Rule Section*/
%%

"@"      { printf("%s \t AT_SYMBOL\n", yytext); }
"@"ID    { printf("%s \t  AT_SYMBOL_IDENTIFIER\n"); }
"["      { printf(" %s \t LEFT_BRACKET\n",yytext); }
"]"      { printf(" %s \t RIGHT_BRACKET\n",yytext); }
"("      { printf(" %s \t LEFT_PAREN\n", yytext); }
")"      { printf(" %s \t RIGHT_PAREN\n", yytext); }
"{"      { printf(" %s \t LEFT_BRACE\n", yytext); }
"}"      { printf(" %s \t RIGHT_BRACE\n", yytext); }
"->"     { printf(" %s \t ARROW\n", yytext); }
"."      { printf(" %s \t DOT\n", yytext); }
">>"    { printf(" %s \t RIGHT_SHIFT\n", yytext); }
"<<"     { printf(" %s \t LEFT_SHIFT\n", yytext); }
"++"     { printf(" %s \t INCREMENT\n", yytext); }
"--"     { printf(" %s \t DECREMENT\n", yytext); }
"+"     { printf(" %s \t PLUS\n", yytext); }
"-"     { printf(" %s \t MINUS\n", yytext); }	
"*"     { printf(" %s \t MULTIPLY\n", yytext); }
"/"     { printf(" %s \t DIVIDE\n", yytext); }	
"%"     { printf(" %s \t MODULUS\n", yytext); }
"?:"     { printf(" %s \t CONDITIONAL\n", yytext); }
"=="     { printf("%s \t EQUAL\n",yytext); }
"!="     { printf("%s \t NOT_EQUAL\n",yytext); }
"<="     { printf(" %s \t LESS_THAN_OR_EQUAL\n", yytext); }
">="     { printf("%s \t GREATER_THAN_OR_EQUAL\n", yytext); }
"&&"     { printf(" %s \t LOGICAL_AND\n", yytext); }
"||"     { printf(" %s \t LOGICAL_OR\n", yytext); }
"!"      { printf(" %s \t LOGICAL_NOT\n", yytext); }
"&"      { printf(" %s \t BITWISE_AND\n", yytext); }
"|"      { printf(" %s \t BITWISE_OR\n", yytext); }
"^"      { printf(" %s \t BITWISE_XOR\n", yytext); }
"~"      { printf(" %s \t BITWISE_NOT\n", yytext); }
"="      { printf(" %s \t ASSIGN\n", yytext); }
"+="     { printf(" %s \t ADD_ASSIGN\n", yytext); }
"-="     { printf(" %s \t SUBTRACT_ASSIGN\n", yytext); }
"*="     { printf(" %s \t MULTIPLY_ASSIGN\n", yytext); }
"/="     { printf(" %s \t DIVIDE_ASSIGN\n", yytext); }
"%="     { printf(" %s \t MODULO_ASSIGN\n", yytext); }
"<<="    { printf("%s \t is a LEFT_SHIFT_ASSIGN \n", yytext); }
">>="    { printf(" %s \t RIGHT_SHIFT_ASSIGN\n, ", yytext); }
"&="     { printf(" %s \t BITWISE_AND_ASSIGN\n", yytext); }
"|="     { printf(" %s \t BITWISE_OR_ASSIGN\n", yytext); }
"^="     { printf(" %s \t BITWISE_XOR_ASSIGN\n", yytext); }
","      { printf(" %s \t COMMA\n", yytext); }
";"      { printf(" %s \tSEMICOLON\n", yytext); }
":"      { printf(" %s \tCOLON\n", yytext); }
"<"     { printf("%s \t  LESS_THAN \n", yytext); }	
">"     { printf("%s \t GREATER_THAN \n", yytext); }
					

.|\n ; 												
%%

/*call the yywrap function*/
int yywrap()								
{
	return 1;
}
/*Auxiliary function*/
int main(void)
{
	/*call the yylex function.*/
	printf("Enter String \n");
	yylex();
	return 0;
}





