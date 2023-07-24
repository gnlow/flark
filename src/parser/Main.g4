grammar Main;

expr
    : Number                        # NumberExpr
    | Name                          # NameExpr
    | expr ('*' | '/') expr         # BinExpr
    | expr ('+' | '-') expr         # BinExpr
    | '(' expr ')'                  # ParenExpr
    ;

Mul:    '*';
Div:    '/';
Add:    '+';
Sub:    '-';
LParen: '(';
RParen: ')';

Number: ('0' | [1-9] [0-9]*) ('.' [0-9]+)?;
Name: [_a-zA-Z] [_a-zA-Z0-9]*;

WS:     [ \t\n\r]+ -> channel(HIDDEN);