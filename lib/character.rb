module Character
  include SWAPI
  Query = SWAPI::Client.parse <<-'GRAPHQL'
    query($id: ID){
      person(id: $id){
        name
        birthYear
        eyeColor
        gender
        hairColor
        height
        mass
        skinColor
        homeworld{
          name
        }
        filmConnection{
          films{
            title
            id
          }
        }
        starshipConnection{
          starships{
            name
            id
          }
        }
        created
        edited
      }
    }
  GRAPHQL
end
