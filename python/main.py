   import psycopg2
import time

def fetch_age_ranges():
    time.sleep(30)  # Ждем 30 секунд, чтобы база данных успела подняться
    try:
        conn = psycopg2.connect(
            dbname="my_database",
            user="postgres",
            password="your_password",
            host="db"
        )
        cursor = conn.cursor()
        cursor.execute("""
            SELECT MIN(age), MAX(age)
            FROM test_table
            WHERE CHAR_LENGTH(name) < 6;
        """)
        result = cursor.fetchone()
        print(f"Minimum age: {result[0]}, Maximum age: {result[1]}")
    except psycopg2.Error as e:
        print(f"Database error: {e}")
    except Exception as e:
        print(e)
    finally:
        if 'cursor' in locals():
            cursor.close()
        if 'conn' in locals():
            conn.close()

if __name__ == "__main__":
    fetch_age_ranges()
