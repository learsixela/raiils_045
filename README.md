# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* verificar estar en la terminal con ubuntu -> inforcap@ubuntu:~$
ssh -p 2222 inforcap@127.0.0.1

* crear un proyecto rails
rails new demo -d postgresql  (rails new demo --database postgresql )

* acceder al proyecto
cd demo

* ejecutar creacion de base datos
rails db:create

* desplegando el servidor
rails s

* probar en el browser 
http://127.0.0.1:3000


* actualizar o instalar una gema, se ejecuta dentro del proyecto 
bundle install o bundle

* crear un controlador
rails g controller nombre_controlador metodo1 metodo2 

# Bootstrap

* agregar bootstrap como gema al proyecto
* gem install bootstrap
* gem install jquery-rails
* gem install popper_js

* * agregamos la gema al Gemfile y ejecuta un bundle install
* bundle add bootstrap
* bundle add jquery-rails
*bundle add popper_js

* *cambiar el nombre 
application.css a application.scss

* * agregar en application.scss la linea
@import "bootstrap";

* * agregar a application.js 
* import "popper"
* import "bootstrap"

* *agregar en config/initializers/assets.rb
Rails.application.config.assets.precompile += %w( application.scss bootstrap.min.js popper.js )

* *agregar en config/importmap.rb
* pin "popper", to: 'popper.js', preload: true
* pin "bootstrap", to: 'bootstrap.min.js', preload: true

* * agregar a application.html.erb en la seccion head bajo los estilos
<%= javascript_importmap_tags %>

# SCAFFOLD

* rails g scaffold libro nombre descripcion
nos crea el CRUD,

* ejecutar migracion, creacion o modificación de una tabla 
rails db:migrate

* saber cuales son las migraciones ejecutadas
rails db:migrate:status

* eliminar la base datos con todos los datos
rails db:drop

* reiniciar la base datos y las migraciones
rails db:reset

* deshacer la ultima migracion
rails db:rollback

* deshacer una cantidad especifica de migraciones
rails db:rollback STEP=2

* agregar columna a tabla existente
rails g migration addColumnToLibro paginas:integer

* generar modelo, migracion y test
rails g model user nombre email