# rails g resource User name:string

# rails g resource Store user:belongs_to name:string
# rails g resource Pantry user:belongs_to 
# rails g resource GroceryList user:belongs_to
# rails g resource Recipe user:belongs_to name:string servings:integer instructions:text meal:boolean

# rails g resource Supply user:belongs_to name:string category:string sub_category:string unit:string latest_cost_per_unit:float running_quantity:float running_cost:float
# rails g resource StoreSupply store:belongs_to supply:belongs_to unit:string cost_per_unit:float
# rails g resource Ingredient supply:belongs_to pantry_id:integer recipe_id:integer grocery_list_id:integer quantity:float #=> STI

# class PantryIngredient < Ingredient => pantry:belongs_to 
# class GroceryListIngredient < Ingredient => grocery_list:belongs_to 
# class RecipeIngredient < Ingredient => recipe:belongs_to 

# rails g resource WeeklyMenu user:belongs_to 
# has_many :daily_menus || has_many :meals, through: :daily_menus
# rails g model DailyMenu weekly_menu:belongs_to date:date => instance method "day" with strftime
# has_many :meals || has_many :recipes, through: :meals
# rails g model Meal daily_menu:belongs_to recipe:belongs_to quantity:integer


PRODUCE = [
    {name: 'yellow bell pepper', category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'green bell pepper',category: "food", sub_category: "produce", unit: 'pcs', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'red bell pepper',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'jalapeno pepper',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'pobalano pepper',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'yellow onion',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'white onion',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'red onion',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'green onion',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'garlic',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'zucchini',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'yellow squash',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'mushroom',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'shredded carrot',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'baby carrots',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'bulk carrots',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'celery',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'cabbage',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'spinach',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'romaine lettuce',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'iceberg lettuce',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'kale',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'parsley',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'mint',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'rosemary',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'cilantro',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'basil',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'red potatoes',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'mini potatoes',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sweet potatoes',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'corn',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'lime',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'lemmon',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'fresh ginger',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'tube ginger',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'tube lemongrass',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'tube mixed herb',category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}
    # {name: '', category: "food", sub_category: "produce", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
]

PROTEINS = [
    {name: 'egg', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sliced turkey', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'ground turkey', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'chicken breast', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'grilled chicken', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'whole chicken', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'shrimp', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'pork loin', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'pork chops', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'salmon', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}
    # {name: '', category: "food", sub_category: "proteins", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
]

DAIRY = [
    {name: 'butter', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'feta', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sliced cheddar', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'fresh parmesan', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'can parmesan', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'shredded monterrey', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'milk', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'heavy cream', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sour cream', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0} 
    # {name: '', category: "food", sub_category: "dairy", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
]

DRIED_GOODS = [
    {name: 'canned tomato', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'canned pineapple', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'coconut milk', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'cashew', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'pasta', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'brown rice', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'jasmine rice', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'basmati rice', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'wild rice', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'quinoa', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'bread', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'corn tortilla', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'flour tortilla', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'olive oil', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'vegetable oil', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sesame oil', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'beef base', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'chicken base', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'flour', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'panko', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'seaweed', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sugar', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'brown sugar', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}
    # {name: '', category: "food", sub_category: "dried goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
]

FROZEN_GOODS = [
    {name: 'frozen corn', category: "food", sub_category: "frozen goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'frozen broccoli', category: "food", sub_category: "frozen goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'frozen veg medley', category: "food", sub_category: "frozen goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'frozen peas', category: "food", sub_category: "frozen goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'frozen pizza', category: "food", sub_category: "frozen goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'frozen samosas', category: "food", sub_category: "frozen goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}
    # {name: '', category: "food", sub_category: "frozen goods", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
]

CONDIMENTS = [
    {name: 'soy sauce', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'oyster sauce', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sambal', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'tomato sauce', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'paste', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sriracha', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'pesto', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sundried tomato paste', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'yellow mustard', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'whole grain mustard', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'brown mustard', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'tamarind paste', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'worcestershire sauce', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'ketchup', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'balsamic vinagrette', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'hummus', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}
    # {name: '', category: "food", sub_category: "condiments", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
]


SPICES = [
    {name: 'kosher salt', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'sea salt', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'ground pepper', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'cracked pepper', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'paprika', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'allspice', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'cajun seasoning', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'cayenne', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'dried oregano', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'dried basil', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'garam masala', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'red pepper flakes', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'garlic powder', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'onion powder', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'curry powder', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'chili powder', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'cumin', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
    {name: 'coriander', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}
    # {name: '', category: "food", sub_category: "spices", unit: 'oz', latest_cost_per_unit: 0.1, running_quantity: 0, running_cost: 0}, 
]

FOOD = [PRODUCE, PROTEINS, DAIRY, DRIED_GOODS, FROZEN_GOODS, CONDIMENTS, SPICES].flatten!

### BEGIN CREATING SEEDS HERE ###
mr_bonjangles = User.create(name: "Mr Bojangles")

mr_b_pantry = Pantry.create(user_id: mr_bonjangles.id)
mr_bonjangles.stores.build(name: "Walmart").save
mr_bonjangles.stores.build(name: "Costco").save
mr_bonjangles.stores.build(name: "K&S").save

FOOD.each do |item| 
    sup = mr_bonjangles.supplies.build(item)
    sup.save
    PantryIngredient.create({pantry_id: mr_b_pantry.id, supply_id: sup.id, quantity: rand(2..80)})
end

Recipe.create(user_id: mr_bonjangles.id, name: "Grilled Chicken & Veg", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Grilled Salmon & Veg", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Turkey Tacos", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Southwest Chili", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Turkey Bolognese", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Whole Roast Chicken", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Pho Ga with Cabbage Noodles", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Phad Thai wiht Cabbage Noodles", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Bibimbap", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Cashew Chicken", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Garlic Ginger Turkey", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Unstuffed Peppers", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Frozen Pizza", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Chicken Salad", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Sandwich", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Turkey & Hummus Wraps", servings: 1, instructions: "")
Recipe.create(user_id: mr_bonjangles.id, name: "Egg & Tortilla Rollups", servings: 1, instructions: "")

