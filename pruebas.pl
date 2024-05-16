station(0, "San Pablo", t, 20, ST0)
station(1, "USACH", r, 30, ST1),
station(2, "Estacion Central", r, 45, ST2),
station(3, "ULA", r, 45, ST3),
station(4, "Republica", r, 45, ST4),
station(5, "Los Heroes", c, 45, ST5),
station(6, "Los Dominicos", t, ST6),

station(7, "Plaza de Maipu", t, ST7),
station(8, "Plaza de Armas", c, ST8),
station(9, "Bellas Artes", r, ST9),
station(10, "Baquedano", c, ST10),
station(11, "Vicente Valdés", t, ST11),

station(12, "Vespucio Norte", t, ST12),
station(13, "Cerro Blanco", r, ST13),
station(14, "Patronato", r, ST14),
station(15, "Puente Cal y Canto", c, ST15),
station(16, "La Cisterna", t, ST16),

section(ST0, ST1, 2, 230, S0),
section(ST1, ST2, 2.5, 230, S1),
section(ST2, ST3, 1.5, 230, S2),
section(ST3, ST4, 1, 23O, S3),
section(ST4, ST5, 3, 230, S4),
section(ST5, ST6, 2, 230, S5),

section(ST7, ST8, 3, 230, S6),
section(ST8, ST9, 2, 230, S7),
section(ST9, ST10, 1.5, 230, S8),
section(ST10, ST11, 3, 230, S9),

section(ST12, ST13, 1.5, 230, S10),
section(ST13, ST14, 2, 230, S11),
section(ST14, ST15, 3, 230, S12),
section(ST15, ST16, 3.5, 230, S13),

line(1, "Linea 1", "RailTypeGenerico", [S0, S1, S2, S3, S4, S5], L1),
line(2, "Linea 5", "RTG", [S6, S7, S8, S9], L5),
line(3, "Linea 2", "Plastico", [S10, S11, S12, S13], L2),

lineLength(L1, LengthL1, DistanceL1, CostL1),
lineLength(L5, LengthL5, DistanceL5, CostL5),
lineLength(L2, LengthL2, DistanceL2, CostL2),