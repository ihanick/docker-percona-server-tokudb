# percona-tokudb Docker Image based on vanilla percona/percona-server
Just a tokudb packet installed + fix for `ps_tokudb_admin` script to run it as mysql user.
```console
docker build -t ihanick/percona-server-tokudb .
docker run --name=ptoku -it -e MYSQL_ALLOW_EMPTY_PASSWORD=1 -e INIT_TOKUDB=1 ihanick/percona-server-tokudb
docker exec -it ptoku mysql -uroot -e 'SHOW ENGINES'|grep TokuDB
| TokuDB             | YES     | Percona TokuDB Storage Engine with Fractal Tree(tm) Technology             | YES          | YES  | YES        |
#cleanup
docker exec -it ptoku mysql -uroot -e shutdown
docker rm ptoku
```
