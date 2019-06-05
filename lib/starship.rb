module Starship
  include SWAPI
  Query = SWAPI::Client.parse <<-'GRAPHQL'
    query($id: ID){
    	starship(id: $id){
        name
        model
        manufacturers
        costInCredits
        length
        maxAtmospheringSpeed
        crew
        passengers
        cargoCapacity
        consumables
        hyperdriveRating
        MGLT
        starshipClass
        pilotConnection{
          pilots{
            name
            id
          }
        }
        filmConnection{
          films{
            title
            id
          }
        }
        created
        edited
      }
    }
  GRAPHQL
end
