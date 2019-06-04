module Film
  include SWAPI
  Query = SWAPI::Client.parse <<-'GRAPHQL'
    query($id: Id){
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
          }
        }
        planetConnection{
          planets{
            name
          }
        }
        starshipConnection{
          starships{
            name
          }
        }
      }
    }
  GRAPHQL
end
