% Meta Principal
% Metas secundarias
% ID unico, usar check-duplicates
pcar(Id,Capacity,Model,Type,[Id,Capacity,Model,Type]):-
    integer(Id), integer(Capacity).