module Planet
  include SWAPI
  Query = SWAPI::Client.parse <<-'GRAPHQL'
    query($id: ID){
    	planet(id: $id){
        name
        rotationPeriod
        orbitalPeriod
        diameter
        climates
        gravity
        terrains
        surfaceWater
        population
        residentConnection{
          residents{
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
