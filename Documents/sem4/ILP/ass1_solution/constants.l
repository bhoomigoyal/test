%{
#include <stdio.h>
%}

%%

[0-9]+|-?[0-9]+|0[Xx][a-fA-F0-9]+|[01]b[01]+ { printf("%s\tINTEGER LITERAL\n", yytext); }	

[0-9]*\.[0-9]+|-?[0-9]*\.[0-9]+  { printf("%s\tFLOATING NUMBER\n", yytext); }

\".*\" { printf("%s\tSTRING LITERAL\n", yytext); }

\'.\' | \'\\u[A-Fa-f0-9]+\' { printf("%s\tCHARACTER LITERAL\n", yytext); }

%%

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

