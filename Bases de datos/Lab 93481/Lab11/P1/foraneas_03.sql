ALTER TABLE CIUDAD ADD CONSTRAINT PAIS_Cod_pais FOREIGN KEY (Cod_ciudad) REFERENCES `pais` (`Cod_pais`);

ALTER TABLE EMPRESAS ADD CONSTRAINT CIUDAD_Cod_ciudad FOREIGN KEY (COD_EMPRESA) REFERENCES `ciudad` (`Cod_ciudad`);

ALTER TABLE EMPLEADOS ADD CONSTRAINT EMPRESAS_COD_EMPRESA FOREIGN KEY (Cedula) REFERENCES `empresas` (`COD_EMPRESA`);

ALTER TABLE EMPLEADOS ADD CONSTRAINT TIPOEMPLEADOS_Cod_tipo_empleado FOREIGN KEY (Cedula) REFERENCES `tipoempleados` (`Cod_tipo_empleado`);

ALTER TABLE EMPLEADOS ADD CONSTRAINT AREAS_cod_area FOREIGN KEY (Cedula) REFERENCES `areas` (`cod_area`);

ALTER TABLE Productos_has_EMPLEADOS ADD CONSTRAINT Productos_codi_producto FOREIGN KEY (num_factura) REFERENCES `productos` (`codi_producto`);

ALTER TABLE Productos_has_EMPLEADOS ADD CONSTRAINT EMPLEADOS_Cedula FOREIGN KEY (num_factura) REFERENCES `EMPLEADOS` (`Cedula`);