:- module(tda_driver_21461391_CubillosArredondo, [driver/4]).
% Constuctor
%id (int) X nombre (string) X train-maker (string) X Driver
driver(Id, Nombre, TrainMaker, [Id, Nombre, TrainMaker]):-
    integer(Id), string(Nombre), string(TrainMaker).