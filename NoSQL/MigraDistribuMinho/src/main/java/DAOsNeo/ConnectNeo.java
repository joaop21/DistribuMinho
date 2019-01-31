package DAOsNeo;

import org.neo4j.driver.v1.*;

public class ConnectNeo {

    public static Driver connection(){
        return GraphDatabase.driver("bolt://localhost:7687", AuthTokens.basic("neo4j", "joaopedro"));
    }

    public static void close(Driver driver){
        driver.close();
    }
}
