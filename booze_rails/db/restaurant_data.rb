def get_restaurant_data
  restaurant_data = {
    "rightproper" => {
      name: "Right Proper",
      neighborhood: "Shaw",
      beer: "House Brewed Craft Beer and Local Craft Beer"
    },
    "boundarystone" => {
      name: "Boundary Stone",
      neighborhood: "Bloomingdale",
      beer: "Local Craft Beer"
    },
    "shawstavern" => {
      name: "Shaw’s Tavern",
      neighborhood: "Shaw",
      beer: "Local Craft Beer and Macro Brews"
    },
    "scionrestaurant" => {
      name: "Scion Restaurant",
      neighborhood: "Dupont Circle",
      beer: "Local and Non-Local Craft Beer"
    },
    "meridianpint" => {
      name: "Meridian Pint",
      neighborhood: "Columbia Heights",
      beer: "Local Craft Beer"
    }
  }
  return restaurant_data
end
