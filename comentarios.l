
%%
"//"(.)* {}

"/*"[^}]*"*/" {} 

"#"(.)* {}

. {printf("%s",yytext);}

%%

int yywrap(){return 1;}

int main(){

yyin= fopen("jarvis.txt","r");
yylex();
fclose(yyin);

return 0;



}
