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

  country: "RU",
  photo: "https://trimestri.ru/wp-content/uploads/2019/05/ibuprofen-pri-beremennosti.jpg",
  local_category: "Anti-inflammatory",
  foreign_category: "противовоспалительный",
  local_description: "used for treating pain, fever, and inflammation. ",
  foreign_description: "используется для лечения боли, лихорадки и воспаления."
  )

 ibuprofen_gel = Medication.create!(
  local_name: "Ибупрофен Гель",
  english_name: "Ibuprofen Gel",
  country: "RU",
  photo: "https://attuale.ru/wp-content/uploads/2018/12/Opera-Snimok_2018-12-10_173045_spb.moezdorovie.ru_.png",
  local_category: "Anti-inflammatory gel",
  foreign_category: "противовоспалительный",
  local_description: "Treating pain and swelling due to strains, sprains, backache or arthritis",
  foreign_description: "используется для лечения боли, лихорадки и воспаления."

  )

  paracetamol = Medication.create!(
  local_name: "Парацетамол",
  english_name: "Paracetamol",
  country: "RU",
  photo: "https://avatars.mds.yandex.net/get-mpic/1361544/img_id3660477126329187001.jpeg/9hq",
  local_category: "Pain syndrome of low and moderate intensity of various genesis",
  foreign_category: "обезболивающее и жаропонижающее",
  local_description: "used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers.",
  foreign_description: "используется для лечения многих заболеваний, таких как головная боль, мышечные боли, артрит, боль в спине, зубная боль, простуда и лихорадка."

  )

  nurofen = Medication.create!(
  local_name: "Нурофен®",
  english_name: "Nurofen®",
  country: "RU",
  photo: "https://media.gorzdrav.org/sys_master/product/h12/h3a/8818570067998.jpg",
  local_category: "Analgesic, antipyretic and anti-inflammatory effect",
  foreign_category: "Обезболивающее, жаропонижающее и противовоспалительное действие",
  local_description: "provides temporary relief of acute moderate pain and inflammation.",
  foreign_description: "используется для лечения боли, лихорадки и воспаления."


  )

  nurofen_forte = Medication.create!(
  local_name: "Нурофен® Форте",
  english_name: "Nurofen® Forte",
  country: "RU",
  photo: "https://uteka.ru/media/big/8/8c/88c9f64dde5c5eb066db8768c9d8db27.jpg",
  local_category: "Analgesic, antipyretic and anti-inflammatory effect",
  foreign_category: "Обезболивающее, жаропонижающее и противовоспалительное действие",
  local_description: "used to relieve the symptoms of arthritis, fever, and menstrual and other types of pain.",
  foreign_description: "используется для облегчения симптомов артрита, лихорадки и менструальных и других видов боли."
  )


  tussin_plus = Medication.create!(
  local_name: "Туссин Плюс",
  english_name: "Tussin Plus",
  country: "RU",
  photo: "https://www.medlux.ru/img/drugs/16/md-91f2f02bb9301b802290369f052ba738..png",
  local_category: "Relief of symptoms of colds, flu, ARVI, accompanied by cough",
  foreign_category: "Облегчение симптомов простуды, гриппа, ОРВИ, сопровождающихся кашлем",
  local_description: "cough suppressant that works by decreasing the feeling of needing to cough.",
  foreign_description: "подавитель кашля, который работает, уменьшая чувство необходимости кашлять."
  )

  advil = Medication.create!(
   local_name: "Advil",
   english_name: "Advil",

   country: "CA",
   photo: "https://dr9wvh6oz7mzp.cloudfront.net/i/2ed16c25bbd7e9818319863a5ea08a45_ra,w380,h380_pa,w380,h380.jpeg",

   local_category: "Anti-inflammatory",
   foreign_category: "противовоспалительный",
   local_description: "used for treating pain, fever, and inflammation.",
   foreign_description: "используется для лечения боли, лихорадки и воспаления."


   )

  advil_gel = Medication.create!(
   local_name: "Advil Antalgic gel",
   english_name: "Advil Antalgic gel",

   country: "CA",

   photo: "https://www.soin-et-nature.com/27733-menu_default/advil-5-gel-100g-tube.jpg",

   local_category: "Anti-inflammatory gel",
   foreign_category: "противовоспалительный",
   local_description: "противовоспалительный",
   foreign_description: "используется для лечения боли, лихорадки и воспаления."
   )


  tylenol = Medication.create!(
   local_name: "Tylenol",
   english_name: "Tylenol",

   country: "CA",
   photo: "https://www.tylenol.ca/sites/tylenol_ca/files/styles/product_image/public/product-images/100025413_tyla_es_eztabs_100ct_ff_e_h.png",

   local_category: "Analgesics (pain relievers) and antipyretics (fever reducers)",
   foreign_category: "обезболивающее и жаропонижающее.",
   local_description: "used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers.",
   foreign_description: "
   используется для лечения многих состояний, таких как головная боль, мышечные боли, артрит, боль в спине, зубная боль, простуда и лихорадка"

   )

  benylin = Medication.create!(
   local_name: "Benylin",
   english_name: "Benylin",

   country: "CA",

   photo: "https://i5.walmartimages.ca/images/Large/919/399/6000197919399.jpg",

   local_category: "cough suppressants",
   foreign_category: "средства от кашля",
   local_description: "Relief of symptoms of colds, flu, ARVI, accompanied by cough",
   foreign_description: "Облегчение симптомов простуды, гриппа, ОРВИ, сопровождающихся кашлем"


   )

  puts "creating ingredients..."
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
  puts "finished"

