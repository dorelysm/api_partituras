CREATE DATABASE api;

\l

\c api;

CREATE TABLE Categorias (
    id_cat SERIAL PRIMARY KEY,
    nombre TEXT,
    imagen TEXT
);

CREATE TABLE Canciones (
    id_can SERIAL PRIMARY KEY,
    nombre TEXT,
    descripcion TEXT,
    pdf BYTEA,
    categoria INTEGER,
    CONSTRAINT fk_categoria
        FOREIGN KEY(categoria)
            REFERENCES Categorias(id_cat)
);

INSERT INTO Categorias (nombre, imagen)
    VALUES ('Alberto Carbonell', 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2F4.bp.blogspot.com%2F_SS-zmJ1iMS8%2FSQFALNtsraI%2FAAAAAAAAAAo%2FFOpaslIlGdE%2Fw1200-h630-p-k-no-nu%2FCarbonell%2B1.JPG&f=1&nofb=1&ipt=c92ddad61b478f918c5966f33946570aaa21a7ff6f8668091c4728948369de73&ipo=images'),
    ('Villancicos', 'https://cdn.pixabay.com/photo/2012/04/01/13/03/christmas-tree-23384_960_720.png'),
    ('Folclor', 'https://cdn.pixabay.com/photo/2012/04/15/21/27/colombia-35364_960_720.png'),
    ('Himnos', 'https://cdn.pixabay.com/photo/2012/04/18/02/19/colombia-36572_960_720.png'),
    ('Internacional', 'https://cdn.pixabay.com/photo/2017/02/01/10/00/cartography-2029310_960_720.png'),
    ('Popular', 'https://cdn.pixabay.com/photo/2018/05/11/19/19/silhouette-3391415_960_720.png'),
    ('Música sacra', 'https://cdn.pixabay.com/photo/2016/10/26/20/28/cross-1772560_960_720.jpg');

select * from Categorias;