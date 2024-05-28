:- module(tda_train_21461391_CubillosArredondo, [train/6, trainAddCar/4, trainRemoveCar/3, trainCapacity/2, isTrain/1]).
:- use_module(tda_pcar_21461391_CubillosArredondo).
% Constructor
% id (int) X maker (string) X rail-type (string) X speed (positive number) X pcars (Lista de PCar) X Train
% Meta Principal: train(Id, Maker, RailType, Speed, Pcars, [Id, Maker, RailType, Speed, Pcars])/6
% Metas secundarias: 
train(Id, Maker, RailType, Speed, Pcars, [Id, Maker, RailType, Speed, Pcars]):-
    integer(Id), Speed > 0, string(Maker), string(RailType).

%-------------- Requisitos Funcionales --------------

% Train Add Car
% train (train) X pcar (pcar) X position (positive-integer U {0}) X Train
% Meta Principal: trainAddCar(Train, Pcar, Position, TrainOut)/4
% Metas secundarias: 
trainAddCar(Train, Pcar, Position, TrainOut):-
    train(NewId,NewMaker,NewRailType,NewSpeed,PcarList,Train),
    nth0(Position,NewPcarList,Pcar,PcarList),
    train(NewId, NewMaker, NewRailType, NewSpeed, NewPcarList, TrainOut).
    
% Train Remove Car
% train (train) X position (positive-integer U {0}) X Train
% Meta Principal: trainRemoveCar(Train, Position, TrainOut)/3
% Metas secundarias: 
trainRemoveCar(Train, Position, TrainOut):-
    train(NewId,NewMaker,NewRailType,NewSpeed,PcarList,Train),
    nth0(Position,NewPcarList,_,PcarList),
    train(NewId, NewMaker, NewRailType, NewSpeed, NewPcarList, TrainOut).

% Is Train
% Train -> bool
% Meta Principal: 
% Metas secundarias: 

% Función auxiliar para contar ocurrencias
% Metas Principales: isTrain(Train)/1
% Metas Secundarias
contar_ocurrencias(_, [], 0).
contar_ocurrencias(Elemento, [Elemento|T], Contador) :-
    contar_ocurrencias(Elemento, T, ContadorTemporal),
    Contador is ContadorTemporal + 1.
contar_ocurrencias(Elemento, [_|T], Contador) :-
    contar_ocurrencias(Elemento, T, Contador).
contar_sub_ocurrencias(Elemento, List, Contador):-
    flatten(List, NewList),
    contar_ocurrencias(Elemento, NewList, Contador).  
 
isTrain(Train):-
    train(_,_,_,_,[HeadPcarList|TailPcarList],Train),
    pcar(_,_,_,FirstPcarType,HeadPcarList),
    last(TailPcarList, LastPcar),
    pcar(_,_,_,LastPcarType,LastPcar),
    FirstPcarType = LastPcarType,
    FirstPcarType = "tr".

% Train Capacity
% Train X capacity (Number)
% Meta Principal: trainCapacity(Train, Capacity)/2
% Metas secundarias: 
intTrainCapacity([], 0).
intTrainCapacity([HeadPcarList|TailPcarList], Output):-
    intTrainCapacity(TailPcarList, Acum),
    pcar(_,CurrentCapacity,_,_,HeadPcarList),
    Output is CurrentCapacity + Acum.

trainCapacity(Train, Capacity):-
    train(_,_,_,_,PcarList, Train),
    intTrainCapacity(PcarList, Capacity).