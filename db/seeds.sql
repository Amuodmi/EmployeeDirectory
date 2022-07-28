-- adding info to be inserted into previously created tables
INSERT INTO employees (first_name, last_name, role_id, job_title, department, salary, reporting_manager)
VALUES
    ('Moiraine', 'Damodred', 002, 'Legal Team Lead', 'Legal', 200,000, 1),
    ('Lan', 'Mandragoran', 003, 'Lawyer', 'Legal', 180,000, 2),
    ('Rand', 'AlThor', 004, 'Account Manager', 'Finance', 160,000, 2),
    ('Perrin', 'Ayabara', 005, 'Lead Engineer', 'Engineering', 150,000, 2),
    ('Mat', 'Cauthon', 006, 'Software Engineer', 'Engineering', 120,000, 3),
    ('Egwene', 'AlVere', 007, 'Sales Lead', 'Sales', 100,000, 3),
    ('Nynaeve', 'AlMeara', 008, 'Salesperson', 'Sales', 80,000, 3);

INSERT INTO departments (name)
VALUES
  ('Engineering'),
  ('Finance'),
  ('Legal'),
  ('Sales');

INSERT INTO roles (job_title, salary, department, role_id)
VALUES
    ('Sales Lead', 100,000, 'Sales', 100),
    ('Salesperson', 80,000, 'Sales', 200),
    ('Lead Engineer', 150,000, 'Engineering', 300),
    ('Software Engineer', 120,000, 'Engineering', 400),
    ('Account Manager', 160,000, 'Finance', 500),
    ('Accountant', $120,000, 'Finance', 600),
    ('Legal Team Lead', 200,000, 'Legal', 700),
    ('Lawyer', $180,000, 'Legal', 800);