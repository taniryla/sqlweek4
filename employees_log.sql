CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	salary INTEGER NOT NULL,
	name TEXT NOT NULL
);

CREATE TABLE employees_log (
	id SERIAL PRIMARY KEY,
	description TEXT NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT now(),
	employee_id INT NOT NULL,
	CONSTRAINT fk_emp_log_to_emp
	FOREIGN KEY (employee_id) REFERENCES employees (id)
	ON DELETE CASCADE
);