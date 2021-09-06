class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: SightingSerializer.to_serialized_json(sightings)
      end
    
      def show
        sighting = Sighting.find_by(id: params[:id])
        render json: SightingSerializer.to_serialized_json(sighting)
      end
end
