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

INSERT INTO departments(name)
VALUES
  ('Engineering'),
  ('Finance'),
  ('Legal'),
  ('Sales');

INSERT INTO roles(job_title, salary, department, role_id)
VALUES
    ('Sales Lead', '$100,000', 'Sales', '1'),
    ('Salesperson', '$80,000', 'Sales', '2'),
    ('Lead Engineer', '$150,000', 'Engineering', '3'),
    ('Software Engineer', '$120,000', 'Engineering', '4'),
    ('Account Manager', '$160,000', 'Finance', '5'),
    ('Accountant', '$120,000', 'Finance', '6'),
    ('Legal Team Lead', '$200,000', 'Legal', '7'),
    ('Lawyer', '$180,000', 'Legal', '8');