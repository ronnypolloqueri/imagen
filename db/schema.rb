# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120831220840) do

  create_table "catalogoproductos", :force => true do |t|
    t.integer  "producto_id"
    t.integer  "catalogo_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "catalogoproductos", ["catalogo_id"], :name => "index_catalogoproductos_on_catalogo_id"
  add_index "catalogoproductos", ["producto_id"], :name => "index_catalogoproductos_on_producto_id"

  create_table "catalogos", :force => true do |t|
    t.string   "titulo_catalogo"
    t.text     "descripcion"
    t.date     "fecha_elaboracion"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombres"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "telefonos"
    t.string   "correo_electronico"
    t.string   "direccion"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "docentes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fabricas", :force => true do |t|
    t.string   "ruc"
    t.string   "razon_social"
    t.string   "nombre_comercial"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo_electronico"
    t.string   "representante"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "lineadepedidos", :force => true do |t|
    t.integer  "cantidad"
    t.float    "precio"
    t.integer  "pedido_id"
    t.integer  "producto_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "lineadepedidos", ["pedido_id"], :name => "index_lineadepedidos_on_pedido_id"
  add_index "lineadepedidos", ["producto_id"], :name => "index_lineadepedidos_on_producto_id"

  create_table "pedidos", :force => true do |t|
    t.date     "fecha_pedido"
    t.integer  "cantidad"
    t.float    "precio_pedido"
    t.integer  "cliente_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "pedidos", ["cliente_id"], :name => "index_pedidos_on_cliente_id"

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "color"
    t.string   "genero"
    t.string   "talla"
    t.float    "precio_unitario"
    t.string   "image"
    t.integer  "fabrica_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.float    "precio_venta"
    t.float    "precio_mayor"
  end

  add_index "productos", ["fabrica_id"], :name => "index_productos_on_fabrica_id"

end
