:- use_module(tda_pcar).
% Constructor
% id (int) X maker (string) X rail-type (string) X speed (positive number) X pcars (Lista de PCar) X Train
% Meta Principal: 
% Metas secundarias: 
train(Id, Maker, RailType, Speed, Pcars, Train):-
    integer(Id), Speed > 0, string(Maker), string(RailType).

%-------------- Requisitos Funcionales --------------

% Train Add Car
% train (train) X pcar (pcar) X position (positive-integer U {0}) X Train
% Meta Principal: 
% Metas secundarias: 
trainAddCar(Train, Pcar, Position, TrainOut):-

% Train Remove Car
% train (train) X position (positive-integer U {0}) X Train
% Meta Principal: 
% Metas secundarias: 
trainRemoveCar(Train, Position, TrainOut):-

% Is Train
% Train -> bool
% Meta Principal: 
% Metas secundarias: 
isTrain(Train):-

% Train Capacity
% Train X capacity (Number)
% Meta Principal: 
% Metas secundarias: 
trainCapacity(Train, Capacity):-
