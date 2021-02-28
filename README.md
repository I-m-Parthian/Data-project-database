# data-project-database

IPL data project, using only postgres.

## Installation 

* Installing postrges
``` sh
$ sudo apt update
$ sudo apt install postgresql postgresql-contrib
```

* Clone this remote repository to the local system

## Usage

* Create a separate user and database for the project
``` sh
$ psql
```
Now in postgres prompt run:
``` sql
postgres=# \i '1.create userDatabase.sql'
```

* Setup tables for Ipl analysis
``` sql
-- switch to ipl database
ipl=# \c ipl
ipl=# \i 'create_tables.sql'
```

* Run each solution of Ipl analysis in a sequential manner
``` sql
-- switch to new user created
ipl=# \q

$ psql -U parth ipl
```
``` sql
ipl=# \i 'ipl_problem1.sql'
```
In a similar way all 4 solutions of the project can be executed

* Cleaning up the database and user
``` sql
ipl=# \q
```
``` sh
$ psql postgres -f '2.delete userDatabase.sql' 
```


Note -> All data files are preprocessed and stored inside the dataset directory

## References

For more info about the data simple goto:
* [Kaggle](https://www.kaggle.com/manasgarg/ipl/version/5)
* [Wikipedia](https://en.wikipedia.org/wiki/List_of_Indian_Premier_League_umpires)