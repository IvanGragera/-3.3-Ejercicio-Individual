#include <my_global.h>
#include <mysql.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
//Volem fer una consulta que consisteix en obtenir els jugadors que tinguin més de 2 propietats a una partida de Monopoly//
int main(int argc, char **argv)
{
	MYSQL *conn;
	int err;

	MYSQL_RES *resultado;
	MYSQL_ROW row;
	int propietats;
	char nom[12];
	char consulta [80];
	int id_partida;
	int diners;

	conn = mysql_init(NULL);
	if (conn==NULL) {
		printf ("Error al crear la conexi\uffc3\uffb3n: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}

	conn = mysql_real_connect (conn, "localhost","user", "pass", "monopoly_db",0, NULL, 0);
	if (conn==NULL) {
		printf ("Error al inicializar la conexi\uffc3\uffb3n: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}

	err=mysql_query (conn, "SELECT * FROM puntuacions");
	if (err!=0) {
		printf ("Error al consultar datos de la base %u %s\n",
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}

	resultado = mysql_store_result (conn);

	row = mysql_fetch_row (resultado);

	if (row == NULL)
		printf ("No se han obtenido datos en la consulta\n");
	else
		while (row !=NULL) {

			id_partida = atoi (row[0]);
			diners = atoi (row[2]);
			propietats = atoi (row[3]);
			if (propietats >= 2){
				printf (" A la partida: %d, El/La jugador/a: %s, Té els diners: %s, I el numero de propietats %d\n", id_partida, row[1], diners, propietats);
				row = mysql_fetch_row (resultado);
			}
			}

		mysql_close (conn);
		exit(0);
}
