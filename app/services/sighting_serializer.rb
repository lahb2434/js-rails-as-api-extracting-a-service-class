class SightingSerializer

    def self.to_serialized_json(sighting)
        options = {
            include: {
              bird: {
                only: [:name, :species]
              },
              location: {
                only: [:latitude, :longitude]
              }
            },
            except: [:updated_at],
          }
          sighting.to_json(options)
      end
  
  end