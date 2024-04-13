from flask import Flask, request, jsonify
import psycopg2

app = Flask(__name__)

# Configuración de la conexión a PostgreSQL
DB_HOST = 'localhost'
DB_PORT = '5432'
DB_NAME = 'db_injection'
DB_USER = 'postgres'
DB_PASSWORD = 'admin'

# Endpoint para autenticar usuarios
@app.route('/api/authenticate', methods=['POST'])
def authenticate():
    data = request.get_json()
    username = data.get('username')
    password = data.get('password')

    # Establecer la conexión a PostgreSQL
    conn = psycopg2.connect(
        host=DB_HOST,
        port=DB_PORT,
        database=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD
    )
    c = conn.cursor()

    # Consulta SQL parametrizada para autenticar usuarios
    query = "SELECT * FROM usuarios WHERE username = %s AND password = %s"
    
     # Ejecutar la consulta parametrizada con los valores de los parámetros
    c.execute(query, (username, password))
    result = c.fetchone()

    conn.close()

    if result:
        return jsonify({'message': 'Authentication successful!'})
    else:
        return jsonify({'message': 'Authentication failed!'})

if __name__ == '__main__':
    app.run(debug=True)
