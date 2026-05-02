

# Renaming the table name 
rename table students to it_students

# Dropping the table
DROP TABLE it_students;

#Renaming the column
ALTER TABLE it_students RENAME COLUMN admission_date TO adm_dt;

#Dropping the column
ALTER TABLE it_students DROP column adm_dt;

# Adding a column
ALTER TABLE it_students ADD column is_passed bool default true;

# Modifying a Column
ALTER TABLE it_students modify column name varchar(50) default("");



# Changing the Order of Columns
ALTER TABLE it_students modify column name varchar(50) after is_passed;

