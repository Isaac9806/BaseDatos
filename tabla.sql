CREATE TABLE productos (
    id_producto NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    marca VARCHAR2(50),
    precio NUMBER(8,2) NOT NULL,
    stock NUMBER(5),
    categoria VARCHAR2(50)
);
