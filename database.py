import mysql.connector
import logging

# Set up logger
logging.basicConfig(
    filename="game.log",
    level=logging.DEBUG,
    format="%(asctime)s %(levelname)-8s %(filename)s:%(lineno)d - %(message)s",
)


# Function to communicate with the database
# sql           = SQL query command to execute
# fetch_all     = fetch multiple rows
def execute_query(sql, fetch_all=False):
    logging.debug("Connecting to database...")
    logging.debug("SQL query: %s", sql)
    logging.debug("Fetch multiple rows: %s", fetch_all)

    # Connect to database
    db_connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="kviz_db",
    )

    try:
        db_query = db_connection.cursor(buffered=True)
        db_query.execute(sql)

        if fetch_all:
            query_result = db_query.fetchall()
        else:
            query_result = db_query.fetchone()
    except Exception as e:
        print(e)
        logging.error(f"MySQL error: {e}")
        db_connection.rollback()
    else:
        logging.debug("SQL query result: %s", query_result)
        db_connection.commit()

    db_connection.close()
    return query_result
