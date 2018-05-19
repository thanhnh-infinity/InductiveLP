coin(1..3).

1{heads(C);tails(C)}1 :- coin(C).

:~ heads(C).[1@2, C]  % WEAK constraint : heads(C) KHONG NEN co trong answer set => Muc do uu tien cao nhat @2. => Solve it firstly
%:- heads(C).        % STRONG constraint : heads(C) KHONG DUOC co trong Answer Set
:~ tails(C).[1@1, C]  % WEAK constraint : tails(C) KHONG NEN co trong answer set => Muc do uu tien thap hon @1. => Solve it later

#show heads/1.
#show tails/1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% More formally, WEAK constraint is written :~ b1,...,bn. [w@1,t1,...,tn] where b1,..,bn are literals, w is either a variable or an integer called the weight, l is an integer called the level and t1,...tn are terms. A ground weak constraint of this form has the meaning that IF b1,...,bn are satisfied by an answer set A then WE MUST PAY the PENALTY w. The term t_i are to specify which of the ground weak constraints should be considered distinct . The aim is to find the answer set which pays the MINIMUM PENALTY. ONly if 2 answer sets PAY EQUAL PENATIES for all levels above l do we consider the weak constraints of level l.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Given an ASP program B => Background knowledge
%       a set of ASP rules S => Search space (Constraints)
%       E_inc 
%       E_exc 
% FIND : another program H such that
%       H is composed of S => H IS SUBSET OF S
%       Answer set of program {H and B} satisfy all e in E_pos
%       Answer set of progrma {H and B} DO NOT satisfy all e in E_neg   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Positive EXAMPLES specidied : #pos(example_name,{e^inc_1,e^inc_2,..,e^inc_n},{e^exc_1,..,e^exc_})
%    example_name is a unique identifier for the example.
% 2. Negative Exampes : #neg
% 3. A rule r in the SEARCH SPACE , r in S , with length l  is specified as l ~ s, length l is number of literals in both head and body of rule r
% 4. B is specified normally
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Search Space can be designed by full rule . But the convenial way is to use Language Bias. Mode declaration
% var(t) or const(t) for term t => idea is can be replaced by any variable or constant of type t
% Each constant c which is allowed to replace a const term of type t should be specified as #constant(t,c)

% An atom a is compatible with a mode declaration m if each of place holder constatns and variables in m has been replaced by a constatn or variable of correct type.
% There are three types of mode declaration : 
%     modeh : the normal head declaration 
%     modeha : the  aggregate head declaration
%     modeb : the body declaration
%     modeo : optimization body declaration

% Each mode declaration can also be specified as recall => An integer specifying the maximum number of times that mode declaration can be used in each rule.

% An user can specify a mode declaration stating that the predicate p with arity 1 can be used in each rule up to 2 times with a single variable of type type1, #modeb(2,p(var(type1)).
% Maximum number of variables in any rule can be specified using predicate #maxv; #maxv(2) state that at most 2 variables can be used in each rule of the hypothesis. #max_penalty : upper bound on the size of the hypothesis return. 




