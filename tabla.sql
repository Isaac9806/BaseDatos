CREATE TABLE categorias (
    id_categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre       VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE productos (
    id_producto  NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre       VARCHAR2(100) NOT NULL,
    marca        VARCHAR2(50),
    precio       NUMBER(8,2) NOT NULL,
    stock        NUMBER(5) DEFAULT 0 NOT NULL,
    id_categoria NUMBER,
    activo       NUMBER(1) DEFAULT 1 NOT NULL,
    fecha_creacion DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT ck_precio CHECK (precio >= 0),
    CONSTRAINT ck_stock  CHECK (stock >= 0),
    CONSTRAINT ck_activo CHECK (activo IN (0, 1)),
    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria)
);