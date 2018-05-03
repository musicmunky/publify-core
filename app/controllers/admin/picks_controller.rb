class Admin::PicksController < Admin::BaseController
    before_action :login_required, only: [:preview, :preview_page]
    before_action :find_pick, only: [:update, :show, :destroy]
    #before_action :verify_config

    layout :get_layout

    def index
        @picks = Pick.all
    end

    def new
        @pick = Pick.new
    end

    def show
    end

    def edit
        @pick = params[:id] ? Pick.find_by(id: params[:id]) : Pick.new
    end

    def create
        @pick = Pick.new(pick_params)

        if @pick.save
            flash[:notice] = "Pick successfully created!"
        else
            flash[:error] = @pick.errors.full_messages
        end
        redirect_to admin_picks_url
    end

    def update
        if @pick.update(pick_params)
            flash[:notice] = "Pick successfully updated!"
        else
            flash[:error] = @pick.errors.full_messages
        end
        redirect_to admin_picks_url
    end

    def destroy
        if Pick.where(id: params[:id]).count > 0
            @pick.destroy
            flash[:notice] = "Pick successfully deleted!"
        end
        redirect_to admin_picks_url
    end


    def changePickActive
        nActive = params[:nActive]
        nPickId = params[:nPickId]

		response = {}
		content  = {}
		status   = ""
		message  = ""

		begin
            pid = Integer(nPickId)
            act = Integer(nActive)

			if pid < 1
                raise "Invalid pick id sent to server: #{pid}"
            end

            @oPick = Pick.find(pid)
            @oPick.update_attribute(:active, Integer(act))

			response['status']  = "success"
			response['message'] = "Updated active for pick id #{pid}"
			response['content'] = content
#            flash[:success] = "Pick successfully updated!"
        rescue => error
			response['status'] = "failure"
			response['message'] = "Error: #{error.message}"
			response['content'] = error.backtrace
#            flash[:error] = "There was an error updating this pick: #{error.message}"
        ensure
			respond_to do |format|
#                format.html { redirect_to admin_picks_url }
                format.js { render :json => response.to_json }
			end
		end
    end


    private

    def get_layout
        case action_name
        when 'new', 'edit', 'create'
            'administration'
#            'editor'
        when 'show'
            nil
        else
            'administration'
        end
    end

    def pick_params
        params.require(:pick).permit(:title, :author, :description, :picktype, :image_link, :link, :score, :pick_length, :year_published, :publisher, :isbn, :active)
    end

    def find_pick
        @pick = Pick.find(params[:id])
    end

end
