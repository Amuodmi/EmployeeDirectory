-- adding info to be inserted into previously created tables
INSERT INTO employees(first_name, last_name, role_id, reporting_manager)
VALUES
    ('Moiraine', 'Damodred', '002', 'Siuan'),
    ('Lan', 'Mandragoran', '003', 'Moiraine'),
    ('Rand', 'AlThor', '004', 'Moiraine'),
    ('Perrin', 'Ayabara', '005', 'Moiraine'),
    ('Mat', 'Cauthon', '006', 'Moiraine'),
    ('Egwene', 'AlVere', '007', 'Moiraine'),
    ('Nynaeve', 'AlMeara', '008', 'Moiraine');

INSERT INTO departments(depName)
VALUES
  ('Engineering'),
  ('Finance'),
  ('Legal'),
  ('Sales');

INSERT INTO roles(job_title, salary, department, role_id)
VALUES
    ('Sales Lead', 100,000, 'Sales', 100),
    ('Salesperson', 80,000, 'Sales', 200),
    ('Lead Engineer', 150,000, 'Engineering', 300),
    ('Software Engineer', 120,000, 'Engineering', 400),
    ('Account Manager', 160,000, 'Finance', 500),
    ('Accountant', $120,000, 'Finance', 600),
    ('Legal Team Lead', 200,000, 'Legal', 700),
    ('Lawyer', $180,000, 'Legal', 800);