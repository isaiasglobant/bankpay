module GrapeSkeleton
    module API
      class Base < Grape::API
  
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
            { posts: Post.all }
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