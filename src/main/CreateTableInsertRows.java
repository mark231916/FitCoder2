package main;

import java.sql.*;
import java.util.Properties;

public class CreateTableInsertRows {

    Connection connection = null;

    public CreateTableInsertRows ()  throws Exception
    {
        // Initialize connection variables.
        String host = "cs252lab6.mysql.database.azure.com";
        String database = "quickstartdb";
        String user = "singh402@cs252lab6";
        String password = "cs252lab6fuc#";

        // check that the driver is installed
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException e)
        {
            throw new ClassNotFoundException("MySQL JDBC driver NOT detected in library path.", e);
        }

        System.out.println("MySQL JDBC driver detected in library path.");



        // Initialize connection object
        try
        {
            String url = String.format("jdbc:mysql://%s/%s", host, database);

            // Set connection properties.
            Properties properties = new Properties();
            properties.setProperty("user", user);
            properties.setProperty("password", password);
            properties.setProperty("useSSL", "true");
            properties.setProperty("verifyServerCertificate", "true");
            properties.setProperty("requireSSL", "false");
            properties.setProperty("serverTimezone", "UTC");

            // get connection
            connection = DriverManager.getConnection(url, properties);
        }
        catch (SQLException e)
        {
            throw new SQLException("Failed to create connection to database.", e);
        }
        if (connection != null)
        {
            System.out.println("Successfully created connection to database.");

            // Perform some SQL queries over the connection.
            try
            {
                // Drop previous table of same name if one exists.
                Statement statement = connection.createStatement();
                statement.execute("DROP TABLE IF EXISTS inventory;");
                System.out.println("Finished dropping table (if existed).");

                // Create table.
                statement.execute("CREATE TABLE inventory (id serial PRIMARY KEY, name VARCHAR(50), password VARCHAR (50));");
                System.out.println("Created table.");

            }
            catch (SQLException e)
            {
                throw new SQLException("Encountered an error when executing given sql statement.", e);
            }
        }
        else {
            System.out.println("Failed to create connection to database.");
        }
        System.out.println("Execution finished.");
    }

    public void insert(String username, String password)
    {
        int nRowsInserted = 0;
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO inventory (name, password) VALUES (?, ?);");
            preparedStatement.setString(1, username);
            //preparedStatement.setInt(2, 150);
            preparedStatement.setString(2, password);
            nRowsInserted += preparedStatement.executeUpdate();

               /* preparedStatement.setString(1, "orange");
                //preparedStatement.setInt(2, 154);
                nRowsInserted += preparedStatement.executeUpdate();

                preparedStatement.setString(1, "apple");
                //preparedStatement.setInt(2, 100);
                nRowsInserted += preparedStatement.executeUpdate();*/
            System.out.println(String.format("Inserted %d row(s) of data.", nRowsInserted));
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}