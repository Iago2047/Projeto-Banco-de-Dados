INSERT INTO Cliente VALUES
(1, '123.456.789-00', 'João Silva'),
(2, '987.654.321-00', 'Maria Santos'),
(3, '111.222.333-44', 'Carlos Souza'),
(4, '555.444.333-22', 'Empresa XPTO'),
(5, '999.888.777-66', 'Gabriel Lima'),
(6, '222.333.444-55', 'Alfa LTDA'),
(7, '777.888.999-00', 'Beta Corp');

INSERT INTO Projeto VALUES
(1, 'Sistema Financeiro', 1),
(2, 'Site E-commerce', 2),
(3, 'Aplicativo Mobile', 3),
(4, 'ERP Empresarial', 4),
(5, 'Dashboard Analytics', 5),
(6, 'Plataforma IA', 6),
(7, 'API Integração', 7);

INSERT INTO Desenvolvedor VALUES
(1, 'Eric Kamakawa', 90.00),
(2, 'Iago Sitta', 85.00),
(3, 'Leonardo Bat', 65.00),
(4, 'Pedro Henrique', 70.00),
(5, 'Gilson Heringer', 60.00),
(6, 'Wendel Goes', 100.00),
(7, 'Fernanda Lopes', 70.00);

INSERT INTO Alocacao VALUES
(1, 1, '2025-01-01', '2025-03-01'),
(2, 1, '2025-02-10', '2025-05-01'),
(3, 2, '2025-01-15', '2025-04-15'),
(4, 3, '2025-03-01', '2025-06-01'),
(5, 3, '2025-02-01', '2025-07-01'),
(6, 4, '2025-01-20', '2025-05-20'),
(7, 5, '2025-02-05', '2025-09-01');

INSERT INTO Apontamento VALUES
(1, 1, 1, '2025-03-01 08:00', '2025-03-01 12:00'),
(2, 1, 1, '2025-03-02 14:00', '2025-03-02 18:00'),
(3, 2, 1, '2025-03-04 08:00', '2025-03-04 17:00'),
(4, 3, 2, '2025-03-10 09:00', '2025-03-10 12:00'),
(5, 4, 3, '2025-04-01 10:00', '2025-04-01 16:00'),
(6, 5, 3, '2025-04-02 08:00', '2025-04-02 15:00'),
(7, 6, 4, '2025-04-03 13:00', '2025-04-03 18:00');
