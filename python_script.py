import mysql.connector
from mysql.connector import Error


def connect_fetch_data():
    """Connect to the MySQL database and fetch data from the Movies table."""
    try:
        # Connect to the database
        connection = mysql.connector.connect(
            host='localhost',  # Your database host
            user='dpallem',  # Your database username
            password='Datta_nagasai',  # Your database password
            database='bookmyshow'  # Your database name
        )
        if connection.is_connected():
            print('Successfully connected to the database')
            cursor = connection.cursor()
            # Query to select data from the Movies table
            query = "SELECT * FROM Movies"
            cursor.execute(query)
            # Fetch the data
            records = cursor.fetchall()
            print("Total number of records: ", cursor.rowcount)

            # Saving data to a text file
            with open('movies_data.txt', 'w') as f:
                for row in records:
                    f.write(str(row) + "\n")
                    print(row)  # Print data to the screen

            print("Data has been written to movies_data.txt")

    except Error as e:
        print("Error while connecting to MySQL", e)
    finally:

        # Close the database connection
        if 'connection' in locals() and connection.is_connected():
            cursor.close()
            connection.close()
            print('MySQL connection is closed')


# Execute the function
if __name__ == "__main__":
    connect_fetch_data()
