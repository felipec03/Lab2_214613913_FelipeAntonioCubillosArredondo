:- module(tda_station,[station/5]).
% Constructor
% ID unico, usar check-duplicates
% id (int) X name (String)  X type (stationType) X stopTime (positive integer) X Station
% Meta Principal: 
% Metas secundarias: 
station(Id,Name,Type,StopTime,[Id,Name,Type,StopTime]):-
    integer(Id), string(Name), integer(StopTime); stopTime > 0.

% Getters