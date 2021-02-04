company(sumsum).
company(appy).
competitor(sumsum,appy).
smartPhoneTech(galacticaS3).
develop(galacticaS3,sumsum).
boss(stevey).
stole(stevey,galacticaS3,sumsum).

business(X) :- smartPhoneTech(X).
rival(X) :- competitor(X,appy).
unethical(X) :- boss(X), smartPhoneTech(Y), rival(Z), company(Z), stole(X,Y,Z).





