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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180724184603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entradas", force: :cascade do |t|
    t.integer "seller_id"
    t.integer "item_id"
    t.string "shopify_id"
    t.integer "cantidad_anunciada"
    t.integer "cantidad_recibida"
    t.datetime "fecha_de_llegada"
    t.datetime "fecha_de_alta"
    t.string "status"
    t.string "observaciones"
    t.string "recibido_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "entrada_token"
    t.boolean "sumada"
  end

  create_table "item_logs", force: :cascade do |t|
    t.integer "seller_id"
    t.string "process"
    t.string "informe_token"
    t.integer "item_id"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "parametros"
  end

  create_table "items", force: :cascade do |t|
    t.integer "seller_id"
    t.string "sku"
    t.string "title"
    t.integer "available_quantity"
    t.string "picture_1"
    t.string "picture_2"
    t.string "picture_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "seller_status"
    t.string "msin"
    t.string "isbn"
    t.string "upc"
    t.string "ean"
    t.string "description"
    t.string "ubicacion"
    t.decimal "height"
    t.decimal "width"
    t.decimal "length"
    t.decimal "weight"
    t.decimal "list_price"
    t.integer "woo_id"
    t.string "shopify_id"
    t.string "fulfillment_service"
  end

  create_table "ml_listings", force: :cascade do |t|
    t.integer "seller_id"
    t.integer "item_id"
    t.string "site"
    t.string "ml_id"
    t.decimal "price"
    t.integer "available_quantity"
    t.string "currency_id"
    t.string "buying_mode"
    t.string "condition"
    t.string "category_id"
    t.string "status"
    t.string "picture_1"
    t.string "picture_2"
    t.string "picture_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_publicacion"
    t.string "tipo_publicacion"
    t.decimal "porcentaje_ml"
    t.decimal "costo_ml_por_venta"
    t.string "metodo_de_envio"
    t.boolean "envio_gratis"
    t.decimal "costo_envio"
    t.boolean "in_store_pickup"
    t.integer "tiempo_de_garantia"
    t.string "unidad_de_tiempo_garantia"
    t.string "tipo_de_garantia"
    t.boolean "activada_x_seller"
    t.string "title"
    t.string "description"
    t.string "ruta_categoria"
    t.string "sku"
    t.decimal "length"
    t.decimal "width"
    t.decimal "height"
    t.decimal "weight"
    t.integer "woo_id"
    t.string "error_ml"
  end

  create_table "ml_logs", force: :cascade do |t|
    t.integer "seller_id"
    t.string "process"
    t.string "informe_token"
    t.integer "item_id"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ml_listing_id"
  end

  create_table "ml_orders", force: :cascade do |t|
    t.integer "seller_id"
    t.string "ml_id"
    t.string "status"
    t.boolean "pack_order"
    t.string "shipment_ids"
    t.datetime "date_created"
    t.datetime "date_closed"
    t.datetime "last_updated"
    t.string "fulfilled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "woo_id"
    t.string "nickname"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "telefono"
    t.string "items"
  end

  create_table "prospects", force: :cascade do |t|
    t.string "nombre"
    t.string "nombre_empresa"
    t.string "vende_internet"
    t.string "productos"
    t.string "correo"
    t.string "telefono"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.string "telefono"
    t.string "persona_contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "shopify_location"
  end

  create_table "shipment_details", force: :cascade do |t|
    t.integer "shipment_id"
    t.integer "seller_id"
    t.string "marketplace"
    t.string "ml_listing_id"
    t.string "marketplace_description"
    t.integer "quantity"
    t.string "marketplace_order_number"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "woo_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "seller_id"
    t.string "site"
    t.string "ml_id"
    t.string "direction"
    t.datetime "date_created"
    t.datetime "last_updated"
    t.decimal "declared_value"
    t.decimal "height"
    t.decimal "width"
    t.decimal "length"
    t.decimal "weight"
    t.string "tracking_number"
    t.string "receiver_id"
    t.string "receiver_phone"
    t.string "receiver_comments"
    t.string "shipping_address_id"
    t.string "address_line"
    t.string "street_name"
    t.string "street_number"
    t.string "street_comment"
    t.string "zip_code"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "neighborhood"
    t.string "municipality"
    t.string "carrier_id"
    t.string "agency_id"
    t.string "carrier_description"
    t.string "carrier_phone"
    t.string "carrier_open_hours"
    t.integer "shipping_method_id"
    t.string "shipping_method_type"
    t.string "shipping_method_name"
    t.string "deliver_to"
    t.string "currency_id"
    t.decimal "cost"
    t.string "cost_type"
    t.string "service_id"
    t.datetime "estimated_delivery_date"
    t.string "tags"
    t.boolean "etiqueta_impresa"
    t.boolean "envio_entregado"
    t.string "mode"
    t.string "logs_type"
    t.string "receiver_name"
    t.string "carrier_name"
    t.string "status"
    t.string "substatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "reportado_a_wms"
    t.string "reportado_a_wms_result"
    t.string "woo_order_id"
    t.string "ml_order_id"
    t.string "ml_order_ml_id"
  end

  create_table "shipping_methods", force: :cascade do |t|
    t.string "owner"
    t.string "carrier_name"
    t.string "name"
    t.string "owner_shipping_method_id"
    t.string "owner_shipping_method_type"
    t.boolean "seller_center_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopi_auths", force: :cascade do |t|
    t.integer "seller_id"
    t.string "shopify_id"
    t.string "token"
    t.string "refresh_token"
    t.string "scopes"
    t.datetime "expiration"
    t.string "shop"
    t.string "nonce"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopi_order_details", force: :cascade do |t|
    t.integer "shopi_order_id"
    t.string "fulfillment_status"
    t.string "sku"
    t.integer "item_id"
    t.integer "cantidad"
    t.string "tracking_number"
    t.string "financial_status"
    t.string "shopify_variant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre_producto"
    t.integer "seller_id"
    t.datetime "fecha_de_salida"
    t.integer "fulfillable_quantity"
    t.integer "fulfilled_quantity"
  end

  create_table "shopi_orders", force: :cascade do |t|
    t.string "shopify_id"
    t.string "shopify_name"
    t.datetime "shopify_created_at"
    t.string "customer"
    t.string "payment_status"
    t.string "fulfillment_status"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seller_id"
    t.string "sku"
    t.string "nombre_producto"
    t.integer "cantidad"
    t.string "tracking_number"
    t.string "carrier_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "seller_id"
    t.string "remember_digest"
    t.string "token"
    t.datetime "token_time"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "woo_listings", force: :cascade do |t|
    t.integer "seller_id"
    t.string "sku"
    t.string "name"
    t.integer "stock_quantity"
    t.string "picture_1"
    t.string "picture_2"
    t.string "picture_3"
    t.integer "woo_id"
    t.string "status"
    t.string "regular_price"
    t.string "description"
    t.decimal "length"
    t.decimal "width"
    t.decimal "height"
    t.decimal "weight"
    t.string "exposicion_ml"
    t.decimal "porcentaje_ml"
    t.decimal "costo_ml_por_venta"
    t.decimal "precio_ml"
    t.string "metodo_envio_ml"
    t.decimal "costo_de_envio"
    t.boolean "retiro_en_tienda"
    t.integer "tiempo_de_garantia"
    t.string "unidad_de_tiempo_garantia"
    t.string "tipo_de_garantia"
    t.string "mercado_libre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_id"
    t.string "error_ml"
    t.string "link_publicacion"
    t.integer "inventario_ml"
    t.string "titulo_ml"
  end

  create_table "woo_logs", force: :cascade do |t|
    t.integer "seller_id"
    t.string "process"
    t.string "informe_token"
    t.integer "item_id"
    t.string "result"
    t.integer "woo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "woo_listing_id"
  end

end
