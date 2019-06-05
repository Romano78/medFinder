# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favorite.destroy_all
MedicationsIngredient.destroy_all
Medication.destroy_all
Ingredient.destroy_all

puts "creating Russian medications..."




ibuprofen = Medication.create!(
  local_name: "ибупрофен",
  english_name: "Ibuprofen",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "Used for treating pain, fever, and inflammation.",
  foreign_description: "Используется для лечения боли, лихорадки и воспаления.",
  photo: File.open("./app/assets/images/russia/IbuprofenRuss.png")
)

ibuprofen_enfant = Medication.create!(
  local_name: "Ибупрофен для детей ",
  english_name: "Ibuprofen for Children",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "Used for treating pain, fever, and inflammation.",
  foreign_description: "Используется для лечения боли, лихорадки и воспаления.",
  photo: File.open("./app/assets/images/russia/Ibuprofe_enfant.png")
)

ibuprofen_gel = Medication.create!(
  local_name: "ибупрофен гель",
  english_name: "Ibuprofen Gel",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "Used for treating pain, fever, and inflammation.",
  foreign_description: "Используется для лечения боли, лихорадки и воспаления.",
  photo: File.open("./app/assets/images/russia/Ibuprofen_gel_new.png")
)

paracetamol = Medication.create!(
  local_name: "Парацетамол",
  english_name: "Paracetamol",
  country: "RU",
  local_category: "Pain Relievers",
  foreign_category: "Обезболивающие",
  local_description: "Used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers.",
  foreign_description: "Используется для лечения многих состояний, таких как головная боль, мышечные боли, артрит, боль в спине, зубная боль, простуда и лихорадка.",
  photo: File.open("./app/assets/images/russia/NewParace.png")

)

nurofen = Medication.create!(
  local_name: "Нурофен®",
  english_name: "Nurofen®",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "Provides temporary relief of acute moderate pain and inflammation.",
  foreign_description: "используется для лечения боли, лихорадки и воспаления.",
  photo: File.open("./app/assets/images/russia/NewNuro.png")
)

nurofen_forte = Medication.create!(
  local_name: "Нурофен® Форте",
  english_name: "Nurofen® Forte",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "Used to relieve the symptoms of arthritis, fever, and menstrual and other types of pain.",
  foreign_description: "используется для облегчения симптомов артрита, лихорадки и менструальных и других видов боли.",
  photo: File.open("./app/assets/images/russia/NewNuroF.png")
)


tussin_plus = Medication.create!(
  local_name: "Туссин Плюс",
  english_name: "Tussin Plus",
  country: "RU",
  local_category: "Cough Suppressants",
  foreign_category: "средства от кашля",
  local_description: "Cough Suppressant that works by decreasing the feeling of needing to cough.",
  foreign_description: "Подавитель кашля, который работает, уменьшая чувство необходимости кашлять.",
  photo: File.open("./app/assets/images/russia/TussinNew.png")
)

caffetin_cold = Medication.create!(
  local_name: "Caffetin_cold",
  english_name: "Caffetin_cold",
  country: "RU",
  local_category: "Cough Suppressants",
  foreign_category: "средства от кашля",
  local_description: "Caffetin Cold is used to relieve symptoms of colds and flu (headache, muscle aches, sore throat, nose leakage, fever or cough).",
  foreign_description: "Подавитель кашля, который работает, уменьшая чувство необходимости кашлять.",
  photo: File.open("./app/assets/images/russia/NewCaffetin.png")
)

imodium = Medication.create!(
  local_name: "ИМОДИУМ® (IMODIUM®)",
  english_name: "Imodium®",
  country: "RU",
  local_category: "Antidiarrheal Agents",
  foreign_category: "антидиарейные препараты",
  local_description: "Imodium ® - lozenges that quickly and carefully stop diarrhea. They have a pleasant mint flavor and dissolve in the mouth in 2-3 seconds.",
  foreign_description: "быстро и осторожно прекратите диарею. Они имеют приятный мятный вкус и растворяются во рту за 2-3 секунды.",
  photo: File.open("./app/assets/images/russia/NewImod.png")
)

russian_vodka = Medication.create!(
  local_name: "Belugia",
  country: "RU",
  local_category: "Natural Pain Killer",
  local_description:"The excessive consumption of alcohol can cause harm to your health.",
  photo: File.open("./app/assets/images/russia/NewVodka.png")
)


puts "Creating Canadian medications"

advil = Medication.create!(
  local_name: "Advil",
  english_name: "Advil",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Used for treating pain, fever, and inflammation.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Advil caplets.png")
)

advil_gel = Medication.create!(
  local_name: "Advil Antalgic Gel",
  english_name: "Advil Antalgic Gel",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Used for treating pain, fever, and inflammation.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/advilPm.png")
)


tylenol = Medication.create!(
  local_name: "Tylenol",
  english_name: "Tylenol",
  country: "CA",
  local_category: "Pain Relievers",
  foreign_category: "",
  local_description: "Used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Tylenol.png")

)

benylin = Medication.create!(
  local_name: "Benylin",
  english_name: "Benylin",
  country: "CA",
  local_category: "Cough Suppressants.",
  foreign_category: "средства от кашля.",
  local_description: "Relief of symptoms of colds, flu, ARVI, accompanied by cough.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Benylinpng.png")
)

robitussin = Medication.create!(
  local_name: "Robitussin Cough & Cold",
  english_name: "Robitussin Cough & Cold",
  country: "CA",
  local_category: "Cough Suppressants",
  foreign_category: "",
  local_description: "Relief of symptoms of colds, flu, ARVI, accompanied by cough",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/robitussin.png")

)

imodiumCanada = Medication.create!(
  local_name: "IMODIUM® Canada",
  english_name: "IMODIUM® Canada",
  country: "CA",
  local_category: "Antidiarrheal Agents",
  foreign_category: "",
  local_description: "IMODIUM® Canada - lozenges that quickly and carefully stop diarrhea. They have a pleasant mint flavor and dissolve in the mouth in 2-3 seconds.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Newimo.png")


)

  puts "creating ingredients..."

paracetamol_ingredient = Ingredient.create!(
  name: "Paracetamol"
)


ibuprofen_ingredient = Ingredient.create!(
  name: "Ibuprofen"

)
vodka_ingredient = Ingredient.create!(
name: 'Vodka'
)

dextromethorphan = Ingredient.create!(
name: "Dextromethorphan"

)

loperamide = Ingredient.create!(
  name: "loperamide"
)

MedicationsIngredient.create!(
  ingredient_id: dextromethorphan.id,
  medication_id: benylin.id
)

MedicationsIngredient.create!(
  ingredient_id: vodka_ingredient.id,
  medication_id: russian_vodka.id
)


MedicationsIngredient.create!(
  ingredient_id: dextromethorphan.id,
  medication_id: robitussin.id
)

MedicationsIngredient.create!(
  ingredient_id: dextromethorphan.id,
  medication_id: caffetin_cold.id
)


MedicationsIngredient.create!(
  ingredient_id: loperamide.id,
  medication_id: imodium.id
)

MedicationsIngredient.create!(
  ingredient_id: loperamide.id,
  medication_id: imodiumCanada.id
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
  medication_id: ibuprofen_enfant.id
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


Medication.reindex!


puts "finished"

User.destroy_all

User.create!(
  email:"user@gmail.com",
  password:"lewagon",
)

