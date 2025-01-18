SELECT 'CREATE DATABSE dev_init_db'
WHERE NOT EXISTS (SELECT * FROM pg_admin WHERE datname = 'dev_init_db')\gexec