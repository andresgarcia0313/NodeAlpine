// Importar librerias o codigo de terceros
const express = require('express'); //Librerías de código para aplicaciones web y servicios web o API
// Constants
const port = 80 // Puerto a utilizar
// App
const app = express() // Instancia o variable de ejecución de la librerìa express que sirve para mostrar información en la web sea servicios web o paginas webb
app.get('/', (req, res) => {//Web que muestra en la url "/" la palabra bienvenido visite http://localhost:80/ para verlo
    res.send('Bienvenido')
}) 
app.listen(port, () => {// Activa en aplicativo en el puerto definido y Muestra en consola el texto con el puerto de escucha para mirarlo despuès de visitar el sitio web mire la consola del navegador con la tecla F11
    console.log(`Aplicación funcionando en el puerto ${port}`)
}) 
