## Dev-Ops Take-Home Project

1. Fork this repo, and clone your version into `/opt/banana` on the VPS  
  `git clone https://github.com/<yourusername>/example-devops-app /opt/banana`
2. Begin setting up the server (paths below are relative to `/opt/banana`)  
  - Put all your config in `etc/` (e.g config for `nginx`, `supervisor`, etc)
  - Put all mutable data in `data/` (e.g. `nginx` certs, `postgres` database, logs)
  - Put all management scripts in `bin/` (e.g. `start`, `stop`, `deploy`, `backup`)
  - Put all application code in `code/` (e.g. django app code, python)
  
3. Running nginx, postgres, and django, managed by a service (Docker-Compose)
4. Django point to the local PostgreSQL v11 database for data
5. Nginx running in front of django, proxying only page requests to Django.
6. Accept http2 requests and return http2 responses (using the nginx http2 module)
7. All code and data files only be readable/writable by their respective users and root (i.e. run nginx and django as www-data, postgres as the postgres user, etc.)
8. store all logs, and other data in /opt/banana/data (this includes nginx logs, postgres logs, and the postgresql database files)
9. close port 80 and 443 by using a cloudflare argo tunnel to serve the app (which avoids exposing the app server’s IP address to the public)
10. Redirect all port 80 HTTP requests to HTTPS
11. SSL CLoudflare (HTTP2)
12. 4 Scripts in bash : 
bin/stop: stop django, nginx, and postgresql
bin/start: start django, nginx, and postgresql
bin/deploy: pull the latest version of the app code from github, run migrations, and restart the necessary services
bin/backup: dump the postgresql database to a .sql file in /opt/banana/data/backups
