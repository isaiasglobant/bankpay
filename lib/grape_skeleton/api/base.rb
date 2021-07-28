module GrapeSkeleton
    module API
      class Base < Grape::API
        require 'calculate_ride'
        ########
        # Root #
        ########
  
        desc 'Application root' do
          named 'root'
        end
  
        get do
          { app_name: GrapeSkeleton::Config.app_name }
        end

        resource 'posts' do
          get "/" do
            CalculateRide.new("11.011315, -74.829380", "11.002569, -74.809068").execute
          end
          
          # get "/:id" do 
          #   Post.find(params['id'])
          # end
          
          # post "/create" do
          #   Post.create(params['post'])
          # end
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