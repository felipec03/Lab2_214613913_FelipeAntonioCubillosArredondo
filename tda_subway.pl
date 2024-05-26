:- use_module(tda_section).
:- use_module(tda_line).
:- use_module(tda_train).
:- use_module(tda_driver).
% Constructor
% id (int) X nombre (string) X Subway
subway(Id, Nombre, [Id, Nombre, _, _, _]):-
    integer(Id), string(Nombre).

% Requisitos Funcionales
% sub (Subway) X trains (List Train) X SubwayOut (Subway)
% Meta Principal:
% Meta Secundaria: 
subwayAddTrain(Subway, Trains, SubwayOut):-
    subway(_,_,Subway). 

% sub (Subway) X lines (List Line) X SubwayOut (Subway)
% Meta Principal:
% Meta Secundaria: 
subwayAddLine(Subway, Lines, SubwayOut):-
    subway(_,_,Subway).

% sub (Subway) X drivers (List Driver) X SubwayOut (Subway)
% Meta Principal:
% Meta Secundaria: 
subwayAddLine(Subway, Lines, SubwayOut):-
    subway(_,_,Subway).