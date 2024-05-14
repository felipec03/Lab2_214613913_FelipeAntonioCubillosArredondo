station(1, "USACH", c, 30, ST0),
station(2, "Estacion Central", c, 45, ST1),
station(3, "ULA", r, 45, ST2),
station(4, "Republica", r, 45, ST3),

section(ST0, ST1, 2, 50, S0),
section(ST1, ST2, 2.5, 55, S1),
section(ST2, ST3, 1.5, 30, S2),

line(1, "Linea 1", "RailTypeGenerico", [S0, S1, S2], L1).