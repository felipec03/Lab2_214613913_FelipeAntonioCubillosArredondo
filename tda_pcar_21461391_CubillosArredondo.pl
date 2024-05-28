:- module(tda_pcar_21461391_CubillosArredondo, [pcar/5]).
% ID unico, usar check-duplicates
% id (int) X capacity (positive integer) X model (string) X type (car-type) X PCar
% Meta Principal: 
% Metas secundarias: 
pcar(Id,Capacity,Model,Type,[Id,Capacity,Model,Type]):-
    integer(Id), 
    string(Model),
    number(Capacity).