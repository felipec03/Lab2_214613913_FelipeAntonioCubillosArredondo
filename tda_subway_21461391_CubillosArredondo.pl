:- use_module(tda_section_21461391_CubillosArredondo).
:- use_module(tda_line_21461391_CubillosArredondo).
:- use_module(tda_train_21461391_CubillosArredondo).
:- use_module(tda_driver_21461391_CubillosArredondo).
% Constructor
% id (int) X nombre (string) X Subway
subway(Id, Nombre,[Id, Nombre,_,_,_]):-
    integer(Id), string(Nombre).

% Requisitos Funcionales
% sub (Subway) X trains (List Train) X SubwayOut (Subway)
% Meta Principal:
% Meta Secundaria: 
subwayAddTrain(Subway, Trains, SubwayOut):-
    subway(IdOut,NombreOut,Subway),
    SubwayOut = [IdOut, NombreOut, Trains, _, _].

% sub (Subway) X lines (List Line) X SubwayOut (Subway)
% Meta Principal:
% Meta Secundaria: 
subwayAddLine(Subway, Lines, SubwayOut):-
    subway(IdOut,NombreOut,Subway),
    SubwayOut = [IdOut, NombreOut, _, Lines, _].


% sub (Subway) X drivers (List Driver) X SubwayOut (Subway)
% Meta Principal:
% Meta Secundaria: 
subwayAddDriver(Subway, Drivers, SubwayOut):-
    subway(IdOut,NombreOut,Subway),
    SubwayOut = [IdOut,NombreOut,_,_,Drivers].

% sub (Subway) X strOut (String)
% Meta Principal:
% Meta Secundaria: 

subwayToString(Subway, StringOut):-
    flatten(Subway, FlatSubway),
    atomic_list_concat(FlatSubway, ', ', OrderedSubway), 
    atom_string(OrderedSubway, StringOut).