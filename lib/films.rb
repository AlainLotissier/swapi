module Films
  include SWAPI
  Query = SWAPI::Client.parse <<-'GRAPHQL'
    query{
      allFilms{
        films{
          title
          releaseDate
          director
          producers
          episodeID
          id
        }
      }
    }
  GRAPHQL
end
