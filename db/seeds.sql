-- adding info to be inserted into previously created tables
INSERT INTO employees (first_name, last_name, job_title, department, salary, reporting_manager)
VALUES
    ('Moiraine', 'Damodred', 'Legal Team Lead', 'Legal', 200000, 1),
    ('Lan', 'Mandragoran', 'Lawyer', 'Legal', 180000, 2),
    ('Rand', 'AlThor', 'Account Manager', 'Finance', 160000, 2),
    ('Perrin', 'Ayabara', 'Lead Engineer', 'Engineering', 150000, 2),
    ('Mat', 'Cauthon', 'Software Engineer', 'Engineering', 120000, 3),
    ('Egwene', 'AlVere', 'Sales Lead', 'Sales', 100000, 3),
    ('Nynaeve', 'AlMeara', 'Salesperson', 'Sales', 80000, 3);

INSERT INTO departments (name)
VALUES
  ('Engineering'),
  ('Finance'),
  ('Legal'),
  ('Sales');

INSERT INTO roles (job_title, department, salary)
VALUES
    ('Sales Lead', 'Sales', 100000),
    ('Salesperson', 'Sales', 80000),
    ('Lead Engineer', 'Engineering', 150000),
    ('Software Engineer','Engineering', 120000),
    ('Account Manager', 'Finance', 160000),
    ('Accountant', 'Finance', 120000),
    ('Legal Team Lead', 'Legal', 200000),
    ('Lawyer', 'Legal', 180000);