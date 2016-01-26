class ContactsController < ApplicationController
    # TODO: Password protect this
    before_action :index, :authenticate, except: [:new, :thankyou]

    def index
        @contacts = Contact.all
    end

    def show
        @contact = Contact.find(params[:id])
    end

    def new
        @contact = Contact.new
        @users = User.all
            @hash = Gmaps4rails.build_markers(@users) do |user, marker|
                marker.lat user.latitude
                marker.lng user.longitude
            end
    end

    def create
        @contact = Contact.new(contact_params)

        respond_to do |format|
            if verify_recaptcha(model: @contact) && @contact.save
                # Tell the ContactMailer to send a welcome email after save
                ContactMailer.welcome_email(@contact).deliver

                format.html { redirect_to thankyou_path }
                format.json { render json: @contact, status: :created, location: @contact }
            else
                format.html { render action: 'new' }
                format.json { render json: @contact.errors, status: :unprocessable_entity }
            end
        end
    end

    def thankyou
    end

    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy

        redirect_to contacts_path
    end

    private
        def contact_params
            params.require(:contact).permit(:name, :email, :company_name, :company_url, :message)
        end

        def authenticate
            if authenticate_with_http_basic { |u, p| u == 'admin' && p == 'ascend123' }
            else
                request_http_basic_authentication
              end
        end
end
