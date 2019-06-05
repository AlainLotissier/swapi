module Film
  include SWAPI
  Query = SWAPI::Client.parse <<-'GRAPHQL'
    query($id: ID){
      film(id: $id){
        title
        episodeID
        openingCrawl
        director
        producers
        releaseDate
        characterConnection{
          characters{
            name
            id
          }
        }
        planetConnection{
          planets{
            name
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
