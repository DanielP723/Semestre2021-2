INSERT INTO VENDEDOR VALUES ('V01','Jorge Perez','Activo','Cali');
INSERT INTO VENDEDOR VALUES ('V02','Yanet Rodriguez','Inactivo','Medellin');
INSERT INTO VENDEDOR VALUES ('V03','Juan Gomez','Pendiente','Medellin');
INSERT INTO VENDEDOR VALUES ('V04','Pedro Forero','Activo','Cali');
INSERT INTO VENDEDOR VALUES ('V05','Jorge Perez','Activo','Bogota');
COMMIT;
INSERT INTO PROYECTOS VALUES ('P01','CONSTRUCCION','MEDELLIN');
INSERT INTO PROYECTOS VALUES ('P02','DECORACION','BUCARAMANGA');
INSERT INTO PROYECTOS VALUES ('P03','ENSAMBLE','BOGOTA');
INSERT INTO PROYECTOS VALUES ('P04','CONFIGURACION','BOGOTA');
INSERT INTO PROYECTOS VALUES ('P05','ALMACENAMIENTO','CALI');
INSERT INTO PROYECTOS VALUES ('P06','DISTRIBUCION','BARRANQUILLA');
INSERT INTO PROYECTOS VALUES ('P07','LAVADO','CALI');
COMMIT;
INSERT INTO ARTICULOS VALUES ('A01','LADRILLO','ROJO',12.5, 'CALI');
INSERT INTO ARTICULOS VALUES ('A02','PAPEL','AZUL',13.8, 'MEDELLIN');
INSERT INTO ARTICULOS VALUES ('A03','DISCO','GRIS',10.9, 'BUCARAMANGA');
INSERT INTO ARTICULOS VALUES ('A04','GRANITO','GRIS',5.6, 'CALI');
INSERT INTO ARTICULOS VALUES ('A05','PUNTILLA','AZUL',2.9, 'MEDELLIN');
INSERT INTO ARTICULOS VALUES ('A06','TUERCA','VERDE',10.8, 'CALI');
COMMIT;
INSERT INTO VEND_PRO_ART VALUES ('V01','A01','P01',200); 
INSERT INTO VEND_PRO_ART VALUES ('V01','A01','P04',700); 
COMMIT;
INSERT INTO VEND_PRO_ART VALUES ('V02','A03','P01',400);
INSERT INTO VEND_PRO_ART VALUES ('V02','A03','P02',450);
INSERT INTO VEND_PRO_ART VALUES ('V02','A03','P03',600);
INSERT INTO VEND_PRO_ART VALUES ('V02','A03','P04',210);
INSERT INTO VEND_PRO_ART VALUES ('V05','A01','P04',740);
INSERT INTO VEND_PRO_ART VALUES ('V05','A03','P04',680);
INSERT INTO VEND_PRO_ART VALUES ('V05','A04','P04',880);
COMMIT;
INSERT INTO VEND_PRO_ART VALUES ('V05','A02','P02',850);
INSERT INTO VEND_PRO_ART VALUES ('V05','A02','P04',654);
INSERT INTO VEND_PRO_ART VALUES ('V05','A05','P05',250);
INSERT INTO VEND_PRO_ART VALUES ('V03','A03','P01',300); 
INSERT INTO VEND_PRO_ART VALUES ('V03','A04','P02',100);
COMMIT;
INSERT INTO VEND_PRO_ART VALUES ('V02','A03','P05',890);
INSERT INTO VEND_PRO_ART VALUES ('V02','A03','P06',650);
INSERT INTO VEND_PRO_ART VALUES ('V02','A03','P07',740);
COMMIT;
INSERT INTO VEND_PRO_ART VALUES ('V05','A05','P07',990);
INSERT INTO VEND_PRO_ART VALUES ('V05','A06','P02',880);

INSERT INTO VEND_PRO_ART VALUES ('V05','A05','P04',120);
INSERT INTO VEND_PRO_ART VALUES ('V05','A06','P04',260);
INSERT INTO VEND_PRO_ART VALUES ('V04','A06','P03',150); 
INSERT INTO VEND_PRO_ART VALUES ('V04','A06','P07',690);












