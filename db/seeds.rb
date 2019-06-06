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
User.destroy_all

puts "creating Russian medications..."


canadian_syrup = Medication.create!(
  local_name: "Maple Whiskey Liqueur",
  country: "CA",
  local_category: "Natural Pain Killer",
  local_description:"The excessive consumption of alcohol can cause harm to your health.",
  photo: File.open("./app/assets/images/canada/CanadaLiqeur.png")
)

ibuprofen = Medication.create!(
  local_name: "ибупрофен",
  english_name: "Ibuprofen",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "For the treatment of pain, fever, and inflammation.",
  foreign_description: "Для лечения боли, лихорадки и воспаления.",
  photo: File.open("./app/assets/images/russia/IbuprofenRuss.png")
)

ibuprofen_enfant = Medication.create!(
  local_name: "Ибупрофен для детей ",
  english_name: "Ibuprofen Kids",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "For the treatment of pain, fever, and inflammation. Safe for use by children.",
  foreign_description: "Для лечения боли, лихорадки и воспаления. Безопасен для использования детьми.",
  photo: File.open("./app/assets/images/russia/Ibuprofe_enfant.png")
)

ibuprofen_gel = Medication.create!(
  local_name: "ибупрофен гель",
  english_name: "Ibuprofen Gel",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "For the treatment of pain, fever, and inflammation.",
  foreign_description: "Для лечения боли, лихорадки и воспаления.",
  photo: File.open("./app/assets/images/russia/Ibuprofen_gel_new.png")
)

paracetamol = Medication.create!(
  local_name: "Парацетамол",
  english_name: "Paracetamol",
  country: "RU",
  local_category: "Pain Relievers",
  foreign_category: "Обезболивающие",
  local_description: "For the treatment of headaches, muscle & joint pain, arthritis, toothaches, colds, and fevers.",
  foreign_description: "Для лечения головных болей, мышц и суставов, артрита, зубной боли, простуды и лихорадки.",
  photo: File.open("./app/assets/images/russia/NewParace.png")

)

nurofen = Medication.create!(
  local_name: "Нурофен®",
  english_name: "Nurofen®",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "For the treatment of pain, fever, and inflammation.",
  foreign_description: "Для лечения боли, лихорадки и воспаления.",
  photo: File.open("./app/assets/images/russia/NewNuro.png")
)

nurofen_forte = Medication.create!(
  local_name: "Нурофен® Форте",
  english_name: "Nurofen® Forte",
  country: "RU",
  local_category: "Anti-Inflammatory",
  foreign_category: "противовоспалительное",
  local_description: "For quick relief of arthritic pain, menstrual pain, headaches, and muscle & joint pain.",
  foreign_description: "Для быстрого облегчения боли при артрите, менструальной боли, головных болях, мышцах и суставах.",
  photo: File.open("./app/assets/images/russia/NewNuroF.png")
)


tussin_plus = Medication.create!(
  local_name: "Туссин Плюс",
  english_name: "Tussin Plus",
  country: "RU",
  local_category: "Cough Suppressants",
  foreign_category: "средства от кашля",
  local_description: "For relief of cough symptoms.",
  foreign_description: "Для облегчения симптомов кашля.",
  photo: File.open("./app/assets/images/russia/TussinNew.png")
)

caffetin_cold = Medication.create!(
  local_name: "Caffetin_cold",
  english_name: "Caffetin Cold",
  country: "RU",
  local_category: "Cough Suppressants",
  foreign_category: "средства от кашля",
  local_description: "For relief of cold and flu symptoms, including headache, muscle & joint pain, sore throat, runny nose, fever, and cough.",
  foreign_description: "Для облегчения симптомов простуды и гриппа, включая головную боль, боль в мышцах и суставах, боль в горле, насморк, жар и кашель.",
  photo: File.open("./app/assets/images/russia/NewCaffetin.png")
)

imodium = Medication.create!(
  local_name: "ИМОДИУМ® (IMODIUM®)",
  english_name: "Imodium®",
  country: "RU",
  local_category: "Antidiarrheal Agents",
  foreign_category: "антидиарейные препараты",
  local_description: "Quick relief of diarrhea symptoms.",
  foreign_description: "Быстрое облегчение симптомов диареи.",
  photo: File.open("./app/assets/images/russia/NewImod.png")
)

russian_vodka = Medication.create!(
  local_name: "Beluga",
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
  local_description: "For the treament of pain, fever, and inflammation.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Advil caplets.png")
)

advil_gel = Medication.create!(
  local_name: "Advil Antalgic Gel",
  english_name: "Advil Antalgic Gel",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "For the treatment of pain, fever, and inflammation.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/advilPm.png")
)


tylenol = Medication.create!(
  local_name: "Tylenol",
  english_name: "Tylenol",
  country: "CA",
  local_category: "Pain Relievers",
  foreign_category: "",
  local_description: "For the treatment of headaches, muscle & joint pain, arthritis, toothaches, colds, and fevers.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Tylenol.png")

)

benylin = Medication.create!(
  local_name: "Benylin",
  english_name: "Benylin",
  country: "CA",
  local_category: "Cough Suppressants",
  foreign_category: "средства от кашля.",
  local_description: "For the treament of coughs, and other cold and flu symptoms.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Benylinpng.png")
)

robitussin = Medication.create!(
  local_name: "Robitussin Cough & Cold",
  english_name: "Robitussin Cough & Cold",
  country: "CA",
  local_category: "Cough Suppressants",
  foreign_category: "",
  local_description: "For the treament of coughs, and other cold and flu symptoms.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/robitussin.png")

)

imodiumCanada = Medication.create!(
  local_name: "IMODIUM® Canada",
  english_name: "IMODIUM® Canada",
  country: "CA",
  local_category: "Antidiarrheal Agents",
  foreign_category: "",
  local_description: "Quick relief of diarrhea symptoms. Mint flavoured.",
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

liqueur_ingredient = Ingredient.create!(
name: 'liquor'
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
  ingredient_id: liqueur_ingredient.id,
  medication_id: russian_vodka.id
)
MedicationsIngredient.create!(
  ingredient_id: liqueur_ingredient.id,
  medication_id: canadian_syrup.id
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



User.create!(
  email:"romain@gmail.com",
  password:"lewagon",
)

User.create!(
  email:"rom@gmail.com",
  password:"lewagons",
)

puts "finished"


