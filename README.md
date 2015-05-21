Tournament project
=============

## To run

start VM

```
$ cd vagrant
```

```
$ vagrant up
```

```
$ vagrant ssh
```

```
$ cd vagrant/tournament 
```

start postgres 

```
$ sudo service postgresql start
```

create database

```
$ psql 
```

```
$ createdb tournament 
```

import schema

```
psql tournament < /vagrant/tournament/tournament.sql
```

run tests

```
$ python /vagrant/tournament/tournament_tests.py 
```
