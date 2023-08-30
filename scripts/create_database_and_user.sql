CREATE DATABASE skills_up_django;
CREATE USER skills_up_django_user WITH ENCRYPTED PASSWORD 'skills_up_django_password';
GRANT ALL PRIVILEGES ON DATABASE skills_up_django TO skills_up_django_user;

-- DROP DATABASE skills_up_django;
-- DROP USER skills_up_django_user;

-- To create a user with read and write access to the "skills_up_django" database but without permission to delete tables:

-- CREATE USER skills_up_django_rw_user WITH ENCRYPTED PASSWORD 'strong_password';
-- GRANT CONNECT ON DATABASE skills_up_django TO skills_up_django_rw_user;
-- GRANT USAGE, CREATE ON SCHEMA public TO skills_up_django_rw_user;
-- GRANT SELECT, INSERT, UPDATE ON ALL TABLES IN SCHEMA public TO skills_up_django_rw_user;
-- REVOKE DELETE ON ALL TABLES IN SCHEMA public FROM skills_up_django_rw_user;
