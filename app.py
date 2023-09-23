from flask import Flask

# Crea una instancia de la aplicación Flask
app = Flask(__name__)

# Define una ruta y una función para manejar esa ruta
@app.route('/')
def hello_world():
    return 'Hello, World biteches!'

if __name__ == '__main__':
    # Ejecuta la aplicación en el puerto 5000 de forma predeterminada
    app.run()
