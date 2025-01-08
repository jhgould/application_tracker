class ApplicationsController < ApplicationController

    def index
        @applications = current_user.applications
    end 

    def new
        @application = Application.new
    end 

    def create 
        application = Application.new(application_params)
        application.user_id = current_user.id
        if application.save 
            redirect_to dashboard_path
        else 
            flash[:error] = "You messed something up you idiot"
            redirect_to new_application_path
            
        end 
    end


    private

    def application_params
        params.require(:application).permit(
            :company_name, 
            :position_name, 
            :application_status, 
            :date_applied, 
            :interview_date, 
            :interview_time, 
            :recruiter_name, 
            :min_salary, 
            :max_salary, 
            :job_posting_link, 
            :notes, 
            :bonus, 
            :stock_options,
            :user_id
        )
    end 

end 