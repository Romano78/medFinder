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
  local_name: "Ibuprom",
  english_name: "Ibuprom",
  country: "RU",
  photo: File.open("./app/assets/images/russia/Ibuprofen.png"),
  local_category: "Anti-inflammatory",
  foreign_category: "Ostre bóle pooperacyjne, Ostre bóle kostne",
  local_description: "used for treating pain, fever, and inflammation. ",
  foreign_description: "Ibuprom RR to innowacyjna tabletka na ból - natychmiast się rozpada i uwalnia maksymalną dawkę krystalicznej substancji czynnej. Uderza w ostry ból."
)

 ibuprofen_gel = Medication.create!(
  local_name: "Ibuprom® Sport żel",
  english_name: "Ibuprom® Sport gel",
  country: "RU",
  photo: File.open("./app/assets/images/russia/IbupromG.png"),
  local_category: "Professionally combats muscle and joint pain",
  foreign_category: "Profesjonalnie zwalcza ból mięśni i stawów",
  local_description: "Ibuprom® Sport gel is a triple action for topical use,
  which quickly combats various pains in the musculoskeletal system, reduces inflammation and swelling.",
  foreign_description: "Ibuprom® Sport żel to lek o potrójnym działaniu do stosowania miejscowego,
  który szybko zwalcza różne bóle układu ruchu, redukuje stan zapalny i obrzęk."
)

 ibuprofen_ultra_ice = Medication.create!(
  local_name: "Ultra Ice",
  english_name: "Ultra Ice",
  country: "RU",
  photo: File.open("./app/assets/images/russia/Ultra-Ice.png"),
  local_category: "ULTRA ICE cooling spray and ULTRA ICE cooling compress are
  cooling products that instantly cool the site of the injury and relieve pain.",
  foreign_category: "ULTRA ICE spray chłodzący i ULTRA ICE kompres chłodzący to produkty chłodzące, które błyskawicznie chłodzą miejsce urazu i uśmierzają ból.",
  local_description: "ULTRA ICE cooling spray recommended by IBUPROM SPORT is ready-to-use ice cream with immediate cooling effect that instantly relieves pain resulting from injuries.",
  foreign_description: "ULTRA ICE spray chłodzący rekomendowany przez IBUPROM SPORT to gotowy do użycia lód w spray'u o natychmiastowym działaniu chłodzącym, który błyskawicznie uśmierza ból wynikający z urazów."
)

  paracetamol = Medication.create!(
  local_name: "Парацетамол",
  english_name: "Paracetamol",
  country: "RU",
  photo: File.open("./app/assets/images/russia/ParacetamolR.png"),
  local_category: "Pain syndrome of low and moderate intensity of various genesis",
  foreign_category: "обезболивающее и жаропонижающее",
  local_description: "used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers.",
  foreign_description: "используется для лечения многих заболеваний, таких как головная боль, мышечные боли, артрит, боль в спине, зубная боль, простуда и лихорадка."

)

  nurofen = Medication.create!(
  local_name: "Нурофен®",
  english_name: "Nurofen®",
  country: "RU",
  photo: File.open("./app/assets/images/russia/NewNuro.png"),
  local_category: "Analgesic, antipyretic and anti-inflammatory effect",
  foreign_category: "Обезболивающее, жаропонижающее и противовоспалительное действие",
  local_description: "provides temporary relief of acute moderate pain and inflammation.",
  foreign_description: "используется для лечения боли, лихорадки и воспаления."


)

  nurofen_forte = Medication.create!(
  local_name: "Нурофен® Форте",
  english_name: "Nurofen® Forte",
  country: "RU",
  photo: File.open("./app/assets/images/russia/NurofenForte.png"),
  local_category: "Analgesic, antipyretic and anti-inflammatory effect",
  foreign_category: "Обезболивающее, жаропонижающее и противовоспалительное действие",
  local_description: "used to relieve the symptoms of arthritis, fever, and menstrual and other types of pain.",
  foreign_description: "используется для облегчения симптомов артрита, лихорадки и менструальных и других видов боли."
)


  tussin_plus = Medication.create!(
  local_name: "Туссин Плюс",
  english_name: "Tussin Plus",
  country: "RU",
  photo: File.open("./app/assets/images/russia/Tussin.png"),
  local_category: "Relief of symptoms of colds, flu, ARVI, accompanied by cough",
  foreign_category: "Облегчение симптомов простуды, гриппа, ОРВИ, сопровождающихся кашлем",
  local_description: "cough suppressant that works by decreasing the feeling of needing to cough.",
  foreign_description: "подавитель кашля, который работает, уменьшая чувство необходимости кашлять."

)

  caffetin_cold = Medication.create!(
  local_name: "Caffetin_cold",
  english_name: "Caffetin_cold",
  country: "RU",
  photo: File.open("./app/assets/images/russia/kafetincoldmaks.png"),
  local_category: "prevents cough resulting from lower throat or bronchial stimulation. Vitamin C strengthens the immune system.",
  foreign_category: "kašalj koji je rezultat manjeg podražaja grla ili bronhija. Vitamin C jača imunološki sustav.",
  local_description: "Caffetin Cold is used to relieve symptoms of colds and flu (headache, muscle aches, sore throat, nose leakage, fever or cough).",
  foreign_description: "Caffetin Cold se koristi za ublažavanje simptoma prehlade i gripe (glavobolje, boli u mišićima, grlobolje, curenja iz nosa, vrućice ili kašlja)."
)

  imodium = Medication.create!(
  local_name: "ИМОДИУМ® (IMODIUM®)",
  english_name: "Imodium®",
  country: "RU",
  photo: File.open("./app/assets/images/russia/ImodiumR.png"),
  local_category: "Loperamide, quickly fights diarrhea, restoring the normal rhythm of the intestines.",
  foreign_category: "Лоперамид, быстро борется с поносом, восстанавливая нормальный ритм работы кишечника.",
  local_description: "Imodium ® - lozenges that quickly and carefully stop diarrhea. They have a pleasant mint flavor and dissolve in the mouth in 2-3 seconds.",
  foreign_description: "ИМОДИУМ® - таблетки для рассасывания, которые быстро и бережно останавливают понос. Имеют приятный мятный вкус и растворяются во рту за 2-3 секунды."
)

  russian_vodka = Medication.create!(
  local_name: "Belugia",
  country: "RU",
  photo: File.open("./app/assets/images/russia/Belugia.png"),
  local_description: "Cures Everything"
)


  puts "Creating Canadian medications"

  advil = Medication.create!(
   local_name: "Advil",
   english_name: "Advil",

   country: "CA",
    photo: File.open("./app/assets/images/canada/Advil caplets.png"),

   local_category: "Anti-inflammatory",
   foreign_category: "противовоспалительный",
   local_description: "used for treating pain, fever, and inflammation.",
   foreign_description: "используется для лечения боли, лихорадки и воспаления."


   )

  advil_gel = Medication.create!(
   local_name: "Advil Antalgic gel",
   english_name: "Advil Antalgic gel",

   country: "CA",

    photo: File.open("./app/assets/images/canada/advilPm.png"),

   local_category: "Anti-inflammatory gel",
   foreign_category: "противовоспалительный",
   local_description: "противовоспалительный",
   foreign_description: "используется для лечения боли, лихорадки и воспаления."
   )


  tylenol = Medication.create!(
   local_name: "Tylenol",
   english_name: "Tylenol",

   country: "CA",
    photo: File.open("./app/assets/images/canada/Tylenol.png"),

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

    photo: File.open("./app/assets/images/canada/Benylinpng.png"),

   local_category: "cough suppressants.",
   foreign_category: "средства от кашля.",
   local_description: "Relief of symptoms of colds, flu, ARVI, accompanied by cough.",
   foreign_description: "Облегчение симптомов простуды, гриппа, ОРВИ, сопровождающихся кашлем."

   )

  robitussin = Medication.create!(
   local_name: "ROBITUSSIN COUGH & COLD",
   english_name: "ROBITUSSIN COUGH & COLD",
   country: "CA",
   photo: File.open("./app/assets/images/canada/robitussin.png"),
   local_category: "cough suppressants",
   foreign_category: "средства от кашля",
   local_description: "Relief of symptoms of colds, flu, ARVI, accompanied by cough",
   foreign_description: "Облегчение симптомов простуды, гриппа, ОРВИ, сопровождающихся кашлем"

   )

  imodiumCanada = Medication.create!(
   local_name: "IMODIUM® Canada",
   english_name: "IMODIUM® Canada",
   country: "CA",
    photo: File.open("./app/assets/images/canada/meds_base.png"),
   local_category: "Loperamide, quickly fights diarrhea, restoring the normal rhythm of the intestines",
   foreign_category: "средства от кашля",
   local_description: "IMODIUM® Canada - lozenges that quickly and carefully stop diarrhea. They have a pleasant mint flavor and dissolve in the mouth in 2-3 seconds.",
   foreign_description: "Облегчение симптомов простуды, гриппа, ОРВИ, сопровождающихся кашлем"


   )

  puts "creating ingredients..."
  paracetamol_ingredient = Ingredient.create!(
  name: "Paracetamol")

  belugia_vodka = Ingredient.create!(
  name: "Vodka")

  ibuprofen_ingredient = Ingredient.create!(
  name: "Ibuprofen"
  )

  dextromethorphan = Ingredient.create!(
  name: "Dextromethorphan")

  loperamide = Ingredient.create!(
    name: "loperamide")

  MedicationsIngredient.create!(
    ingredient_id: dextromethorphan.id,
    medication_id: benylin.id
  )


  MedicationsIngredient.create!(
    ingredient_id: loperamide.id,
    medication_id: imodium.id
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


  Medication.reindex!


  puts "finished"

  User.destroy_all

  User.create!(
    email:"user@gmail.com",
    password:"lewagon",
    )

