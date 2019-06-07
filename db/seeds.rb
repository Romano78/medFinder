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
  local_name: "КАФЕТИН КОЛД",
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
  local_name: "Belugia",
  english_name: "Belugia",

  country: "RU",
  local_category: "Natural Pain Killer",
  local_description:"The excessive consumption of alcohol can cause harm to your health.",
  photo: File.open("./app/assets/images/russia/NewVodka.png")
)


puts "Creating Canadian medications"

advil = Medication.create!(
  local_name: "Advil PM",
  english_name: "Advil PM",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "For the treament of pain, fever, and inflammation.  can cause drowsiness, which can aid in the treatment of occasional sleep problems (insomnia). ",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/advilPm.png")
)
advil_12 = Medication.create!(
  local_name: "Advil",
  english_name: "Advil",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Dual-layer technology for up to 12 hours of pain relief with one pill. A quick burst for relief that's fast. ",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Advil_Pill-2.png")
)

advil_gel = Medication.create!(
  local_name: "Advil Gels",
  english_name: "Advil Gels",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Provide fast relief of headaches, muscle aches, minor arthritis and other joint pain.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Adivil_liqui1.png")
)

advil_multi = Medication.create!(
  local_name: "Advil Multi",
  english_name: "Advil Multi",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Pain reliever now comes with eight-symptom relief for nasal congestion, nasal swelling, runny nose, sneezing, sinus pressure, headache, fever and body aches.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Advil_Multi.png")
)

life_brand = Medication.create!(
  local_name: "Life Brand",
  english_name: "Life Brand",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Used to treat fever and mild-to-moderate pain caused by inflammation.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/LifeBrand.png")
)

motrin = Medication.create!(
  local_name: "Motrin",
  english_name: "Motrin",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Used to reduce fever and treat pain or inflammation caused by many conditions such as headache, toothache, back pain, arthritis, menstrual cramps, or minor injury.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/Mortin.png")
)

motrin_infants‎ = Medication.create!(
  local_name: "Motrin Kids",
  english_name: "Motrin Kids",
  country: "CA",
  local_category: "Anti-Inflammatory",
  foreign_category: "",
  local_description: "Used to reduce fevers. It also helps ease pain due to the common cold, sore throat, toothaches, and injuries.",
  foreign_description: "",
  photo: File.open("./app/assets/images/canada/ChildrenMotrin.png")
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
  name: "Paracetamol",
  local_name: "Парацетамол"
)


ibuprofen_ingredient = Ingredient.create!(
  name: "Ibuprofen",
  local_name: "Ибупрофен"

)

liqueur_ingredient = Ingredient.create!(
name: 'Liquor',
local_name: "щелок"
)


dextromethorphan = Ingredient.create!(
name: "Dextromethorphan",
local_name: "декстрометорфан"

)

loperamide = Ingredient.create!(
  name: "Loperamide",
  local_name: "лоперамид"
)

MedicationsIngredient.create!(
  ingredient_id: dextromethorphan.id,
  medication_id: benylin.id
)

MedicationsIngredient.create!(
  ingredient_id: ibuprofen_ingredient.id,
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

MedicationsIngredient.create!(
  ingredient_id: ibuprofen_ingredient.id,
  medication_id: advil_multi.id
)

MedicationsIngredient.create!(
  ingredient_id: ibuprofen_ingredient.id,
  medication_id: advil_12.id
)

MedicationsIngredient.create!(
  ingredient_id: ibuprofen_ingredient.id,
  medication_id: life_brand.id
)

MedicationsIngredient.create!(
  ingredient_id: ibuprofen_ingredient.id,
  medication_id: motrin.id
)

MedicationsIngredient.create!(
  ingredient_id: ibuprofen_ingredient.id,
  medication_id: motrin_infants‎.id
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


