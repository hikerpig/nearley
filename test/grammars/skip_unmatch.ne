@{%
var WS = /\s+/
%}

@skip_unmatch %WS

start -> a {% id %}

a -> letter {% id %}
   | "(" a %WS ")" # keep the letter WS if it's specified

letter -> [a-z]:+ {% (d) => d.join('') %}
