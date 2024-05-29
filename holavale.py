from flask import Flask, make_response

app = Flask(__name__)

# Ruta principal
@app.route('/')
def index():
    # Crea una respuesta vacía
    response = make_response("Hola mi Vale y Jero!")

    # Elimina todos los headers de la respuesta
    response.headers.clear()

    return response

if __name__ == "__main__":
    # Ejecuta la aplicación en el puerto 80
    app.run(host='0.0.0.0', port=80)