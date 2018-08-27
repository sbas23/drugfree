#!/bin/bash

mysql -u root -p -e"
INSERT INTO drugfree.roles (role_name, description, created_at, updated_at) VALUES ('Administrador', 'Desarrollador', NOW(), NOW()), ('Profesional', 'Colaborador', NOW(), NOW()); 
INSERT INTO drugfree.states (description, created_at, updated_at) VALUES ('Activo', NOW(), NOW()), ('Inactivo', NOW(), NOW());
INSERT INTO drugfree.fundations (fundation_name, address, phone, mail, created_at, updated_at) VALUES ('default', '123', '12345678', 'juan@aldeamo.com', NOW(), NOW());
"