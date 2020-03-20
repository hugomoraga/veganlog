# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Category.destroy_all
User.destroy_all
Store.destroy_all
Address.destroy_all

#USUARIO ACTIVEADMIN
AdminUser.create!(email: 'activeadmin@veganlog.ml', password:'password', password_confirmation:'password') if Rails.env.development?

#CATEGORIAS
Category.where(name: 'Hamburguesas').first_or_create
Category.where(name: 'Embutidos').first_or_create
Category.where(name: 'Bebidas').first_or_create
Category.where(name: 'Aliños').first_or_create
Category.where(name: 'Congelados').first_or_create
Category.where(name: 'Salsas').first_or_create
Category.where(name: 'Proteinas').first_or_create
Category.where(name: 'Batidos').first_or_create


#USUARIO MODERADOR/ADMIN
admin = User.new(
    email: 'admin@veganlog.ml',
    name: 'administrador',
    password: '12345678', 
    password_confirmation: '12345678'
)
admin.save!

#CREACION DE TIENDA Y DIRECCION (MODELO ANIDADO)
organisk_store = Store.create(
    name: 'Organisk', 
    url:  'www.organisk.cl',
    addresses_attributes: [
        {
            name: 'Andrés de Fuenzalida 91, Providencia, RM, Chile',
            latitude: -33.4214971,
            longitude: -70.611266    
        }  
    ]
)


casadelvegan_store = Store.create(
    name: 'Casa del Vegan', 
    url:  'la-casa-del-queso.jumpseller.com',
    addresses_attributes: [
        { 
            name: 'Antonia Lopez de Bello 743, local 572. Recoleta, RM',
            latitude: -33.4305312441,
            longitude: -70.64978714651
            
        }
        
    ]
)
#PRODUCTOS
p1 = Product.create(
    productname: "hamburguesa de garbanzos", 
    comercialName: "Garbanzos a la Falafel", 
    markName: "Riku", 
    price: 4990, 
    ingredients: "Garbanzos cocidos (75%) Cebolla Avena molida Sazonador falafel (Cebolla, ajo, perejil, comino, extracto de levadura, pimienta, extracto natural de cilantro) Aceite de oliva Sal", 
    description: "Caja de 4 unidades", 
    totalScore: 3, 
    category_id: 1, 
    user_id: 1, 
    store_id: 1
)
#IMAGEN PLACEHOLDER
p1.image.attach(io: File.open('./app/assets/images/product.jpg'), filename: "placeholder_image.jpg", content_type: "image/png")

p2 = Product.create(
    productname: "Salchicha Vegetal", 
    comercialName: "Salchica 100% Vegetal Pimiento Morron", 
    markName: "No vives de ensalada", 
    price: 4299, 
    ingredients: "Proteina de Arroz, Proteina de arverja, Coco desidratado, Cacao desidratado, estevia", 
    description: "Proteína en polvo vegetal que tu cuerpo necesita. Producto recomendado para deportistas de alto rendimiento que buscan saber cómo aumentar masa muscular y beneficiar su salud al mismo tiempo.", 
    totalScore: 3, 
    category_id: 2, 
    user_id: 1, 
    store_id: 1
)
#IMAGEN PLACEHOLDER
p2.image.attach(io: File.open('./app/assets/images/product.jpg'), filename: "placeholder_image.jpg", content_type: "image/png")

p3 = Product.create(
    productname: "Batido de Proteinas Chocolate", 
    comercialName: "VeggiPro Chocolate", 
    markName: "AquaSolar", 
    price: 22990, 
    ingredients: "Proteína aislada, de soya, proteína de trigo, proteína vegetal hidrolizada, levaduras naturales, dextrosa, pimiento morrón, sal y especias.", 
    description: "Salchicha 100% Vegetal con Pimiento Morrón 5 unidades", 
    totalScore: 3, 
    category_id: 8, 
    user_id: 1, 
    store_id: 1
)
#IMAGEN PLACEHOLDER
p3.image.attach(io: File.open('./app/assets/images/product.jpg'), filename: "placeholder_image.jpg", content_type: "image/png")
