class DashboardsController < ApplicationController
    before_action :authenticate_user!

    def show
        @current_user = current_user
        @applications = current_user.applications
    end
end