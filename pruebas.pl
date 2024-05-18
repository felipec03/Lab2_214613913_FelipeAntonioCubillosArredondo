station(0, "San Pablo", t, 20, ST0),
station(1, "USACH", r, 30, ST1),
station(2, "Estacion Central", r, 45, ST2),
station(3, "ULA", r, 45, ST3),
station(4, "Republica", r, 45, ST4),
station(5, "Los Heroes", c, 45, ST5),
station(6, "Los Dominicos", t, 35, ST6),

station(7, "Plaza de Maipu", t, 45,  ST7),
station(8, "Plaza de Armas", c, 45, ST8),
station(9, "Bellas Artes", r, 30, ST9),
station(10, "Baquedano", c, 40, ST10),
station(11, "Vicente Valdés", t, 50, ST11),

station(12, "Vespucio Norte", t, 40, ST12),
station(13, "Cerro Blanco", r, 50, ST13),
station(14, "Patronato", r, 45, ST14),
station(15, "Puente Cal y Canto", c, 40, ST15),
station(16, "La Cisterna", t, 30, ST16),

section(ST0, ST1, 2, 230, S0),
section(ST1, ST2, 2.5, 230, S1),
section(ST2, ST3, 1.5, 230, S2),
section(ST3, ST4, 1, 230, S3),
section(ST4, ST5, 3, 230, S4),
section(ST5, ST6, 2, 230, S5), % Sección a agregar

section(ST7, ST8, 3, 230, S6),
section(ST8, ST9, 2, 230, S7),
section(ST9, ST10, 1.5, 230, S8),
section(ST10, ST11, 3, 230, S9), % Sección a agregar

section(ST12, ST13, 1.5, 230, S10),
section(ST13, ST14, 2, 230, S11),
section(ST14, ST15, 3, 230, S12),
section(ST15, ST16, 3.5, 230, S13), % Sección a agregar

line(1, "Linea 1", "RailTypeGenerico", [S0, S1, S2, S3, S4], L1),
line(2, "Linea 5", "RTG", [S6, S7, S8], L5),
line(3, "Linea 2", "Plastico", [S10, S11, S12], L2),

lineLength(L1, LengthL1, DistanceL1, CostL1),
lineLength(L5, LengthL5, DistanceL5, CostL5),
lineLength(L2, LengthL2, DistanceL2, CostL2),

lineAddSection(L1, S5, L1Nuevo).