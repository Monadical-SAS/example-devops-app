FROM ubuntu:19.04

#Install and Update
RUN apt-get update && apt-get -y install software-properties-common && apt-get -y install postgresql-11

USER postgres
#Create Uer "postgresql" with pass "test123" and "db"
RUN /etc/init.d/postgresql start && psql --command "CREATE USER postgresql WITH SUPERUSER PASSWORD 'test123';" && createdb -O postgresql pgdb

USER root
#Access 
RUN echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/11/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/11/main/postgresql.conf
#Port
EXPOSE 5432

#Create /var/run and permissions to user postgres
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql

#Create Volume
VOLUME ["/etc/postgresql", "/var/lib/postgresql", "/var/log/postgresql"]

#Logs
RUN ln -sf /var/log/postgresql/ /opt/banana/data/logs/postgres/

USER postgres

#Variables
ENV PASS=test123
ENV BBDD=pgdb
ENV USER=postgresql

#Start Postgresql with settings
CMD ["/usr/lib/postgresql/11/bin/postgres", "-D", "/var/lib/postgresql/11/main", "-c", "config_file=/etc/postgresql/11/main/postgresql.conf"]
