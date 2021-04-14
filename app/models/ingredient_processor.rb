module IngredientProcessor

    def assembled_ingredients(supply_dictionary)
        ingredients = self.ingredients.map{|ing| ing.attributes.merge!(supply_dictionary[ing.supply_id])}
    end

end