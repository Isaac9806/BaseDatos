CREATE TABLE PRODUCTOS_FERRETERIA (
    ID_PRODUCTO    NUMBER(10)     NOT NULL,             
    NOMBRE         VARCHAR2(100)  NOT NULL,               
    CATEGORIA      VARCHAR2(50)   NOT NULL,                
    MARCA          VARCHAR2(50)   NOT NULL,               
    PRECIO         NUMBER(10,2)   NOT NULL,               
    STOCK          NUMBER(8)      DEFAULT 0 NOT NULL,    
    PROVEEDOR      VARCHAR2(100)  NOT NULL,              
    FECHA_INGRESO  DATE           DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PK_PRODUCTOS_FERRETERIA PRIMARY KEY (ID_PRODUCTO),
    CONSTRAINT CK_PRODUCTOS_PRECIO CHECK (PRECIO >= 0),   
    CONSTRAINT CK_PRODUCTOS_STOCK  CHECK (STOCK >= 0)     
);


INSERT INTO PRODUCTOS_FERRETERIA VALUES (1, 'Martillo de uña 16 oz', 'Herramientas manuales', 'Stanley', 45.90, 35, 'Distribuidora Ferretera Lima S.A.C.', DATE '2026-09-10');
INSERT INTO PRODUCTOS_FERRETERIA VALUES (2, 'Taladro percutor 1/2" 650 W', 'Herramientas eléctricas', 'Bosch', 289.00, 12, 'Importaciones Industriales del Perú S.A.C.', DATE '2026-09-15');
INSERT INTO PRODUCTOS_FERRETERIA VALUES (3, 'Cemento Portland tipo I 42.5 kg', 'Construcción', 'Sol', 29.50, 200, 'Corporación de Materiales Andinos S.A.', DATE '2026-09-20');
INSERT INTO PRODUCTOS_FERRETERIA VALUES (4, 'Tubo PVC desagüe 2" x 3 m', 'Gasfitería', 'Pavco', 18.50, 80, 'Gasfitería y Accesorios Perú E.I.R.L.', DATE '2026-09-22');
INSERT INTO PRODUCTOS_FERRETERIA VALUES (5, 'Pintura látex blanca 1 galón', 'Pinturas', 'CPP', 62.00, 45, 'Colores y Acabados del Sur S.A.C.', DATE '2026-09-25');
INSERT INTO PRODUCTOS_FERRETERIA VALUES (6, 'Alicate universal 8"', 'Herramientas manuales', 'Truper', 22.50, 60, 'Distribuidora Ferretera Lima S.A.C.', DATE '2026-10-01');
INSERT INTO PRODUCTOS_FERRETERIA VALUES (7, 'Cinta métrica 5 m', 'Herramientas de medición', 'Stanley', 24.90, 50, 'Importaciones Industriales del Perú S.A.C.', DATE '2026-10-03');
INSERT INTO PRODUCTOS_FERRETERIA VALUES (8, 'Clavos de 2" (por kilo)', 'Fijaciones', 'Genérico', 7.50, 150, 'Aceros y Fijaciones Callao S.R.L.', DATE '2026-10-08');

COMMIT;

SELECT * FROM PRODUCTOS_FERRETERIA;