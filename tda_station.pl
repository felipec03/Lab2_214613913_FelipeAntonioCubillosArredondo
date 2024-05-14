:- module('TDAstation',[station/5]).
% Constructor
% Meta Principal
% Metas secundarias
% ID unico, usar check-duplicates
station(Id,Name,Type,StopTime,[Id,Name,Type,StopTime]):-
    integer(Id).

% Getters