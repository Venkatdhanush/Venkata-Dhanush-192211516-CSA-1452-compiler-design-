%{
#include <stdio.h>
#include <string.h>
%}

%%

[a-zA-Z]+ { printf("Length of word '%s' is: %lu\n", yytext, strlen(yytext));}

%% 
int yywrap(){}

int main(void) {
    yylex();
    return 0;
}