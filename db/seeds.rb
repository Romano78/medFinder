# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


MedicationsIngredient.destroy_all
Medication.destroy_all
Ingredient.destroy_all

puts "creating medications..."


 ibuprofen = Medication.create!(
  local_name: "Ибупрофен",
  english_name: "Ibuprofen",
  price: 17,
  country: "RU",
  remote_photo_url: "https://trimestri.ru/wp-content/uploads/2019/05/ibuprofen-pri-beremennosti.jpg",
  category: "Anti-inflammatory"
  )

 ibuprofen_gel = Medication.create!(
  local_name: "Ибупрофен Гель",
  english_name: "Ibuprofen Gel",
  price: 89,
  country: "RU",
  remote_photo_url: "https://attuale.ru/wp-content/uploads/2018/12/Opera-Snimok_2018-12-10_173045_spb.moezdorovie.ru_.png",
  category: "Anti-inflammatory gel"
  )

  paracetamol = Medication.create!(
  local_name: "Парацетамол",
  english_name: "Paracetamol",
  price: 15,
  country: "RU",
  remote_photo_url: "https://avatars.mds.yandex.net/get-mpic/1361544/img_id3660477126329187001.jpeg/9hq",
  category: "Pain syndrome of low and moderate intensity of various genesis"
  )

  nurofen = Medication.create!(
  local_name: "Нурофен®",
  english_name: "Nurofen®",
  price: 99,
  country: "RU",
  remote_photo_url: "https://media.gorzdrav.org/sys_master/product/h12/h3a/8818570067998.jpg",
  category: "Analgesic, antipyretic and anti-inflammatory effect"
  )

  nurofen_forte = Medication.create!(
  local_name: "Нурофен® Форте",
  english_name: "Nurofen® Forte",
  price: 103,
  country: "RU",
  remote_photo_url: "https://uteka.ru/media/big/8/8c/88c9f64dde5c5eb066db8768c9d8db27.jpg",
  category: "Analgesic, antipyretic and anti-inflammatory effect"
  )


  tussin_plus = Medication.create!(
  local_name: "Туссин Плюс",
  english_name: "Tussin Plus",
  price: 103,
  country: "RU",
  remote_photo_url: "https://www.medlux.ru/img/drugs/16/md-91f2f02bb9301b802290369f052ba738..png",
  category: "Relief of symptoms of colds, flu, ARVI, accompanied by cough"
  )

  advil = Medication.create!(
   local_name: "Advil",
   english_name: "Advil",
   price: 17,
   country: "CA",
   remote_photo_url: "https://dr9wvh6oz7mzp.cloudfront.net/i/2ed16c25bbd7e9818319863a5ea08a45_ra,w380,h380_pa,w380,h380.jpeg",
   category: "Anti-inflammatory"
   )

  advil_gel = Medication.create!(
   local_name: "Advil Antalgic gel",
   english_name: "Advil Antalgic gel",
   price: 25,
   country: "CA",
   remote_photo_url: "https://www.soin-et-nature.com/27733-menu_default/advil-5-gel-100g-tube.jpg",
   category: "Anti-inflammatory gel"
   )


  tylenol = Medication.create!(
   local_name: "Tylenol",
   english_name: "Tylenol",
   price: 17,
   country: "CA",
   remote_photo_url: "https://www.tylenol.ca/sites/tylenol_ca/files/styles/product_image/public/product-images/100025413_tyla_es_eztabs_100ct_ff_e_h.png",
   category: "Analgesics (pain relievers) and antipyretics (fever reducers)"
   )

  benylin = Medication.create!(
   local_name: "Benylin",
   english_name: "Benylin",
   price: 30,
   country: "CA",
   remote_photo_url: "https://i5.walmartimages.ca/images/Large/919/399/6000197919399.jpg",
   category: "Relief of symptoms of colds, flu, ARVI, accompanied by cough"
   )


  paracetamol_ingredient = Ingredient.create!(
  name: "Paracetamol")

  ibuprofen_ingredient = Ingredient.create!(
  name: "Ibuprofen"
  )

  dextromethorphan = Ingredient.create!(
  name: "Dextromethorphan")

  MedicationsIngredient.create!(
    ingredient_id: dextromethorphan.id,
    medication_id: benylin.id
  )

  MedicationsIngredient.create!(
    ingredient_id: dextromethorphan.id,
    medication_id: tussin_plus.id
  )

  MedicationsIngredient.create!(
    ingredient_id: paracetamol_ingredient.id,
    medication_id: paracetamol.id
  )

  MedicationsIngredient.create!(
    ingredient_id: paracetamol_ingredient.id,
    medication_id: tylenol.id
  )

  MedicationsIngredient.create!(
    ingredient_id: ibuprofen_ingredient.id,
    medication_id: ibuprofen.id
  )

  MedicationsIngredient.create!(
    ingredient_id: ibuprofen_ingredient.id,
    medication_id: ibuprofen_gel.id
  )

  MedicationsIngredient.create!(
    ingredient_id: ibuprofen_ingredient.id,
    medication_id: nurofen.id
  )

  MedicationsIngredient.create!(
    ingredient_id: ibuprofen_ingredient.id,
    medication_id: nurofen_forte.id
  )

  MedicationsIngredient.create!(
    ingredient_id: ibuprofen_ingredient.id,
    medication_id: advil.id
  )

  MedicationsIngredient.create!(
    ingredient_id: ibuprofen_ingredient.id,
    medication_id: advil_gel.id
  )

