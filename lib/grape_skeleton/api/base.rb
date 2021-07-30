module GrapeSkeleton
  module API
    class Base < Grape::API
      require 'journeys/info_updater'
      require 'journeys/creator'
      ########
      # Root #
      ########

      desc 'Application root' do
        named 'root'
      end

      get do
        { app_name: GrapeSkeleton::Config.app_name }
      end

      resource 'ride' do
        post "create/:rider_id" do
          journey = Journeys::Creator.new(params[:rider_id],
            params[:latitude], params[:longitude]
          ).execute

          {
            id: journey.id,
            origin: journey.origin,
            destination: journey.destination,
            status: journey.status
          }
        end

        patch "update/:journey_id" do
          journey = Journeys::InfoUpdater.new(params[:journey_id]).execute

          {
            id: journey.id,
            cost: "$#{journey.cost} COP",
            origin: journey.origin,
            destination: journey.destination,
            status: journey.status
          }
        end
      end

      ############
      # Settings #
      ############

      desc 'Get application settings' do
        named 'settings'
      end

      get :settings do
        GrapeSkeleton::Config.to_h
      end

    end
  end
end
