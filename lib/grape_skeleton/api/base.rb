module GrapeSkeleton
  module API
    class Base < Grape::API
      require 'journeys/info_updater'
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
          rider = Rider.find(params[:rider_id])
          drivers = Driver.all
          driver = drivers[rand(0...drivers.size)]

          journey = Journey.create(rider: rider, driver: driver,
            origin: rider.origin, destination: rider.destination
          )

          {
            id: journey.id,
            driver_name: driver.name,
            origin: journey.origin,
            destination: journey.destination
          }
        end

        patch "update/:journey_id" do
          journey = Journeys::InfoUpdater.new(params[:journey_id]).execute

          {
            id: journey.id,
            cost: "$#{journey.cost} COP",
            origin: journey.origin,
            destination: journey.destination,
            status: 'finished'
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
