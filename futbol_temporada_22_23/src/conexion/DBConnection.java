package conexion;

import java.sql.Connection;

public class DBConnection {
	public String db="futbol_temporada_22_23";
	public String url="jdbc:mysql://localhost:3360/"+db+"?serverTimezone=UTC";
	public String user="root";
	public String pass="root";
        
	public DBConnection(){
		
	}
	
	public Connection conectar(){
		// TODO 0: Realiza la conexión a la Base de Datos
	}
}



